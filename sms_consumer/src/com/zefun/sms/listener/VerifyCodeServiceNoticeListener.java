package com.zefun.sms.listener;

import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.amqp.core.Message;
import org.springframework.amqp.rabbit.core.ChannelAwareMessageListener;
import org.springframework.amqp.support.converter.MessageConversionException;
import org.springframework.amqp.support.converter.MessageConverter;
import org.springframework.beans.factory.annotation.Autowired;

import com.rabbitmq.client.Channel;
import com.zefun.sms.service.SmsService;
import com.zefun.sms.utils.App;

/**
 * 会员交易通知
* @author 张进军
* @date Aug 25, 2015 3:43:59 PM
 */
public class VerifyCodeServiceNoticeListener implements ChannelAwareMessageListener {

	private static final Logger logger = Logger.getLogger(VerifyCodeServiceNoticeListener.class);

	@Autowired
    private MessageConverter msgConverter;
	
	@Autowired
	private SmsService smsService;

	@Override
	public void onMessage(Message message, Channel channel) throws Exception {
		Object obj = null;
        try {
            obj = msgConverter.fromMessage(message);
        } catch (MessageConversionException e) {
            logger.error("convert MQ message error.", e);
        } finally {
            long deliveryTag = message.getMessageProperties().getDeliveryTag();
            if (deliveryTag != App.DELIVERIED_TAG) {
                channel.basicAck(deliveryTag, false);
                message.getMessageProperties().setDeliveryTag(App.DELIVERIED_TAG);
                logger.info("revice and ack msg: " + (obj == null ? message : new String((byte[]) obj)));
            }
        }
        if (obj == null) {
            return;
        }
        logger.info("verify code consume, msg : " + obj);
        boolean flag = false;
        if (obj instanceof Map<?, ?>) {
        	Map<?, ?> cpaMsg = (Map<?, ?>) obj;
        	logger.info("cpaMsg : " + cpaMsg);
            int storeId = Integer.parseInt(cpaMsg.get("storeId").toString());
            String phone = cpaMsg.get("phone").toString();
            String code = cpaMsg.get("code").toString();
            String desc = cpaMsg.get("desc").toString();
        	//发送短信通知
            smsService.sendCodeVerifyCodeSms(storeId, code, desc, phone);
        } else {
        	logger.warn("not a map msg, ingore it.");
        }
        if (!flag) {
        	logger.error("hanler message " + obj + " failed, throw a exception, and it will be retried.");
            throw new RuntimeException("hanler message " + obj + " failed.");
		}
	}

}

package org.liufeng.course.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.liufeng.course.message.resp.Article;
import org.liufeng.course.message.resp.Music;
import org.liufeng.course.message.resp.MusicMessage;
import org.liufeng.course.message.resp.NewsMessage;
import org.liufeng.course.message.resp.TextMessage;
import org.liufeng.course.util.MessageUtil;

/**
 * ���ķ�����
 * 
 * @author liufeng
 * @date 2013-07-25
 */
public class CoreService {
	/**
	 * ����΢�ŷ���������
	 * 
	 * @param request
	 * @return
	 */
	public static String processRequest(HttpServletRequest request) {
		String respMessage = null;
		try {
			// xml�������
			Map<String, String> requestMap = MessageUtil.parseXml(request);

			// �鿴������Ϣ
			System.out.println("requestMap" + requestMap);
			// ���ͷ��ʺţ�open_id��
			String fromUserName = requestMap.get("FromUserName");
			// �����ʺ�
			String toUserName = requestMap.get("ToUserName");
			// ��Ϣ����
			String msgType = requestMap.get("MsgType");

			// Ĭ�ϻظ����ı���Ϣ
			TextMessage textMessage = new TextMessage();
			textMessage.setToUserName(fromUserName);
			textMessage.setFromUserName(toUserName);
			textMessage.setCreateTime(new Date().getTime());
			textMessage.setMsgType(MessageUtil.RESP_MESSAGE_TYPE_TEXT);
			textMessage.setFuncFlag(0);
			// ����href����ֵ������˫�������������ַ��������˫���ų�ͻ������Ҫת��
			textMessage.setContent(getMainMenu());
			// ���ı���Ϣ����ת����xml�ַ���
			respMessage = MessageUtil.textMessageToXml(textMessage);

			// ����������Ϣ
			if(msgType.equals(MessageUtil.REQ_MESSAGE_TYPE_VOICE)){
				textMessage.setContent(requestMap.toString());
				return MessageUtil.textMessageToXml(textMessage);
			}
			// �ı���Ϣ
			else if (msgType.equals(MessageUtil.REQ_MESSAGE_TYPE_TEXT)) {
				// �����û����͵��ı���Ϣ����
				String content = requestMap.get("Content");

				// ����ͼ����Ϣ
				NewsMessage newsMessage = new NewsMessage();
				newsMessage.setToUserName(fromUserName);
				newsMessage.setFromUserName(toUserName);
				newsMessage.setCreateTime(new Date().getTime());
				newsMessage.setMsgType(MessageUtil.RESP_MESSAGE_TYPE_NEWS);
				newsMessage.setFuncFlag(0);

				List<Article> articleList = new ArrayList<Article>();
				if("?".equals(content)){
					String respContent = getMainMenu();
					TextMessage textResMessage = new TextMessage();
					textResMessage.setToUserName(fromUserName);
					textResMessage.setFromUserName(toUserName);
					textResMessage.setCreateTime(new Date().getTime());
					textResMessage.setMsgType(MessageUtil.RESP_MESSAGE_TYPE_TEXT);
					textResMessage.setFuncFlag(0);
					textMessage.setContent(respContent);
					respMessage = MessageUtil.textMessageToXml(textMessage);
					return respMessage;
				}
				// ��ͼ����Ϣ
				else if ("1".equals(content)) {
					Article article = new Article();
					article.setTitle("�����̳�Java��");
					article.setDescription("����ѧϰJava������,��л����������ʦ���ҵĽ̵�,�ĵù�����,�һ�ʹ����ѧϰ,Ŭ���Ĺ�����\n\n  ͬʱ��ҲҪ��лһ����,�Ǿ����ҵ�������־��,������˵�Ĺ�����֧��,��ֻ��˵,�����Ұ���һ��һ��");
					article.setPicUrl("http://121.201.63.200/wxchar/3.jpg");
					article.setUrl("http://blog.csdn.net/u014201191/article/details/46537543");
					articleList.add(article);
					// ����ͼ����Ϣ����
					newsMessage.setArticleCount(articleList.size());
					// ����ͼ����Ϣ������ͼ�ļ���
					newsMessage.setArticles(articleList);
					// ��ͼ����Ϣ����ת����xml�ַ���
					respMessage = MessageUtil.newsMessageToXml(newsMessage);
				}
				// ��ͼ����Ϣ---����ͼƬ
				else if ("2".equals(content)) {
					Article article = new Article();
					article.setTitle("΢�Ź����ʺſ����̳�Java��");
					// ͼ����Ϣ�п���ʹ��QQ���顢���ű���
					article.setDescription("���壬80��"
							+ emoji(0x1F6B9)
							+ "��΢�Ź����ʺſ�������4���¡�Ϊ������ѧ�����ţ����Ƴ���ϵ�����ؽ̳̣�Ҳϣ����˻�����ʶ����ͬ�У�\n\nĿǰ���Ƴ��̳̹�12ƪ�������ӿ����á���Ϣ��װ����ܴ��QQ���鷢�͡����ű��鷢�͵ȡ�\n\n���ڻ��ƻ��Ƴ�һЩʵ�ù��ܵĿ������⣬���磺����Ԥ�����ܱ����������칦�ܵȡ�");
					// ��ͼƬ��Ϊ��
					article.setPicUrl("");
					article.setUrl("http://blog.csdn.net/u014201191/article/details/45275553");
					articleList.add(article);
					newsMessage.setArticleCount(articleList.size());
					newsMessage.setArticles(articleList);
					respMessage = MessageUtil.newsMessageToXml(newsMessage);
				}
				// ��ͼ����Ϣ
				else if ("3".equals(content)) {
					Article article1 = new Article();
					article1.setTitle("MyBatis������ʵ�ַ�ҳ");
					article1.setDescription("");
					article1.setPicUrl("http://121.201.63.200/wxchar/3.jpg");
					article1.setUrl("http://blog.csdn.net/u014201191/article/details/46387911");

					Article article2 = new Article();
					article2.setTitle("��2ƪ\n΢�Ź����ʺŵ�����");
					article2.setDescription("");
					article2.setPicUrl("http://121.201.63.200/wxchar/3.jpg");
					article2.setUrl("http://blog.csdn.net/lyq8479/article/details/8941577");

					Article article3 = new Article();
					article3.setTitle("��3ƪ\n����ģʽ���ü��ӿ�����");
					article3.setDescription("");
					article3.setPicUrl("http://121.201.63.200/wxchar/3.jpg");
					article3.setUrl("http://blog.csdn.net/lyq8479/article/details/8944988");

					articleList.add(article1);
					articleList.add(article2);
					articleList.add(article3);
					newsMessage.setArticleCount(articleList.size());
					newsMessage.setArticles(articleList);
					respMessage = MessageUtil.newsMessageToXml(newsMessage);
				}
				// ��ͼ����Ϣ---������Ϣ����ͼƬ
				else if ("4".equals(content)) {
					Article article1 = new Article();
					article1.setTitle("΢�Ź����ʺſ����̳�Java��");
					article1.setDescription("");
					// ��ͼƬ��Ϊ��
					article1.setPicUrl("");
					article1.setUrl("http://blog.csdn.net/lyq8479");

					Article article2 = new Article();
					article2.setTitle("��4ƪ\n��Ϣ����Ϣ�����ߵķ�װ");
					article2.setDescription("");
					article2.setPicUrl("http://avatar.csdn.net/1/4/A/1_lyq8479.jpg");
					article2.setUrl("http://blog.csdn.net/lyq8479/article/details/8949088");

					Article article3 = new Article();
					article3.setTitle("��5ƪ\n������Ϣ�Ľ�������Ӧ");
					article3.setDescription("");
					article3.setPicUrl("http://avatar.csdn.net/1/4/A/1_lyq8479.jpg");
					article3.setUrl("http://blog.csdn.net/lyq8479/article/details/8952173");

					Article article4 = new Article();
					article4.setTitle("��6ƪ\n�ı���Ϣ�����ݳ������ƽ���");
					article4.setDescription("");
					article4.setPicUrl("http://avatar.csdn.net/1/4/A/1_lyq8479.jpg");
					article4.setUrl("http://blog.csdn.net/lyq8479/article/details/8967824");

					articleList.add(article1);
					articleList.add(article2);
					articleList.add(article3);
					articleList.add(article4);
					newsMessage.setArticleCount(articleList.size());
					newsMessage.setArticles(articleList);
					respMessage = MessageUtil.newsMessageToXml(newsMessage);
				}
				// ��ͼ����Ϣ---���һ����Ϣ����ͼƬ
				else if ("5".equals(content)) {
					Article article1 = new Article();
					article1.setTitle("��7ƪ\n�ı���Ϣ�л��з���ʹ��");
					article1.setDescription("");
					article1.setPicUrl("http://0.xiaoqrobot.duapp.com/images/avatar_liufeng.jpg");
					article1.setUrl("http://blog.csdn.net/lyq8479/article/details/9141467");

					Article article2 = new Article();
					article2.setTitle("��8ƪ\n�ı���Ϣ��ʹ����ҳ������");
					article2.setDescription("");
					article2.setPicUrl("http://avatar.csdn.net/1/4/A/1_lyq8479.jpg");
					article2.setUrl("http://blog.csdn.net/lyq8479/article/details/9157455");

					Article article3 = new Article();
					article3.setTitle("����������¶���������������ͨ���������Ի��ע΢�Ź����ʺ�xiaoqrobot��֧�����壡");
					article3.setDescription("");
					// ��ͼƬ��Ϊ��
					article3.setPicUrl("");
					article3.setUrl("http://blog.csdn.net/lyq8479");

					articleList.add(article1);
					articleList.add(article2);
					articleList.add(article3);
					newsMessage.setArticleCount(articleList.size());
					newsMessage.setArticles(articleList);
					respMessage = MessageUtil.newsMessageToXml(newsMessage);
				}
			}
			// �¼�����
						else if (msgType.equals(MessageUtil.REQ_MESSAGE_TYPE_EVENT)) {
							String respContent = getMainMenu();
							// �¼�����
							String eventType = requestMap.get("Event");
							// ����
							if (eventType.equals(MessageUtil.EVENT_TYPE_SUBSCRIBE)) {
					           respContent = "лл���Ĺ�ע��/\n"+getMainMenu();
							}
							// ȡ������
							else if (eventType.equals(MessageUtil.EVENT_TYPE_UNSUBSCRIBE)) {
								// TODO ȡ�����ĺ��û����ղ������ںŷ��͵���Ϣ����˲���Ҫ�ظ���Ϣ
							}
							// �Զ���˵�����¼�
							else if (eventType.equals(MessageUtil.EVENT_TYPE_CLICK)) {
								// �¼�KEYֵ���봴���Զ���˵�ʱָ����KEYֵ��Ӧ
								String eventKey = requestMap.get("EventKey");

								if (eventKey.equals("11")) {
									respContent = "����Ԥ���˵�������";
								} else if (eventKey.equals("12")) {
									respContent = "������ѯ�˵�������";
								} else if (eventKey.equals("13")) {
									respContent = "�ܱ������˵�������";
								} else if (eventKey.equals("14")) {
									respContent = "��ʷ�ϵĽ���˵�������";
								} else if (eventKey.equals("21")) {
									respContent = "�����㲥�˵�������";
								} else if (eventKey.equals("22")) {
									respContent = "������Ϸ�˵�������";
								} else if (eventKey.equals("23")) {
									respContent = "��Ů��̨�˵�������";
								} else if (eventKey.equals("24")) {
									respContent = "����ʶ��˵�������";
								} else if (eventKey.equals("25")) {
									respContent = "������ྲ˵�������";
								} else if (eventKey.equals("31")) {
									respContent = "Q��Ȧ�˵�������";
								} else if (eventKey.equals("32")) {
									respContent = "��Ӱ���а�˵�������";
								} else if (eventKey.equals("33")) {
									respContent = "��ĬЦ���˵�������";
								}
							}
							TextMessage textResMessage = new TextMessage();
							textResMessage.setToUserName(fromUserName);
							textResMessage.setFromUserName(toUserName);
							textResMessage.setCreateTime(new Date().getTime());
							textResMessage.setMsgType(MessageUtil.RESP_MESSAGE_TYPE_TEXT);
							textResMessage.setFuncFlag(0);
							textMessage.setContent(respContent);
							respMessage = MessageUtil.textMessageToXml(textMessage);
							return respMessage;
						}
			// �鿴��Ӧ��Ϣ
			System.out.println("respMessage" + respMessage);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return respMessage;
	}

	/**
	 * emoji����ת��(hex -> utf-16)
	 * 
	 * @param hexEmoji
	 * @return
	 */
	public static String emoji(int hexEmoji) {
		return String.valueOf(Character.toChars(hexEmoji));
	}
	/**
	 * xiaoqrobot�����˵�
	 * 
	 * @return
	 */
	public static String getMainMenu() {
		StringBuffer buffer = new StringBuffer();
		buffer.append("��ӭ����<a href=\"http://blog.csdn.net/u014201191\">��sir�Ĳ���</a>!").append("\n\n");
		buffer.append("1  EKL��־ϵͳ�").append("\n");
		buffer.append("2  springMvc����").append("\n");
		buffer.append("3  MyBatis��ҳ������").append("\n");
		buffer.append("4  hibernate���潲��").append("\n");
		buffer.append("5  JMS�м����Ӧ��").append("\n");
		buffer.append("8  �������").append("\n\n");
		buffer.append("�ظ���?����ʾ�˰����˵�");
		return buffer.toString();
	}
}
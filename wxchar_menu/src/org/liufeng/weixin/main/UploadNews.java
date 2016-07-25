package org.liufeng.weixin.main;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONObject;

import org.junit.Test;
import org.liufeng.weixin.pojo.AccessToken;
import org.liufeng.weixin.pojo.Article;
import org.liufeng.weixin.pojo.SendMessages;
import org.liufeng.weixin.pojo.Thumb;
import org.liufeng.weixin.util.WeixinUtil;
import org.lives.platform.upload.utils.HttpsPostUploadUtil;

/**
 * �ϴ�ͼ����Ϣ�ز�
 * 
 * @author Lzh
 *
 */
public class UploadNews {
	private static String uploadUrl = "https://api.weixin.qq.com/cgi-bin/media/uploadnews?access_token=ACCESS_TOKEN";
	// �������û�Ψһƾ֤
	private static String appId = "wx57423593c068308c";
	// �������û�Ψһƾ֤��Կ
	private static String appSecret = "e18bd8ce8c3996374e697d3771c51493";
	/**
	 * ����֧��-�ϴ���ý��
	 * @return
	 */
	public static void main(String[] args) {
		UploadNews c = new UploadNews();
		c.firstUploadNews();
	}
	@Test
	public  static String firstUploadNews(){
		String url = "http://file.api.weixin.qq.com/cgi-bin/media/upload?access_token=ACCESS_TOKEN&type=thumb";
		AccessToken at = WeixinUtil.getAccessToken(appId, appSecret);
		url = url.replace("ACCESS_TOKEN", at.getToken());
		
		String filepath = "C:\\Users\\Lzh\\Desktop\\1.jpg";

		String urlStr = "http://file.api.weixin.qq.com/cgi-bin/media/upload?access_token=ACCESS_TOKEN&type=thumb";

		urlStr = urlStr.replace("ACCESS_TOKEN", at.getToken());

		Map<String, String> textMap = new HashMap<String, String>();

		textMap.put("type", "thumb");

		Map<String, String> fileMap = new HashMap<String, String>();

		fileMap.put("userfile", filepath);

		String ret = HttpsPostUploadUtil.formUpload(urlStr, textMap, fileMap);
		
        System.out.println(ret);

		return JSONObject.fromObject(ret).getString("thumb_media_id").toString();
		
	}
	@Test
	public static String UploadNews(){
		// ���ýӿڻ�ȡaccess_token
		AccessToken at = WeixinUtil.getAccessToken(appId, appSecret);
		uploadUrl = uploadUrl.replace("ACCESS_TOKEN", at.getToken());
		//����ȡ����thumb_media_id����
		Thumb t1 = new Thumb(firstUploadNews(), "�߹���", "����չ��", "http://blog.csdn.net/u014201191/article/details/46578121", "��ӭ�ۿ�,ллƽ��", "�����Լ������Ŭ��,���������˽���ʮ����,�������Ҫ��,18����������", "1");
		Article article = new Article();
		List<Thumb> thumb = new ArrayList<Thumb>();
		thumb.add(t1);
		article.setArticles(thumb);
		System.out.println(JSONObject.fromObject(article).toString());
		JSONObject jsonObject = WeixinUtil.httpRequest(uploadUrl, "POST",
				JSONObject.fromObject(article).toString());
		System.out.println(jsonObject.get("type")+"  "+jsonObject.get("media_id"));
		return jsonObject.get("media_id").toString();
	}
}

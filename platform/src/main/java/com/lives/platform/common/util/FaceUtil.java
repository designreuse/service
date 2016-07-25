package com.lives.platform.common.util;

import java.util.HashMap;
import java.util.Map;

import net.sf.json.JSONObject;

import org.apache.commons.lang.StringUtils;

import com.lives.platform.common.exception.ServiceException;

/**
 * @author 张进军
 * @date Jun 30, 2015 6:15:43 PM 
 */
public class FaceUtil {
	private static final String APP_KEY = "2bc8f009c414c660aaf3867c9280ab5f";
	private static final String APP_SECRET = "WwOmCASLk3s6ktFtDewS17Lr1fjUe1Ts";
	private static final String FACE_URL = "https://apicn.faceplusplus.com/v2";
	private static final String FACESET_TAG = "lives_platform_faceset";
	
	
	/**
	 * 检测给定图片url中的最大一张人脸(Face)的位置和相应的面部属性
	* @author 张进军
	* @date Jun 30, 2015 7:22:41 PM
	* @param url		待检测图片的URL
	* @param attribute	可以是none或者由逗号分割的属性列表。默认为gender, age, race, smiling。
	* 					目前支持的属性包括：gender, age, race, smiling, glass, pose
	* @param async		如果置为true，该API将会以异步方式被调用；也就是立即返回一个session id，稍后可通过/info/get_session查询结果。默认值为false
	* @return				
	* 					<p>session_id	string	相应请求的session标识符，可用于结果查询</p>
						<p>url	string	请求中图片的url</p>
						<p>img_id	string	Face++系统中的图片标识符，用于标识用户请求中的图片</p>
						<p>face_id	string	被检测出的每一张人脸都在Face++系统中的标识符</p>
						<p>img_width	integer	请求图片的宽度</p>
						<p>img_height	integer	请求图片的高度</p>
						<p>face	array	被检测出的人脸的列表</p>
						<p>width	float	0~100之间的实数，表示检出的脸的宽度在图片中百分比</p>
						<p>height	float	0~100之间的实数，表示检出的脸的高度在图片中百分比</p>
						<p>center	object	检出的人脸框的中心点坐标, x & y 坐标分别表示在图片中的宽度和高度的百分比 (0~100之间的实数)</p>
						<p>eye_left	object	相应人脸的左眼坐标，x & y 坐标分别表示在图片中的宽度和高度的百分比 (0~100之间的实数)</p>
						<p>eye_right	object	相应人脸的右眼坐标，x & y 坐标分别表示在图片中的宽度和高度的百分比 (0~100之间的实数)</p>
						<p>mouth_left	object	相应人脸的左侧嘴角坐标，x & y 坐标分别表示在图片中的宽度和高度的百分比 (0~100之间的实数)</p>
						<p>mouth_right	object	相应人脸的右侧嘴角坐标，x & y 坐标分别表示在图片中的宽度和高度的百分比 (0~100之间的实数)</p>
						<p>nose	object	相应人脸的鼻尖坐标，x & y 坐标分别表示在图片中的宽度和高度的百分比 (0~100之间的实数)</p>
						<p>attribute	object	包含一系列人脸的属性分析结果</p>
						<p>gender	object	包含性别分析结果，value的值为Male/Female, confidence表示置信度</p>
						<p>age	object	包含年龄分析结果，value的值为一个非负整数表示估计的年龄, range表示估计年龄的正负区间</p>
						<p>race	object	包含人种分析结果，value的值为Asian/White/Black, confidence表示置信度</p>
						<p>smiling	object	包含微笑程度分析结果，value的值为0－100的实数，越大表示微笑程度越高</p>
						<p>glass	object	包含眼镜佩戴分析结果，value的值为None/Dark/Normal, confidence表示置信度</p>
						<p>pose	object	包含脸部姿势分析结果，包括pitch_angle, roll_angle, yaw_angle，分别对应抬头，旋转（平面旋转），摇头。单位为角度。</p>
	 * @throws ServiceException 
	 */
	public static final JSONObject detectByUrl(String url, String attribute, boolean async) throws ServiceException{
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("url", url.trim());
		if(StringUtils.isNotBlank(attribute)){
			param.put("attribute", attribute.trim());
		}
		param.put("async", async);
		return requestApi("/detection/detect", param);
	}
	
	
	/**
	 * 未通过测试
	 * 检测给定base64位的图片字符串中的最大一张人脸(Face)的位置和相应的面部属性
	* @author 张进军
	* @date Jun 30, 2015 7:22:41 PM
	* @param baseStr	待检测图片的URL
	* @param attribute	可以是none或者由逗号分割的属性列表。默认为gender, age, race, smiling。
	* 					目前支持的属性包括：gender, age, race, smiling, glass, pose
	* @param async		如果置为true，该API将会以异步方式被调用；也就是立即返回一个session id，稍后可通过/info/get_session查询结果。默认值为false
	* @return				
	* 					<p>session_id	string	相应请求的session标识符，可用于结果查询</p>
						<p>url	string	请求中图片的url</p>
						<p>img_id	string	Face++系统中的图片标识符，用于标识用户请求中的图片</p>
						<p>face_id	string	被检测出的每一张人脸都在Face++系统中的标识符</p>
						<p>img_width	integer	请求图片的宽度</p>
						<p>img_height	integer	请求图片的高度</p>
						<p>face	array	被检测出的人脸的列表</p>
						<p>width	float	0~100之间的实数，表示检出的脸的宽度在图片中百分比</p>
						<p>height	float	0~100之间的实数，表示检出的脸的高度在图片中百分比</p>
						<p>center	object	检出的人脸框的中心点坐标, x & y 坐标分别表示在图片中的宽度和高度的百分比 (0~100之间的实数)</p>
						<p>eye_left	object	相应人脸的左眼坐标，x & y 坐标分别表示在图片中的宽度和高度的百分比 (0~100之间的实数)</p>
						<p>eye_right	object	相应人脸的右眼坐标，x & y 坐标分别表示在图片中的宽度和高度的百分比 (0~100之间的实数)</p>
						<p>mouth_left	object	相应人脸的左侧嘴角坐标，x & y 坐标分别表示在图片中的宽度和高度的百分比 (0~100之间的实数)</p>
						<p>mouth_right	object	相应人脸的右侧嘴角坐标，x & y 坐标分别表示在图片中的宽度和高度的百分比 (0~100之间的实数)</p>
						<p>nose	object	相应人脸的鼻尖坐标，x & y 坐标分别表示在图片中的宽度和高度的百分比 (0~100之间的实数)</p>
						<p>attribute	object	包含一系列人脸的属性分析结果</p>
						<p>gender	object	包含性别分析结果，value的值为Male/Female, confidence表示置信度</p>
						<p>age	object	包含年龄分析结果，value的值为一个非负整数表示估计的年龄, range表示估计年龄的正负区间</p>
						<p>race	object	包含人种分析结果，value的值为Asian/White/Black, confidence表示置信度</p>
						<p>smiling	object	包含微笑程度分析结果，value的值为0－100的实数，越大表示微笑程度越高</p>
						<p>glass	object	包含眼镜佩戴分析结果，value的值为None/Dark/Normal, confidence表示置信度</p>
						<p>pose	object	包含脸部姿势分析结果，包括pitch_angle, roll_angle, yaw_angle，分别对应抬头，旋转（平面旋转），摇头。单位为角度。</p>
	 * @throws ServiceException 
	 */
	@Deprecated
	public static final JSONObject detectByBaseStr(String baseStr, String attribute, boolean async) throws ServiceException{
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("img", baseStr);
		if(StringUtils.isNotBlank(attribute)){
			param.put("attribute", attribute.trim());
		}
		param.put("async", async);
		return requestApi("/detection/detect", param);
	}
	
	
	/**
	 * 根据faceset id搜索匹配的face
	* @author 张进军
	* @date Jun 30, 2015 7:22:41 PM
	* @param faceId			待搜索的Face的face_id
	* @param facesetId		指定搜索范围为此Faceset
	* @param async			如果置为true，该API将会以异步方式被调用；也就是立即返回一个session id，稍后可通过/info/get_session查询结果。默认值为false
	* @return				
	* 						<p>candidates	array	搜索结果，包含相应face信息与相应的置信度</p>
							<p>session_id	string	相应请求的session标识符，可用于结果查询</p>
	 * @throws ServiceException 
	 */
	public static final JSONObject searchByFacesetId(String faceId, String facesetId, boolean async) throws ServiceException{
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("key_face_id", faceId);
		param.put("faceset_id", facesetId);
		param.put("count", 1);
		param.put("async", async);
		return requestApi("/recognition/search", param);
	}
	
	
	/**
	 * 根据faceset name搜索匹配的face
	* @author 张进军
	* @date Jun 30, 2015 7:22:41 PM
	* @param faceId			待搜索的Face的face_id
	* @param facesetName	指定搜索范围为此Faceset
	* @param async			如果置为true，该API将会以异步方式被调用；也就是立即返回一个session id，稍后可通过/info/get_session查询结果。默认值为false
	* @return				
	* 						<p>candidates	array	搜索结果，包含相应face信息与相应的置信度</p>
							<p>session_id	string	相应请求的session标识符，可用于结果查询</p>
	 * @throws ServiceException 
	 */
	public static final JSONObject searchByFacesetName(String faceId, String facesetName, boolean async) throws ServiceException{
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("key_face_id", faceId);
		param.put("faceset_name", facesetName);
		param.put("count", 1);
		param.put("async", false);
		return requestApi("/recognition/search", param);
	}
	
	
	/**
	 * 创建faceset
	* @author 张进军
	* @date Jun 30, 2015 7:22:41 PM
	* @param facesetName	可选,Faceset的Name信息，必须在App中全局唯一。Name不能包含^@,&=*'"等非法字符，且长度不得超过255。
	* 						Name也可以不指定，此时系统将产生一个随机的name。
	* @param faceId			可选,一组用逗号分隔的face_id, 表示将这些Face加入到该Faceset中
	* @param tag			可选,Faceset相关的tag，不需要全局唯一，不能包含^@,&=*'"等非法字符，长度不能超过255。
	* @return				
	* 						<p>added_face	int	成功加入的face数量</p>
							<p>tag	string	Faceset相关的tag</p>
							<p>faceset_name	string	相应Faceset的name</p>
							<p>faceset_id	string	相应Faceset的id</p>
	 * @throws ServiceException 
	 */
	public static final JSONObject createFaceset(String facesetName, String faceId, String tag) throws ServiceException{
		Map<String, Object> param = new HashMap<String, Object>();
		if(StringUtils.isNotBlank(facesetName)){
			param.put("faceset_name", facesetName.trim());
		}
		if(StringUtils.isNotBlank(faceId)){
			param.put("face_id", faceId.trim());
		}
		if(StringUtils.isNotBlank(tag)){
			param.put("tag", tag.trim());
		}
		return requestApi("/faceset/create", param);
	}
	
	
	/**
	 * 创建faceset
	* @author 张进军
	* @date Jun 30, 2015 7:22:41 PM
	* @param faceId			可选,一组用逗号分隔的face_id, 表示将这些Face加入到该Faceset中
	* @return				
	* 						<p>added_face	int	成功加入的face数量</p>
							<p>tag	string	Faceset相关的tag</p>
							<p>faceset_name	string	相应Faceset的name</p>
							<p>faceset_id	string	相应Faceset的id</p>
	 * @throws ServiceException 
	 */
	public static final JSONObject createFaceset(String faceId) throws ServiceException{
		Map<String, Object> param = new HashMap<String, Object>();
		if(StringUtils.isNotBlank(faceId)){
			param.put("face_id", faceId.trim());
		}
		param.put("tag", FACESET_TAG);
		return requestApi("/faceset/create", param);
	}
	
	
	/**
	 * 根据faceset name添加一个或多个face
	* @author 张进军
	* @date Jun 30, 2015 7:55:23 PM
	* @param facesetName	相应Faceset的name
	* @param face_id		一组用逗号分隔的face_id,表示将这些Face加入到相应Faceset中
	* @return
	* 			<p>added	int	成功加入的face数量</p>
				<p>success	boolean	表示操作是否成功</p>
	 * @throws ServiceException 
	 */
	public static final JSONObject addFaceByFacesetName(String facesetName, String faceId) throws ServiceException{
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("faceset_name", facesetName.trim());
		param.put("face_id", faceId.trim());
		return requestApi("/faceset/add_face", param);
	}
	
	
	/**
	 * 根据faceset id添加一个或多个face
	* @author 张进军
	* @date Jun 30, 2015 7:55:23 PM
	* @param facesetId		相应Faceset的id
	* @param face_id		一组用逗号分隔的face_id,表示将这些Face加入到相应Faceset中
	* @return
	* 			<p>added	int	成功加入的face数量</p>
				<p>success	boolean	表示操作是否成功</p>
	 * @throws ServiceException 
	 */
	public static final JSONObject addFaceByFacesetId(String facesetId, String faceId) throws ServiceException{
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("faceset_id", facesetId.trim());
		param.put("face_id", faceId.trim());
		return requestApi("/faceset/add_face", param);
	}
	
	
	/**
	 * 根据faceset name删除一个或多个face
	* @author 张进军
	* @date Jun 30, 2015 7:55:23 PM
	* @param facesetName	相应Faceset的name
	* @param face_id		一组用逗号分隔的face_id列表，表示将这些face从该faceset中删除。也可以指定face_id=all, 表示删除该faceset所有相关Face。
	* @return
	* 			<p>added	int	成功删除的face数量</p>
				<p>success	boolean	表示操作是否成功</p>
	 * @throws ServiceException 
	 */
	public static final JSONObject removeFaceByFacesetName(String facesetName, String faceId) throws ServiceException{
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("faceset_name", facesetName.trim());
		param.put("face_id", faceId.trim());
		return requestApi("/faceset/remove_face", param);
	}
	
	
	/**
	 * 根据faceset id删除一个或多个face
	* @author 张进军
	* @date Jun 30, 2015 7:55:23 PM
	* @param facesetId		相应Faceset的id
	* @param face_id		一组用逗号分隔的face_id列表，表示将这些face从该faceset中删除。也可以指定face_id=all, 表示删除该faceset所有相关Face。
	* @return
	* 			<p>added	int	成功删除的face数量</p>
				<p>success	boolean	表示操作是否成功</p>
	 * @throws ServiceException 
	 */
	public static final JSONObject removeFaceByFacesetId(String facesetId, String faceId) throws ServiceException{
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("faceset_id", facesetId.trim());
		param.put("face_id", faceId.trim());
		return requestApi("/faceset/remove_face", param);
	}
	
	
	/**
	 * 根据name删除一个或多个faceset
	* @author 张进军
	* @date Jun 30, 2015 7:55:23 PM
	* @param facesetName	用逗号隔开的待删除的faceset name列表
	* @return
	* 			<p>deleted	int	成功删除的faceset数量</p>
				<p>success	boolean	表示操作是否成功</p>
	 * @throws ServiceException 
	 */
	public static final JSONObject deleteFacesetByName(String facesetName) throws ServiceException{
		Map<String, Object> param = new HashMap<String, Object>();
		if(StringUtils.isNotBlank(facesetName)){
			param.put("faceset_name", facesetName.trim());
		}
		return requestApi("/faceset/delete", param);
	}
	
	/**
	 * 根据id删除一个或多个faceset
	* @author 张进军
	* @date Jun 30, 2015 7:55:23 PM
	* @param facesetName	用逗号隔开的待删除的faceset id列表
	* @return
	* 			<p>deleted	int	成功删除的faceset数量</p>
				<p>success	boolean	表示操作是否成功</p>
	 * @throws ServiceException 
	 */
	public static final JSONObject deleteFacesetById(String facesetId) throws ServiceException{
		Map<String, Object> param = new HashMap<String, Object>();
		if(StringUtils.isNotBlank(facesetId)){
			param.put("faceset_id", facesetId.trim());
		}
		return requestApi("/faceset/delete", param);
	}
	
	/**
	 * 根据name 针对search功能对一个faceset进行训练。
	 * <p>请注意:</p>
	 * <p>在一个faceset内进行search之前，必须先对该faceset进行Train</p>
	 * <p>当一个faceset内的数据被修改后(例如增删Face等)，为使这些修改生效，faceset应当被重新Train</p>
	 * <p>Train所花费的时间较长, 因此该调用是异步的，仅返回session_id。</p>
	 * <p>训练的结果可以通过/info/get_session查询。当训练完成时，返回值中将包含{"success": true}</p>
	* @author 张进军
	* @date Jun 30, 2015 7:55:23 PM
	* @param facesetName	用逗号隔开的待删除的faceset name列表
	* @return
	* 			<p>session_id	string	相应请求的session标识符，可用于结果查询</p>
	 * @throws ServiceException 
	 */
	public static final JSONObject trainFacesetByName(String facesetName) throws ServiceException{
		Map<String, Object> param = new HashMap<String, Object>();
		if(StringUtils.isNotBlank(facesetName)){
			param.put("faceset_name", facesetName.trim());
		}
		return requestApi("/train/search", param);
	}
	
	/**
	 * 根据id 针对search功能对一个faceset进行训练。
	 * <p>请注意:</p>
	 * <p>在一个faceset内进行search之前，必须先对该faceset进行Train</p>
	 * <p>当一个faceset内的数据被修改后(例如增删Face等)，为使这些修改生效，faceset应当被重新Train</p>
	 * <p>Train所花费的时间较长, 因此该调用是异步的，仅返回session_id。</p>
	 * <p>训练的结果可以通过调用getSession方法查询。当训练完成时，返回值中将包含{"success": true}</p>
	* @author 张进军
	* @date Jun 30, 2015 7:55:23 PM
	* @param facesetName	用逗号隔开的待删除的faceset name列表
	* @return
	* 			<p>session_id	string	相应请求的session标识符，可用于结果查询</p>
	 * @throws ServiceException 
	 */
	public static final JSONObject trainFacesetById(String facesetId) throws ServiceException{
		Map<String, Object> param = new HashMap<String, Object>();
		if(StringUtils.isNotBlank(facesetId)){
			param.put("faceset_id", facesetId.trim());
		}
		return requestApi("/train/search", param);
	}
	
	/**
	 * 获取session相关状态和结果
	   <p>可能的status：INQUEUE(队列中), SUCC(成功) 和FAILED(失败)</p>
	   <p>当status是SUCC时，返回结果中还包含session对应的结果</p>
	* @author 张进军
	* @date Jun 30, 2015 7:55:23 PM
	* @param sessionId		由/detection或/recognition中的API调用产生的session_id
	* @return
				<p>session_id	string	相应请求的session标识符，可用于结果查询</p>
				<p>create_time	int	任务开始时间，单位：秒</p>
				<p>finish_time	int	任务结束时间，单位：秒</p>
				<p>result	object	返回session_id对应的结果内容</p>
				<p>status	string	可能取值有：INQUEUE(队列中), SUCC(成功) 和FAILED(失败)</p>
	 * @throws ServiceException 
	 */
	public static final JSONObject getSession(String sessionId) throws ServiceException{
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("session_id", sessionId);
		return requestApi("/info/get_session", param);
	}
	
	
	/**
	 * 获取所有Faceset
	* @author 张进军
	* @date Jun 30, 2015 7:55:23 PM
	* @return
	* 			<p>tag	string	faceset相关的tag</p>
				<p>faceset_name	string	faceset的名字</p>
				<p>faceset_id	string	faceset的id</p>
	 * @throws ServiceException 
	 */
	public static final JSONObject getFacesetList() throws ServiceException{
		Map<String, Object> param = new HashMap<String, Object>();
		return requestApi("/info/get_faceset_list", param);
	}
	
	/**
	 * 调用face++ api
	* @author 张进军
	* @date Jun 30, 2015 8:00:36 PM
	* @param api		api地址
	* @param param		参数
	* @return			face++返回的json结果
	 * @throws ServiceException 
	 */
	private static final JSONObject requestApi(String api, Map<String, Object> param) throws ServiceException{
		param.put("api_key", APP_KEY);
		param.put("api_secret", APP_SECRET);
		String res = HttpClientUtils.sendPostReq(FACE_URL + api, param, "UTF-8");
		JSONObject json = JSONObject.fromObject(res);
		if(json.containsKey("error") && json.containsKey("error_code")){
			throw new ServiceException(json.getInt("error_code"), json.getString("error"));
		}
		return json;
	}
	
	/**
	 * 16b36a06a9974001ca2717b11cc9980c
	 * @throws ServiceException 
	 */
	public static void main(String[] args) throws ServiceException {
//		trainFacesetById("91595ed3c37941732d2bf59a5a8c119a");
//		System.out.println(detectByUrl("http://7ktrs9.com2.z0.glb.qiniucdn.com/1.jpg", "", false));
		System.out.println(searchByFacesetId("b4368e4385bad47a522495d9c68398aa", "91595ed3c37941732d2bf59a5a8c119a", false));
	}
}

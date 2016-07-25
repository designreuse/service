<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>项目门店</title>
<%@include file="/css.jsp" %>
<body>
	<%@include file="/head.jsp" %>
	<div class="container">
        <%@include file="/sidebar.jsp" %>
        <div id="content" class="fl">
        	<!--二级菜单-->
		    <div class="content-submenu">
		        <ul class="submunu clearfix">
		            <li>
		                <a href="">
		                    <span>散客收银</span>
		                </a>
		            </li>
		            <li>
		                <a href="">
		                    <span>会员消费</span>
		                </a>
		            </li>
		            <li>
		                <a href="">
		                    <span>新增会员</span>
		                </a>
		            </li>
		            <li>
		                <a href="">
		                    <span>自助账单</span>
		                </a>
		            </li>
		            <li>
		                <a href="">
		                    <span>账单查询</span>
		                </a>
		            </li>
		            <li>
		                <a href="">
		                    <span>顾客预约</span>
		                </a>
		            </li>
		            <li>
		                <a href="">
		                    <span>动态轮牌</span>
		                </a>
		            </li>
		            <li>
		                <a href="">
		                    <span>收支记账</span>
		                </a>
		
		            </li>
		            <li class="active">
		                <a href="project_setting.html">
		                    <span>项目设置</span>
		                </a>
		            </li>
		        </ul>
		    </div>
        	
        	<!--指定员工---有增加分类的点击修改跳出-->
	        <div class="assign-staff">
	            <div class="content-center staff-member-setting" id="divid">
	                <table class=" table">
	                    <caption>
	                        <ol class="breadcrumb fl">
	                            <li><a href="#">洗吹类</a></li>
	                            <li><a href="#">健康洗发</a></li>
	                            <li class="active">指定员工</li>
	                        </ol>
	                        <button class="fr add" type="button" onclick="addSetClass(this);">新增设置</button>
	                        <button class="fr return" type="button" onclick="returnProject();">返回</button>
	                    </caption>
	                </table>
	                <input type="hidden" id="storeProjectId"/>
	                <c:choose>
						<c:when test="${not empty projectRelationList }">
							<input type="hidden" id="isValue" value="1"/>
							<c:forEach var="projectRelation" items="${projectRelationList }" varStatus="status">
								<form method="post" name="projectForm">
									<input type="hidden" name="projectIdSet" value="${projectRelation.projectIdSet }"/>
					           		<input type="hidden" name="stroesIdSet" value="${projectRelation.stroesIdSet }"/>
					           		<table class=" table" id="storeTable">
					           			<tbody class="js-table-header">
						                    <tr>
						                        <td  class="lebel"><div class="letter"><input type="hidden" value="${projectRelation.categoryName }" name="categoryName"/>${projectRelation.categoryName }</div></td>
						                        <td class="name">选定门店</td>
						                        <td class="dropdown item-input">
						                        	<c:choose>
						                        		<c:when test="${not empty storesList }">
						                        			<a  href="javascript:void(0);" class="dropdown-toggle target-input" >
																<input type="text" name="selectStoresId" onload="loadTagInput('${projectRelation.stroesIdSet }')" />
								                            </a>
								                            <ul class="dropdown-menu select-tag" width="100%;">
								                                <li class="title-li">
								                                    <input type="checkbox" class="check-all"/>
								                                    <span></span>
								                                    <span class="company-name">全部店铺</span>
								                                </li>
								                            </ul>
						                        		</c:when>
						                        		<c:otherwise>
						                        			<input type="hidden" name="selectStoresId" value="${stores.storesId }" />
						                        			<span>${stores.storesName }</span>
						                        		</c:otherwise>
						                        	</c:choose>
						                        </td>
						                        <td class="down-operation"><img class="down-img" src="<%=cssBasePath %>app/img/dropdown.png" alt=""/></td>
						                    </tr>
					                    </tbody>
					                    <tbody class="detail">
						                    <tr class="hint setting-hint">
						                        <td scope="row" colspan="4">
						                            <div class="diamonds"></div>
						                            <span class="word">当前，门店价格 为所选门店的价格设置</span>
						                        </td>
						                    </tr>
						                   <!-- 项目列表 start -->
						                   <c:if test="${not empty projectInfoList }">
							                    <c:forEach var="projectInfoCheck" items="${projectInfoList }" varStatus="status">
 							                    	<%-- <c:if test="${status.index % 2 == 0  }"></c:if> --%>
							                    	<tr>
								                        <td scope="row"></td>
								                        <c:choose>
								                        	<c:when test="${status.index == 0 }"><td class="name">门店价格</td></c:when>
								                        	<c:otherwise><td class="name"></td></c:otherwise>
								                        </c:choose>
								                        <td class="item-content">
								                            <input class="type" type="text" name="projectName" value="${projectInfoCheck.projectName }" readonly="readonly"/>
	                                    					<input class="money" type="text" placeholder="金额" name="projectPrice" value="${projectInfoCheck.projectPrice }" disabled="disabled"/><!-- 项目价格-->
	                                    					
															<input type="hidden" name="classesId" value="${projectInfoCheck.classesId }"/>
															<input type="hidden" name="projectInfoIdCheck" value="${projectInfoCheck.projectInfoId }"/>
											           		<input type="hidden" name="projectNo" value="${projectInfoCheck.projectNo }"/>
								                        </td>
								                        <td class="operation"></td>
							                    	</tr>
							                    </c:forEach>
						                    </c:if>
						                    <!-- 项目列表 end -->
						                    <!-- 职位名称 start -->
						                    <tr class="hint setting-hint">
						                        <td scope="row" colspan="4">
						                            <div class="diamonds"></div>
						                            <span class="word">当前，职位名称 为所选门店的职位提成标准</span>
						                        </td>
						                    </tr>
						                    <c:forEach var="positionDto" items="${projectRelation.positionDtos }">
						                    	<tr>
							                        <td scope="row"></td>
							                        <td class="name">职位名称</td>
							                        <td class="item-content">
							                        	<select class="positionId" name="positionId" onchange="positionChange(this)"  onload="loadPositionSelect(this)" disabled="disabled">
						                                </select>
							                            <span>指定</span>
							                            <input class="discount assign" type="text" placeholder="提成" name="discountAssign" value="${positionDto.discountAssign }" disabled="disabled"/><!-- 折扣 -->
							                            <input class="money assign" type="text" placeholder="金额" name="amountAssign" value="${positionDto.amountAssign }" disabled="disabled"/><!-- 金额 -->
							                            <span>非指定</span>
							                            <input class="discount assign" type="text" placeholder="提成" name="discount" value="${positionDto.discount }" disabled="disabled"/><!-- 折扣 -->
							                            <input class="money assign" type="text" placeholder="金额" name="amount" value="${positionDto.amount }" disabled="disabled"/><!-- 金额 -->
							                            <div class="plus">
					                                        <img src="<%=cssBasePath %>app/img/head/plus.png" alt="" /><!-- onclick="addPosition(this);" -->
					                                    </div>
							                        </td>
							                        <td class="delete-operation">
							                            <img src="<%=cssBasePath %>app/img/delete.png" alt="删除" /><!-- onclick="deletePosition(this);" -->
							                        </td>
							                    </tr>
						                    </c:forEach>
						                    <!-- 职位名称 end -->
						                    <tr>
						                        <td colspan="4" class="button-group">
						                            <button class="cancel btn" type="button" onclick="deleteClass(this);">删除</button>
				                                	<button class="affirm btn" type="button" onclick="updateClasses(this);" >修改</button>
						                        </td>
						                    </tr>
					                    </tbody>
					           		</table>
					           	</form>
								
							</c:forEach>
						</c:when>
						<c:otherwise>
							<input type="hidden" id="isValue" value="2"/>
							<form method="post" name="projectForm">
								<input type="hidden" name="projectIdSet" value="${projectRelation.projectIdSet }"/>
				           		
				           		<table class=" table" id="storeTable">
				           			<tbody class="js-table-header">
					                    <tr>
					                        <td  class="lebel"><div class="letter"><input type="hidden" value="A" name="categoryName"/>A</div></td>
					                        <td class="name">选定门店</td>
					                        <td class="dropdown item-input">
					                            <c:choose>
					                        		<c:when test="${not empty storesList }">
					                        			<a  href="javascript:void(0);" class="dropdown-toggle target-input" >
															<input type="text" name="selectStoresId" onload="loadTagInput()" />
							                            </a>
							                            <ul class="dropdown-menu select-tag" width="100%;">
							                                <li class="title-li">
							                                    <input type="checkbox" class="check-all"/>
							                                    <span></span>
							                                    <span class="company-name">全部店铺</span>
							                                </li>
							                            </ul>
					                        		</c:when>
					                        		<c:otherwise>
					                        			<input type="hidden" name="selectStoresId" value="${stores.storesId }" />
					                        			<span>${stores.storesName }</span>
<%-- 					                        			<input type="text" readonly="readonly" name="storesName" value="${stores.storesName }" /> --%>
					                        		</c:otherwise>
					                        	</c:choose>
					                        </td>
					                        <td class="down-operation"><img class="down-img" src="<%=cssBasePath %>app/img/dropdown.png" alt=""/></td>
					                    </tr>
				                    </tbody>
				                    <tbody class="detail">
					                    <tr class="hint setting-hint">
					                        <td scope="row" colspan="4">
					                            <div class="diamonds"></div>
					                            <span class="word">当前，门店价格 为所选门店的价格设置</span>
					                        </td>
					                    </tr>
					                    <!-- 项目列表 start -->
					                    <c:if test="${not empty projectInfoList }">
						                    <c:forEach var="projectInfoCheck" items="${projectInfoList }" varStatus="status">
						                    	<tr>
							                        <td scope="row"></td>
							                        <c:choose>
							                        	<c:when test="${status.index == 0 }"><td class="name">门店价格</td></c:when>
							                        	<c:otherwise><td class="name"></td></c:otherwise>
							                        </c:choose>
							                        <td class="item-content">
							                            <input class="type" type="text" name="projectName" value="${projectInfoCheck.projectName }" readonly="readonly"/>
                                    					<input class="money" type="text" placeholder="金额" name="projectPrice" value="${projectInfoCheck.projectPrice }"/><!-- 项目价格-->
                                    					
                                    					<input type="hidden" name="classesId" value="${projectInfoCheck.classesId }"/>
                                    					<input type="hidden" name="projectInfoIdCheck" value="${projectInfoCheck.projectInfoId }"/>
											           	<input type="hidden" name="projectNo" value="${projectInfoCheck.projectNo }"/>
							                        </td>
							                        <td class="operation"></td>
						                    	</tr>
						                    </c:forEach>
					                    </c:if>
					                    <!-- 项目列表 end -->
					                    
					                    <!-- 职位名称 start -->
					                    <tr class="hint setting-hint">
					                        <td scope="row" colspan="4">
					                            <div class="diamonds"></div>
					                            <span class="word">当前，职位名称 为所选门店的职位提成标准</span>
					                        </td>
					                    </tr>
					                    <tr>
					                        <td scope="row"></td>
					                        <td class="name">职位名称</td>
					                        <td class="item-content">
					                            <select class="positionId" name="positionId" onchange="positionChange(this)"  onload="loadPositionSelect(this)">
			                                	</select>
					                            <span>指定</span>
					                            <input class="discount assign" type="text" placeholder="提成" name="discountAssign" value="${positionDto.discountAssign }"/><!-- 折扣 -->
					                            <input class="money assign" type="text" placeholder="金额" name="amountAssign" value="${positionDto.amountAssign }"/><!-- 金额 -->
					                            <span>非指定</span>
					                            <input class="discount assign" type="text" placeholder="提成" name="discount" value="${positionDto.discount }"/><!-- 折扣 -->
					                            <input class="money assign" type="text" placeholder="金额" name="amount" value="${positionDto.amount }"/><!-- 金额 -->
					                            <div class="plus">
			                                        <img src="<%=cssBasePath %>app/img/head/plus.png" alt="" onclick="addPosition(this);"/>
			                                    </div>
					                        </td>
					                        <td class="delete-operation">
					                            <img src="<%=cssBasePath %>app/img/delete.png" alt="删除" onclick="deletePosition(this);"/>
					                        </td>
					                    </tr>
					                    <!-- 职位名称 end -->
					                    <tr>
					                        <td colspan="4" class="button-group">
					                            <button class="cancel btn" type="button" onclick="canncelClass(this,true);">取消</button>
				                                <button class="affirm btn" type="button" onclick="saveProject(this);" >确认</button>
					                        </td>
					                    </tr>
				                    </tbody>
				           		</table>
				           	</form>
							
						</c:otherwise>
					</c:choose>
	            </div>
	        </div>
        </div>
    </div>
    
	<script id="storesHtml" type="text/html">
	<form method="post" name="projectForm">
		<input type="hidden" name="projectIdSet" value="${projectRelation.projectIdSet }"/>

		<table class=" table" id="storeTable">
			<tbody class="js-table-header">
				<tr>
					<td  class="lebel"><div class="letter"><input type="hidden" value="{typeName}" name="categoryName"/>{typeName}</div></td>
					<td class="name">选定门店</td>
					<td class="dropdown item-input">
						<c:choose>
					    	<c:when test="${not empty storesList }">
								<a  href="javascript:void(0);" class="dropdown-toggle target-input" >
									<input type="text" name="selectStoresId" onload="loadTagInput()" />
								</a>
								<ul class="dropdown-menu select-tag" width="100%;">
									<li class="title-li">
										<input type="checkbox" class="check-all"/>
										<span></span>
										<span class="company-name">全部店铺</span>
									</li>
								</ul>
							</c:when>
							<c:otherwise>
								<input type="hidden" name="selectStoresId" value="${stores.storesId }" />
								<span>${stores.storesName }</span>
							</c:otherwise>
						</c:choose>
					</td>
					<td class="down-operation"><img class="down-img" src="<%=cssBasePath %>app/img/dropdown.png" alt=""/></td>
				</tr>
			</tbody>
			<tbody class="detail">
				<tr class="hint setting-hint">
					<td scope="row" colspan="4">
						<div class="diamonds"></div>
						<span class="word">当前，门店价格 为所选门店的价格设置</span>
					</td>
				</tr>
				
				<c:if test="${not empty projectInfoList }">
					<c:forEach var="projectInfoCheck" items="${projectInfoList }" varStatus="status">
						<tr>
							<td scope="row"></td>
							<c:choose>
								<c:when test="${status.index == 0 }"><td class="name">门店价格</td></c:when>
								<c:otherwise><td class="name"></td></c:otherwise>
							</c:choose>
							<td class="item-content">
								<input class="type" type="text" name="projectName" value="${projectInfoCheck.projectName }" readonly="readonly"/>
								<input class="money" type="text" placeholder="金额" name="projectPrice" value="${projectInfoCheck.projectPrice }"/><!-- 项目价格-->
			
								<input type="hidden" name="classesId" value="${projectInfoCheck.classesId }"/>
								<input type="hidden" name="projectInfoIdCheck" value="${projectInfoCheck.projectInfoId }"/>
								<input type="hidden" name="projectNo" value="${projectInfoCheck.projectNo }"/>
							</td>
							<td class="operation"></td>
						</tr>
					</c:forEach>
				</c:if>

				<tr class="hint setting-hint">
					<td scope="row" colspan="4">
						<div class="diamonds"></div>
						<span class="word">当前，职位名称 为所选门店的职位提成标准</span>
					</td>
				</tr>
				<tr>
					<td scope="row"></td>
					<td class="name">职位名称</td>
					<td class="item-content">
						<select class="positionId" name="positionId" onchange="positionChange(this)" onload="loadPositionSelect(this)">
						</select>
						<span>指定</span>
						<input class="discount assign" type="text" placeholder="提成" name="discountAssign" value="${positionDto.discountAssign }"/><!-- 折扣 -->
						<input class="money assign" type="text" placeholder="金额" name="amountAssign" value="${positionDto.amountAssign }"/><!-- 金额 -->
						<span>非指定</span>
						<input class="discount assign" type="text" placeholder="提成" name="discount" value="${positionDto.discount }"/><!-- 折扣 -->
						<input class="money assign" type="text" placeholder="金额" name="amount" value="${positionDto.amount }"/><!-- 金额 -->
						<div class="plus">
			            	<img src="<%=cssBasePath %>app/img/head/plus.png" alt="" onclick="addPosition(this);"/>
			            </div>
					 </td>
					 <td class="delete-operation">
					    <img src="<%=cssBasePath %>app/img/delete.png" alt="删除" onclick="deletePosition(this);"/>
					 </td>
				</tr>
				<tr>
					<td colspan="4" class="button-group">
						<button class="cancel btn" type="button" onclick="canncelClass(this,true);">取消</button>
				        <button class="affirm btn" type="button" onclick="saveProject(this);" >确认</button>
					</td>
				</tr>
			</tbody>
		</table>
	</form>
	</script>
	<%@ include file="/js.jsp"%>
	<script>
		var basePath = '<%=cssBasePath%>';
		var storesList = eval("(" + '<%=request.getAttribute("storesList")%>' + ")");
// 		console.log("storesList:"+storesList);
		var positionList = eval("(" + '<%=request.getAttribute("positionList")%>' + ")");
		
		function positionChange(obj){
			//option:not(:selected)
			var selectValue = $(obj).children('option:selected').val();
			
			//获取所有的职位下拉框
			var selectArray = $(".positionId");
			//从其他的下拉框中将当前下拉框所选的内容隐藏
			//1.
			for (var i = 0; i < selectArray.length; i++) {
				var tmpSelect = selectArray[i];
				if(obj != tmpSelect){
					$(tmpSelect).find("option").show();
					$(tmpSelect).find("option[value='"+selectValue+"']").hide();
				}
			}
		}
// 		console.log("positionList:"+positionList);
	</script>
	<script src="<%=cssBasePath %>js/project/projectStore.js"></script>
	
</body>
</html>
package org.andy.shop.service;

import java.util.List;

import org.andy.shop.entity.Husband;
import org.andy.shop.entity.UserInfo;

/**  
 * 创建时间：2015-2-13 下午1:00:51  
 * @author andy  
 * @version 2.2  
 * 描述： 
 */

public interface HusbandService {
    
	Husband load(Integer id);

	Husband get(Integer id);

	List<Husband> findAll();

	void persist(Husband entity);

	Integer save(Husband entity);

	void saveOrUpdate(Husband entity);

	void delete(Integer id);

	void flush();
}

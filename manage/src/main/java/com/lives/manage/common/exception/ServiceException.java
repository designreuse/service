package com.lives.manage.common.exception;

public class ServiceException extends Exception{
	private static final long serialVersionUID = 1L;
	private Integer code;
	private String msg;
	
	public ServiceException(Integer code, String msg) {
		super();
		this.code = code;
		this.msg = msg;
	}

	public Integer getCode() {
		return code;
	}

	public void setCode(Integer code) {
		this.code = code;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
	
	@Override
	public String toString() {
		return "service exception [code=" + code + ", msg=" + msg + "]";
	}
}

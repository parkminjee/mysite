package com.sds.icto.mysite.servlet.action.main;

import com.sds.icto.web.Action;

public class ActionFactory {
	public static ActionFactory instance;
	static{
		instance = new ActionFactory();
	}
	
	private ActionFactory(){
		//객체생성 못하게 막아놓음(객체 하나 유지)
	}
	
	public static ActionFactory getInstance(){
//		if(instance == null){
//			instance = new ActionFactory();
//		}
		return instance;
	}
	
	public Action getAction(String a){
		Action action = new IndexAction();
		return action;
	}
}

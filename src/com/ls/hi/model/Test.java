package com.ls.hi.model;


import java.util.UUID; 
import com.ls.hi.entity.User;


public class Test {
	public static void main(String[] args) {
		BaseHibernate bh=new BaseHibernate();
		bh.add(new User(UUID.randomUUID().toString(),"zhou","it"));
		//bh.select();
		//bh.update();
		
		
		
		
		
	}

}

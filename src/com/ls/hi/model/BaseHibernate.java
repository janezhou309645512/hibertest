package com.ls.hi.model;

import java.io.Serializable;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;

import com.ls.hi.HibernateSessionFactory;
import com.ls.hi.entity.User;
import java.util.UUID; 

public class BaseHibernate {
	
	 public void add(User user) {
		 Session session=HibernateSessionFactory.getSession();
		       Transaction tx = session.beginTransaction();
	        try {
	           Serializable id = session.save(user);

	            if (id != null) {
	                System.out.println("新增成功！");
	                tx.commit();// 提交事务
	            } else {
	                tx.rollback();// 失败回滚
	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	        } finally {
	            session.close();
	        }
	    }

	 
	    public void select() {
	    	 Session session=HibernateSessionFactory.getSession();
		       Transaction tx = session.beginTransaction();
	        try {
	            // 查询get
	            User user = (User) session.get(User.class, 1);
	            System.out.println("查询结果：" + user.getName());
	            tx.commit();
	        } catch (Exception e) {
	            e.printStackTrace();
	        } finally {
	            session.close();
	        }
	    }


	    public void update() {
	    	 Session session=HibernateSessionFactory.getSession();
		       Transaction tx = session.beginTransaction();
	        try {
	            // 第1种：update持久化修改：先查询，与数据库有关联
	        /*    User user = (User) session.get(User.class, 15);
	            user.setName("duheyu");
	            user.setPassword("duheyu");
	            session.update(user);
	            tx.commit();*/
	            
	            //第2种：瞬时状态下修改,会set全部字段，不修改的字段全部清空了
	            /*User user =new User();
	            user.setId(15);
	            user.setName("duxinke");
	            user.setPassword("duxinke");
	            session.update(user);
	            tx.commit();*/
	            
	            //第3种，新增或修改，拿瞬时状态来测试
	            User user =new User();
	            user.setId(UUID.randomUUID().toString());
	            user.setName("duxinke");
	            user.setDepartment("department");
	            session.saveOrUpdate(user);
	            tx.commit();

	        } catch (Exception e) {
	            e.printStackTrace();
	        } finally {
	            session.close();
	        }
	    }
	    
	
	    public void delete(){
	    	 Session session=HibernateSessionFactory.getSession();
		       Transaction tx = session.beginTransaction();
	        //读取并解析配置文件hibernate.cfg.xml
	      
	        //读取并解析映射信息，User.hbm.xml,创建SessionFactory
	       
	        //打开一个连接数据库的Session
	     
	        //开始一个事务，增删除查改操作必须有，查询操作可选
	      
	        //执行操作，都是用当前Session执行
	        try {
	            User user =new User();
	            user.setId(UUID.randomUUID().toString());
	            session.delete(user);
	            tx.commit();
	        } catch (Exception e) {
	            // TODO: handle exception
	        }
	    }

	}
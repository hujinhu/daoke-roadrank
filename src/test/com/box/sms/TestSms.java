package com.box.sms;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.box.tei.dao.wap.CompanyOrderMapper;
import com.box.tei.dao.wap.MeetCompanyInfoMapper;
import com.box.tei.dao.wap.PayInfoMapper;
import com.box.tei.dao.wap.SmsCompanyConfigMapper;
import com.box.tei.dao.wap.visiblePersonMapper;
import com.box.tei.dto.MeetCompanyInfo;
import com.box.tei.dto.MeetCompanyInfoCriteria;
import com.box.tei.dto.SmsCompanyConfig;
import com.box.tei.dto.visiblePerson;
import com.box.tei.service.IPayInfoService;
import com.box.tei.util.CodeTypeEnum;
import com.box.tei.util.Config;

public class TestSms {
	private   MeetCompanyInfoMapper meetCompanyInfoMapper;
	private   SmsCompanyConfigMapper  smsCompanyConfigMapper ;
    private   visiblePersonMapper visiblePersonMapper;
    private   CompanyOrderMapper  companyOrderMapper ;
    private   IPayInfoService iPayInfoService;
	  @Before
    public void before(){                                                                    
        @SuppressWarnings("resource")
        ApplicationContext context = new ClassPathXmlApplicationContext(new String[]{
        		"classpath:spring/applicationContext.xml"
                });
        meetCompanyInfoMapper = (MeetCompanyInfoMapper) context.getBean("meetCompanyInfoMapper");
        smsCompanyConfigMapper = (SmsCompanyConfigMapper) context.getBean("smsCompanyConfigMapper");
        visiblePersonMapper = (visiblePersonMapper) context.getBean("visiblePersonMapper");
        companyOrderMapper = (CompanyOrderMapper) context.getBean("companyOrderMapper");
        iPayInfoService = (IPayInfoService) context.getBean("payInfoServiceImpl");
	  
	  }
    @Test
	/**
	 * 数据迁移  公司信息以及人员权限
	 */
	public void dataMeet(){
		//查询电话公司配置信息
		MeetCompanyInfoCriteria  cri  = new  MeetCompanyInfoCriteria();
		List<MeetCompanyInfo>  list = meetCompanyInfoMapper.selectByExample(cri);
		SmsCompanyConfig  config =  new SmsCompanyConfig();
		//算钱
		for(MeetCompanyInfo dto:list){
			int money = dto.getTimes()*200;
			config.setCompanyId(dto.getCompanyId());
			config.setSmsEnable(true);
			config.setMoney(money);
			config.setSmsPrice(Config.getInt("sms_price"));
			config.setCallPrice(Config.getInt("call.price"));
			config.setMsgs(Config.getInt("sms_msgs"));
			config.setTimes(0);
			smsCompanyConfigMapper.insert(config);
			String pers = dto.getPersonsId();
			addVisiablePerson(pers,dto.getId(),dto.getCompanyId());
		}
	
	}	
	public void addVisiablePerson(String  permission ,Integer busid,Integer companyId){
		visiblePerson visiPerson=new visiblePerson();
		visiPerson.setBusinessType(CodeTypeEnum.VISIBLE_BUSINESS_MEET.getKey());
		visiPerson.setInvalid(0);
		visiPerson.setIsMass(1);
		visiPerson.setContentId(busid);
		visiPerson.setCompanyId(companyId);
		String[] ps = permission.split(",");
		for(String pid:ps){
			visiPerson.setPersonId(Integer.parseInt(pid));
			visiblePersonMapper.insert(visiPerson);
		}
	}
	
	


	
	
	
	
	
	
   } 

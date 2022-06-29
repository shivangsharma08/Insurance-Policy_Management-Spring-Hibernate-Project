package com.ncs.service;

import com.ncs.dao.AppDao;
import com.ncs.entities.Customer;
import com.ncs.entities.CustomerPolicy;
import com.ncs.entities.Policy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class AppServiceImpl implements AppService{
    
    @Autowired
    private AppDao appDao;
    
    @Override
    @Transactional
    public boolean validateUser(String unm, String pwd){
        return appDao.validateUser(unm, pwd);
    }

    @Override
    @Transactional
    public void addPolicy(Policy p){
        appDao.addPolicy(p);
    }

    @Override
    @Transactional
    public List<Policy> viewAllPolicy(){
       return appDao.viewAllPolicy();
    }

    @Override
    @Transactional
    public void addCustomer(Customer c){
        appDao.addCustomer(c);
    }

    @Override
    @Transactional
    public Customer getCustomerByUsername(String unm){
        return appDao.getCustomerByUsername(unm);
    }

    @Override
    @Transactional
    public Customer getCustomerByCid(int cid){
        return appDao.getCustomerByCid(cid);
    }

    @Override
    @Transactional
    public Policy getPolicy(CustomerPolicy cp){
        return appDao.getPolicy(cp);
    }

    @Override
    @Transactional
    public Policy viewPolicyDetails(int sno){
        return appDao.viewPolicyDetails(sno);
    }
    

    @Override
    @Transactional
    public boolean addPolicyForCustomer(int cid, CustomerPolicy cp){
        Customer c = appDao.getCustomerByCid(cid);
        CustomerPolicy custPolicy =  appDao.applyPolicy(cid, cp);
        if(custPolicy!=null){
            custPolicy.setCust_id(cid);
            c.addCustomerPolicy(custPolicy);
            appDao.applyPolicyForCustomer(c,custPolicy);
            return true;
        }
        else{
            return false;
        }
        
    }
    
    @Override
    @Transactional
    public CustomerPolicy getCustomerPolicy(int cpid){
        return appDao.getCustomerPolicy(cpid);
    }
    


}

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
    public Customer getCustomer(int cid){
        return appDao.getCustomer(cid);
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
    public void applyPolicyForCustomer(int cid, CustomerPolicy cp){
        Customer c = appDao.getCustomer(cid);
        Policy p = appDao.getPolicy(cp);
        c.add(p);
        appDao.applyPolicyForCustomer(c,p);
    }
    


}

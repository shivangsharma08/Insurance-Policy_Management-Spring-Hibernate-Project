package com.ncs.service;

import com.ncs.entities.Customer;
import com.ncs.entities.CustomerPolicy;
import com.ncs.entities.Policy;

import java.util.List;

public interface AppService {

    public boolean validateUser(String unm, String pwd);
    public void addPolicy(Policy p);
    public List<Policy> viewAllPolicy();
    public void addCustomer(Customer c);
    public Customer getCustomerByUsername(String unm);
    public Customer getCustomer(int cid);
    public Policy getPolicy(CustomerPolicy cp);
    public Policy viewPolicyDetails(int sno);
    public void applyPolicyForCustomer(int cid, CustomerPolicy p);
    
    
}

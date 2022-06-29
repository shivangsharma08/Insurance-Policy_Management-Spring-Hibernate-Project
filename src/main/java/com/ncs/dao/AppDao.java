package com.ncs.dao;

import com.ncs.entities.Customer;
import com.ncs.entities.CustomerPolicy;
import com.ncs.entities.Policy;
import org.springframework.orm.hibernate5.HibernateTemplate;

import java.util.List;

public interface AppDao {
    public void setTemplate(HibernateTemplate hibernateTemplate);
    public Customer getCustomerByCid(int cid);
    public Customer getCustomerByUsername(String unm);
    public void addPolicy(Policy p);
    public List<Policy> viewAllPolicy();
    public void addCustomer(Customer c);
    public Policy getPolicy(CustomerPolicy cp);
    public CustomerPolicy applyPolicy(int cid, CustomerPolicy cp);
    public List<CustomerPolicy> viewPoliciesForCustomer(int cid);
    public boolean validateUser(String uname, String pwd);
    public Policy viewPolicyDetails(int sno);
    public void applyPolicyForCustomer(Customer c, CustomerPolicy p);
    public CustomerPolicy getCustomerPolicy(int cpid);
}

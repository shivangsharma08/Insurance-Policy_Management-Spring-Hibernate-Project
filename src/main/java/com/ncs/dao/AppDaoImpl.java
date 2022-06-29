package com.ncs.dao;

import com.ncs.entities.Customer;
import com.ncs.entities.CustomerPolicy;
import com.ncs.entities.Policy;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class AppDaoImpl implements AppDao {
    
    @Autowired
    HibernateTemplate hibernateTemplate;

    @Override
    public void setTemplate(HibernateTemplate hibernateTemplate){
        this.hibernateTemplate = hibernateTemplate;
    }
    
    @Override
    public Customer getCustomerByCid(int cid){
        Session session = hibernateTemplate.getSessionFactory().openSession();
        Transaction t = session.beginTransaction();
        Customer c =  (Customer)session.get(Customer.class, cid);
        t.commit();
        session.close();
        return c;
    }

    @Override
    public Customer getCustomerByUsername(String unm){
        Session session = hibernateTemplate.getSessionFactory().openSession();
        Transaction t = session.beginTransaction();
        Query q = session.createQuery("FROM Customer c WHERE username = '" + unm + "'");
        List<Customer> cl1 = q.list();
      t.commit();
        session.close();
        for(Customer c: cl1){
            return c;
        }
        return null;
    }

    @Override
    public void addPolicy(Policy p){
        Session session = hibernateTemplate.getSessionFactory().openSession();
        Transaction t = session.beginTransaction();
        session.save(p);
        t.commit();
       session.close();
    }

    @Override
    public List<Policy> viewAllPolicy(){
       List<Policy> pl = hibernateTemplate.loadAll(Policy.class);
       return pl;
    }

    @Override
    public void addCustomer(Customer c){
        Session session = hibernateTemplate.getSessionFactory().openSession();
        Transaction t = session.beginTransaction();
        session.save(c);
        t.commit();
        session.close();
    }

    @Override
    public Policy getPolicy(CustomerPolicy cp){
        Session session = hibernateTemplate.getSessionFactory().openSession();
        Transaction t = session.beginTransaction();
        Query q = session.createQuery("FROM Policy p WHERE p.policy_name = '" + cp.getPolicy_name() + "'");
        List<Policy> pl = q.list();
        t.commit();
        session.close();
        Policy p = pl.get(0);
        return p;
        
    }

    @Override
    public CustomerPolicy applyPolicy(int cid, CustomerPolicy cp){
        String hql;
        int pay_cycle = 1;
        hql = "FROM Policy p WHERE p.policy_name = '" + cp.getPolicy_name() + "'";
        
        Session session = hibernateTemplate.getSessionFactory().openSession();
        Transaction t = session.beginTransaction();
        Query q = session.createQuery(hql);
        
        // VALIDATING THE POLICY APPLIED BY THE CUSTOMER AND CALCULATING PREMIUM
        List<Policy> pl = q.list();
        for(Policy p: pl){
            if((cp.getSum_assured_needed() <= p.getMax_sum_assured()) && (cp.getNo_of_years() <= p.getMax_no_of_years())){
                cp.setPolicy_number(p.getScheme_number());
                
                if(cp.getPremium_payment_cycle().equals("Quarterly")){
                    pay_cycle = 4;
                }
                else if(cp.getPremium_payment_cycle().equals("Monthly")){
                    pay_cycle = 12;
                }
                double annual_premium = ((cp.getSum_assured_needed()*p.getPremium_rate())/100000)*cp.getNo_of_years();
                cp.setCalculated_premium(annual_premium/pay_cycle);
                t.commit();
                session.close();
                return cp;
            }
        }
       return null;
    }

    @Override
    public List<CustomerPolicy> viewPoliciesForCustomer(int cid){
        String hql;
        hql = "FROM CustomerPolicy cp WHERE cp.customer_id = "+cid;
        Session session = hibernateTemplate.getSessionFactory().openSession();
        Transaction t = session.beginTransaction();
        Query q = session.createQuery(hql);
        
        List<CustomerPolicy> cpl = q.list();
        t.commit();
        session.close();
        return cpl;
    }

    @Override
    public boolean validateUser(String uname, String pwd){
        String hql;
        hql = "FROM Customer c WHERE c.username = '" + uname + "'";
        Session session = hibernateTemplate.getSessionFactory().openSession();
        Transaction t = session.beginTransaction();
        Query q = session.createQuery(hql);
        
        List<Customer> cl = q.list();
        t.commit();
        session.close();
        for(Customer c: cl){    // VALIDATING USER LOGIN WITH DB 
            if(c.getUsername().equals(uname) && c.getPassword().equals(pwd)){   
                return true;
            }
            else{
                return false;
            }
        }
        return false;
    }

    @Override
    public Policy viewPolicyDetails(int sno){
        Session session = hibernateTemplate.getSessionFactory().openSession();
        Transaction t = session.beginTransaction();
        Policy p1 = (Policy) session.get(Policy.class, sno);
        t.commit();
        session.close();
        return p1;
    }

    @Override
    public CustomerPolicy getCustomerPolicy(int cpid){
        Session session = hibernateTemplate.getSessionFactory().openSession();
        Transaction t = session.beginTransaction();
        CustomerPolicy cp = (CustomerPolicy)session.get(CustomerPolicy.class, cpid);
        t.commit();
        session.close();
        return cp;
    }

    @Override
    public void applyPolicyForCustomer(Customer c,CustomerPolicy cp) {
        Session session = hibernateTemplate.getSessionFactory().openSession();
        Transaction t = session.beginTransaction();
       
        hibernateTemplate.save(cp);
        hibernateTemplate.saveOrUpdate(c);
        t.commit();
        session.close();
    }

}

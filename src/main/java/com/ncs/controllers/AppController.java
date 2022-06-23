package com.ncs.controllers;

import com.ncs.dao.AppDao;
import com.ncs.entities.Customer;
import com.ncs.entities.CustomerPolicy;
import com.ncs.entities.Policy;
import com.ncs.service.AppService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

@Controller
@RequestMapping("")
public class AppController {
    
    @Autowired
    private AppService appService;
    
    @RequestMapping("/")
    public String getIndex(){
        return "index";
    }

    @RequestMapping(value = "/adminLogin",method = RequestMethod.GET)
    public String getAdminLoginPage(){
        return "adminLogin";
    }

    @RequestMapping(value = "/userLogin",method = RequestMethod.GET)
    public String getUserLoginPage(){
        return "userLogin";
    }

    
    @RequestMapping(value="/authenticate", method = RequestMethod.GET)
    public String authenticateLogin(@RequestParam(value = "uname", required = false) String uname, @RequestParam(value = "pwd", required = false) String pwd, Model map){
        
        if(uname.equals("user_admin")){
            if(uname.length()>0 && pwd.length()>0  && uname.equals("user_admin") && pwd.equals("pass_admin")){     
                return "admin";
            }
        }
        else{
            boolean rs = appService.validateUser(uname, pwd);
            if(rs){
                map.addAttribute("username",uname);
                return "customer";
            }
            else{
                return "invalidLogin";  
            }
        }
        
        return "";
    }
    
    @RequestMapping(value = "/addPolicyPage", method = RequestMethod.GET)
    public String addPolicyPage(Model map){
        Policy po = new Policy();
        map.addAttribute("policyObject",po);
        return "addPolicyPage";
    }
    
    @RequestMapping(value = "/addPolicy", method = RequestMethod.POST)
    public String addPolicy(@ModelAttribute("policyObject") Policy p){
        appService.addPolicy(p);
        return "add-policy-success";
    }
    
    @RequestMapping(value = "/viewAllPolicyPage", method = RequestMethod.GET)
    public String viewAllPolicyPage(Model map){
        List<Policy> policies = appService.viewAllPolicy(); 
        map.addAttribute("policies", policies);
        return "policy-list";
    }
    
    @RequestMapping(value = "/addCustomerPage", method = RequestMethod.GET)
    public String addCustomerPage(Model map){
        Customer co = new Customer();
        map.addAttribute("customerObject",co);
        return "customerRegPage";
    }
    
    @RequestMapping(value = "/addCustomer", method = RequestMethod.POST)
    public String addCustomer(@ModelAttribute("customerObject") Customer c, Model map){
        appService.addCustomer(c);
        return "add-customer-success";
    }
    
    @RequestMapping(value = "/applyPolicyPage/{username}", method = RequestMethod.GET)
    public String applyPolicyPage(@PathVariable String username, Model map){
        Customer c = appService.getCustomerByUsername(username);
        map.addAttribute("cid", c.getCustomer_id());
        CustomerPolicy cpo = new CustomerPolicy();
        map.addAttribute("customerPolicyObject", cpo);
        return "applyPolicyPage";
    }
    
    @RequestMapping(value = "/applyPolicy/{cid}",method = RequestMethod.POST)
    public String applyPolicy(@PathVariable int cid, @ModelAttribute("customerPolicyObject") CustomerPolicy cp, Model map){
        
        appService.applyPolicyForCustomer(cid, cp);
        
//        Customer cust = appService.getCustomer(cid);
        
//        CustomerPolicy custPolicy = appDao.applyPolicy(cp);
//        Policy p1 = appService.getPolicy(cp);
        
//        Policy policy = appDao.viewPolicyDetails(custPolicy.getPolicy_number());
//        cust.add(p1);
        
//        appService.applyPolicyForCustomer(cp, cid);
        
        return "apply-policy-success";
        
        
    }
    
    @RequestMapping(value = "/customerPolicyPage", method = RequestMethod.GET)
    public String customerPolicyPage(){
        return "customerPolicyPage";
    }
    
    @RequestMapping(value = "/viewPoliciesForCustomer/{cid}", method = RequestMethod.GET)
    public String viewPoliciesForCustomer(@PathVariable int cid, Model map){
        
        Customer c1 = appService.getCustomer(cid);
        
        List<Policy> policyList = c1.getPolicies();
        
//        List<CustomerPolicy> cpl = appDao.viewPoliciesForCustomer(cid);
        map.addAttribute("policiesForCustomerList", policyList);
        return "policy-customer-list";
    }
    
    @RequestMapping(value = "/viewPolicyDetailsPage", method = RequestMethod.GET)
    public String viewPolicyDetailsPage(Model map){
        List<Policy> pl = appService.viewAllPolicy();
        map.addAttribute("allpolicies",pl);
        return "policyDetailsPage";
    }
    
    @RequestMapping(value = "viewPolicyDetails/{sno}", method = RequestMethod.GET)
    public String viewPolicyDetails(@PathVariable int sno, Model map){
        Policy p1 = appService.viewPolicyDetails(sno);
        List<Policy> pl = new ArrayList<>();
        pl.add(p1);
        map.addAttribute("policyDetailsObject", pl);
        return "policyDetails";
    }
    
}

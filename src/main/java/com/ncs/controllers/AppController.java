package com.ncs.controllers;

import com.ncs.dao.AppDao;
import com.ncs.entities.Customer;
import com.ncs.entities.CustomerPolicy;
import com.ncs.entities.Policy;
import com.ncs.service.AppService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

@Controller
@RequestMapping("")
public class AppController {
    
    @Autowired
    private AppService appService;
    
    // RETURNS THE HOME PAGE
    @RequestMapping("/")
    public String getIndex(){
        return "index";
    }

    // RETURNS THE ADMIN LOGIN PAGE
    @RequestMapping(value = "/adminLogin",method = RequestMethod.GET)
    public String getAdminLoginPage(){
        return "adminLogin";
    }

    // RETURNS THE CUSTOMER LOGIN PAGE
    @RequestMapping(value = "/userLogin",method = RequestMethod.GET)
    public String getUserLoginPage(){
        return "userLogin";
    }

    // AUTHENTICATES BOTH ADMIN AND CUSTOMER LOGIN DETAILS HERE
    @RequestMapping(value="/authenticate", method = RequestMethod.GET)
    public String authenticateLogin(@RequestParam(value = "uname", required = false) String uname, @RequestParam(value = "pwd", required = false) String pwd, Model map){
        
        if(uname.equals("user_admin")){
            if(uname.length()>0 && pwd.length()>0  && uname.equals("user_admin") && pwd.equals("pass_admin")){     
                return "admin";
            }
            else{
                return "invalidLogin";
            }
        }
        else{
            boolean rs = appService.validateUser(uname, pwd);   // VALIDATING THE USER
            if(rs){
                map.addAttribute("username",uname);
                return "customer";
            }
            else{
                return "invalidLogin";  
            }
        }
        
    }
    
    // RETURNS ADD POLICY PAGE FOR ADMIN
    @RequestMapping(value = "/addPolicyPage", method = RequestMethod.GET)
    public String addPolicyPage(Model map){
        Policy po = new Policy();
        map.addAttribute("policyObject",po);
        return "addPolicyPage";
    }
    
    // ADDS THE POLICY TO DB IF VALID
    @RequestMapping(value = "/addPolicy", method = RequestMethod.POST)
    public String addPolicy(@Valid @ModelAttribute("policyObject") Policy p, BindingResult bindingResult){
        
        if(bindingResult.hasErrors()){
            return "addPolicyPage";
        }
        else{
            appService.addPolicy(p);
            return "add-policy-success";
        }
        
    }
    
    // RETURNS ALL POLICY SCHEMES CREATED
    @RequestMapping(value = "/viewAllPolicyPage", method = RequestMethod.GET)
    public String viewAllPolicyPage(Model map){
        List<Policy> policies = appService.viewAllPolicy(); 
        map.addAttribute("policies", policies);
        return "policy-list";
    }
    
    // RETURNS CUSTOMER REGISTRATION PAGE FOR ADMIN
    @RequestMapping(value = "/addCustomerPage", method = RequestMethod.GET)
    public String addCustomerPage(Model map){
        Customer co = new Customer();
        map.addAttribute("customerObject",co);
        return "customerRegPage";
    }
    
    // ADDS THE CUSTOMER RECORD TO DB IF VALID
    @RequestMapping(value = "/addCustomer", method = RequestMethod.POST)
    public String addCustomer(@Valid @ModelAttribute("customerObject") Customer c,BindingResult bindingResult,Model map ){
        
        if(bindingResult.hasErrors()){
            return "customerRegPage";
        }
        else{
            appService.addCustomer(c);
            return "add-customer-success";
        }
        
    }
    
    // RETURNS THE APPLY POLICY PAGE FOR CUSTOMER
    @RequestMapping(value = "/applyPolicyPage/{username}", method = RequestMethod.GET)
    public String applyPolicyPage(@PathVariable String username, Model map){
        
        Customer c = appService.getCustomerByUsername(username);
        map.addAttribute("cid", c.getCustomer_id());
        CustomerPolicy cpo = new CustomerPolicy();
        map.addAttribute("customerPolicyObject", cpo);
        
        List<Policy> polList = appService.viewAllPolicy();
        map.addAttribute("polList",polList);
        return "applyPolicyPage";
    }
    
    // APPLIES THE NEW POLICY FOR THE CUSTOMER
    @RequestMapping(value = "/applyPolicy/{cid}",method = RequestMethod.POST)
    public String applyPolicy(@PathVariable int cid, @ModelAttribute("customerPolicyObject") CustomerPolicy cp, Model map){
        
        boolean rs = appService.addPolicyForCustomer(cid,cp);
        if(rs){
            return "apply-policy-success";
        }
        else{
            return "apply-policy-fail";
        }
    }
    
    // RETURNS THE CUSTOMER POLICY PAGE FOR ADMIN
    @RequestMapping(value = "/customerPolicyPage", method = RequestMethod.GET)
    public String customerPolicyPage(){
        return "customerPolicyPage";
    }
    
    
    // RETURNS ALL THE POLICY SCHEMES APPLIED BY A CUSTOMER
    @RequestMapping(value = "/viewPoliciesForCustomer/{cid}", method = RequestMethod.GET)
    public String viewPoliciesForCustomer(@PathVariable int cid, Model map){
        
        Customer c1 = appService.getCustomerByCid(cid);
        if(c1!=null){
            List<CustomerPolicy> cplist = c1.getCustomerPolicies();
            map.addAttribute("cname", c1.getCustomer_name());
            map.addAttribute("policiesForCustomerList", cplist);
            return "policy-customer-list";
        }
        else{
            map.addAttribute("cid",cid);
            return "customer-not-found";
        }
    }
    
    // RETURNS POLICY DETAILS PAGE FOR THE CUSTOMER
    @RequestMapping(value = "/viewPolicyDetailsPage", method = RequestMethod.GET)
    public String viewPolicyDetailsPage(Model map){
        List<Policy> pl = appService.viewAllPolicy();
        map.addAttribute("allpolicies",pl);
        return "policyDetailsPage";
    }
    
    // RETURNS POLICY DETAILS
    @RequestMapping(value = "/viewPolicyDetails/{sno}", method = RequestMethod.GET)
    public String viewPolicyDetails(@PathVariable int sno, Model map){
        Policy p1 = appService.viewPolicyDetails(sno);
        List<Policy> pl = new ArrayList<>();
        pl.add(p1);
        map.addAttribute("policyDetailsObject", pl);
        return "policyDetails";
    }
    
    // RETURNS THE PREMIUM PAID PAGE FOR THE CUSTOMER WITH LIST OF POLICIES APPLIED 
    @RequestMapping(value = "/getPremiumPage/{username}", method = RequestMethod.GET)
    public String getPremiumPage(@PathVariable String username, Model map){
        Customer c = appService.getCustomerByUsername(username);
        List<CustomerPolicy> cplist = c.getCustomerPolicies();
        map.addAttribute("policiesForCustomerList", cplist);
        return "policy-customer-list-premium";
    }
    
    // RETURNS THE PAGE WITH CALCULATED PREMIUM FOR A POLICY APPLIED BY THE CUSTOMER
    @RequestMapping(value = "/getPremium/{cpid}", method = RequestMethod.GET)
    public String getPremium(@PathVariable int cpid, Model map){
        CustomerPolicy cp = appService.getCustomerPolicy(cpid);
        Customer c = appService.getCustomerByCid(cp.getCust_id());
        List<CustomerPolicy> cl = new ArrayList<>();
        cl.add(cp);
        map.addAttribute("custpolicyobject", cl);
        map.addAttribute("custobject", c);
        return "customer-premium-page";
    }
    
}

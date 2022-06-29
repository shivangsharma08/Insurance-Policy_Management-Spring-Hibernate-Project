package com.ncs.entities;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

@Entity
public class CustomerPolicy {
    
    @Column(name = "cust_id")
    private int cust_id;
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int cpid;
    @Column(name = "policy_number")
    private int policy_number;
    @Column(name = "policy_name")
    private String policy_name;
    @Column(name = "sum_assured_needed")
    private double sum_assured_needed;
    @Column(name = "no_of_years")
    private int no_of_years;
    @Column(name = "premium_payment_cycle")
    private String premium_payment_cycle;
    @Column(name = "calculated_premium")
    private double calculated_premium;
    
    
    public CustomerPolicy() {

    }

    public CustomerPolicy(int cust_id, int cpid, int policy_number, String policy_name, double sum_assured_needed, int no_of_years, String premium_payment_cycle, double calculated_premium) {
        this.cust_id = cust_id;
        this.cpid = cpid;
        this.policy_number = policy_number;
        this.policy_name = policy_name;
        this.sum_assured_needed = sum_assured_needed;
        this.no_of_years = no_of_years;
        this.premium_payment_cycle = premium_payment_cycle;
        this.calculated_premium = calculated_premium;
    }

    public int getCpid() {
        return cpid;
    }

    public void setCpid(int cpid) {
        this.cpid = cpid;
    }

    public int getCust_id() {
        return cust_id;
    }

    public void setCust_id(int cust_id) {
        this.cust_id = cust_id;
    }

    public int getPolicy_number() {
        return policy_number;
    }

    public void setPolicy_number(int policy_number) {
        this.policy_number = policy_number;
    }

    public String getPolicy_name() {
        return policy_name;
    }

    public void setPolicy_name(String policy_name) {
        this.policy_name = policy_name;
    }

    public double getSum_assured_needed() {
        return sum_assured_needed;
    }

    public void setSum_assured_needed(double sum_assured_needed) {
        this.sum_assured_needed = sum_assured_needed;
    }

    public int getNo_of_years() {
        return no_of_years;
    }

    public void setNo_of_years(int no_of_years) {
        this.no_of_years = no_of_years;
    }

    public String getPremium_payment_cycle() {
        return premium_payment_cycle;
    }

    public void setPremium_payment_cycle(String premium_payment_cycle) {
        this.premium_payment_cycle = premium_payment_cycle;
    }

    public double getCalculated_premium() {
        return calculated_premium;
    }

    public void setCalculated_premium(double calculated_premium) {
        this.calculated_premium = calculated_premium;
    }
    
}

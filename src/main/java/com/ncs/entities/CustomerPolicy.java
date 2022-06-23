package com.ncs.entities;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

@Entity
public class CustomerPolicy {
    
    @Id
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

//    @ManyToOne
//    public List<Customer> custs;
    
    public CustomerPolicy() {

    }

    public CustomerPolicy(/*int customer_id,*/ int policy_number, String policy_name, double sum_assured_needed, int no_of_years, String premium_payment_cycle, double calculated_premium/*, List<Customer> custs*/) {
//        this.customer_id = customer_id;
        this.policy_number = policy_number;
        this.policy_name = policy_name;
        this.sum_assured_needed = sum_assured_needed;
        this.no_of_years = no_of_years;
        this.premium_payment_cycle = premium_payment_cycle;
        this.calculated_premium = calculated_premium;
//        this.custs = custs;
    }

//    public int getCustomer_id() {
//        return customer_id;
//    }
//
//    public void setCustomer_id(int customer_id) {
//        this.customer_id = customer_id;
//    }

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

//    public List<Customer> getCusts() {
//        return custs;
//    }
//
//    public void setCusts(List<Customer> custs) {
//        this.custs = custs;
//    }
}

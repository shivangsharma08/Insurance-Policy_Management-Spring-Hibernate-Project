package com.ncs.entities;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "policy")
public class Policy {
    
    @Id
    @GeneratedValue(strategy=GenerationType.SEQUENCE, generator = "id_Sequence")
    @Column(name = "scheme_number")
    private int scheme_number;
    @Column(name = "policy_name")
    private String policy_name;
    @Column(name = "policy_type")
    private String policy_type;
    @Column(name = "max_no_of_years")
    private int max_no_of_years;
    @Column(name = "premium_rate")
    private double premium_rate;
    @Column(name = "max_sum_assured")
    private double max_sum_assured;

    @LazyCollection(LazyCollectionOption.FALSE)
    @ManyToMany(cascade={CascadeType.ALL})
    @JoinTable(name = "policy_customer", joinColumns = @JoinColumn(name = "sid"), inverseJoinColumns = @JoinColumn(name = "cid"))
    private List<Customer> customers;
    

    public Policy() {
    }

    public Policy(int scheme_number, String policy_name, String policy_type, int max_no_of_years, double premium_rate, double max_sum_assured, List<Customer> customers) {
        this.scheme_number = scheme_number;
        this.policy_name = policy_name;
        this.policy_type = policy_type;
        this.max_no_of_years = max_no_of_years;
        this.premium_rate = premium_rate;
        this.max_sum_assured = max_sum_assured;
        this.customers = customers;
    }

    public int getScheme_number() {
        return scheme_number;
    }

    public void setScheme_number(int scheme_number) {
        this.scheme_number = scheme_number;
    }

    public String getPolicy_name() {
        return policy_name;
    }

    public void setPolicy_name(String policy_name) {
        this.policy_name = policy_name;
    }

    public String getPolicy_type() {
        return policy_type;
    }

    public void setPolicy_type(String policy_type) {
        this.policy_type = policy_type;
    }

    public int getMax_no_of_years() {
        return max_no_of_years;
    }

    public void setMax_no_of_years(int max_no_of_years) {
        this.max_no_of_years = max_no_of_years;
    }

    public double getPremium_rate() {
        return premium_rate;
    }

    public void setPremium_rate(double premium_rate) {
        this.premium_rate = premium_rate;
    }

    public double getMax_sum_assured() {
        return max_sum_assured;
    }

    public void setMax_sum_assured(double max_sum_assured) {
        this.max_sum_assured = max_sum_assured;
    }

    public List<Customer> getCustomers() {
        return customers;
    }

    public void setCustomers(List<Customer> customers) {
        this.customers = customers;
    }
    
    public void add(Customer c){
        if(customers == null){
            customers = new ArrayList<>();
        }

        customers.add(c);
    }

    @Override
    public String toString() {
        return "Policy{" +
                "scheme_number=" + scheme_number +
                ", policy_name='" + policy_name + '\'' +
                ", policy_type='" + policy_type + '\'' +
                ", max_no_of_years=" + max_no_of_years +
                ", premium_rate=" + premium_rate +
                ", max_sum_assured=" + max_sum_assured +
                ", customers=" + customers +
                '}';
    }
}

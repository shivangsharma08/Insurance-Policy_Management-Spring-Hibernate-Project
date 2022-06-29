package com.ncs.entities;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "policy")
public class Policy {
    
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name = "scheme_number")
    private int scheme_number;

    @NotNull(message = "name is required")
    @Size(min = 6, message = "Policy name must contain atleast 6 charaters")
    @Column(name = "policy_name")
    private String policy_name;
    
    @NotNull(message = "policy_type is require")
    @Column(name = "policy_type")
    private String policy_type;

    @NotNull(message = "max years is required")
    @Min(value = 1, message = "Value must be greater than 0")
    @Column(name = "max_no_of_years")
    private int max_no_of_years;

    @NotNull(message = "premium rate is required")
    @Min(value = 1, message = "Value must be greater than 0")
    @Column(name = "premium_rate")
    private double premium_rate;

    @NotNull(message = "max sum assured is required")
    @Min(value = 1, message = "Value must be greater than 0")
    @Column(name = "max_sum_assured")
    private double max_sum_assured;
    
    
    public Policy() {
    }

    public Policy(int scheme_number, String policy_name, String policy_type, int max_no_of_years, double premium_rate, double max_sum_assured) {
        this.scheme_number = scheme_number;
        this.policy_name = policy_name;
        this.policy_type = policy_type;
        this.max_no_of_years = max_no_of_years;
        this.premium_rate = premium_rate;
        this.max_sum_assured = max_sum_assured;
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


    
}

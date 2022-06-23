package com.ncs.entities;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "customer")
public class Customer {
    @Id
    @GeneratedValue(strategy=GenerationType.SEQUENCE, generator = "id_Sequence")
    @Column(name = "customer_id")
    private int customer_id;
    @Column(name = "customer_name")
    private String customer_name;
    @Column(name = "customer_age")
    private String customer_age;
    @Column(name = "customer_gender")
    private String customer_gender;
    @Column(name = "customer_address")
    private String customer_address;
    @Column(name = "customer_phoneno")
    private String customer_phoneno;
    @Column(name = "username")
    private String username;
    @Column(name = "password")
    private String password;

    @LazyCollection(LazyCollectionOption.FALSE)
    @ManyToMany(cascade={CascadeType.ALL})
    @JoinTable(name = "policy_customer", joinColumns = @JoinColumn(name = "cid"), inverseJoinColumns = @JoinColumn(name = "sid"))
    private List<Policy> policies;
    
    
//    @OneToMany(mappedBy = "custs", cascade = {CascadeType.ALL})       
//    @JoinColumn(name = "customer_id")       
//    List<CustomerPolicy> customerPolicies;
    
    public Customer() {
    }

    public Customer(int customer_id, String customer_name, String customer_age, String customer_gender, String customer_address, String customer_phoneno, String username, String password, List<Policy> policies) {
        this.customer_id = customer_id;
        this.customer_name = customer_name;
        this.customer_age = customer_age;
        this.customer_gender = customer_gender;
        this.customer_address = customer_address;
        this.customer_phoneno = customer_phoneno;
        this.username = username;
        this.password = password;
        this.policies = policies;
        
    }

    public List<Policy> getPolicies() {
        return policies;
    }

    public void setPolicies(List<Policy> policies) {
        this.policies = policies;
    }

    public int getCustomer_id() {
        return customer_id;
    }

    public void setCustomer_id(int customer_id) {
        this.customer_id = customer_id;
    }

    public String getCustomer_name() {
        return customer_name;
    }

    public void setCustomer_name(String customer_name) {
        this.customer_name = customer_name;
    }

    public String getCustomer_age() {
        return customer_age;
    }

    public void setCustomer_age(String customer_age) {
        this.customer_age = customer_age;
    }

    public String getCustomer_gender() {
        return customer_gender;
    }

    public void setCustomer_gender(String customer_gender) {
        this.customer_gender = customer_gender;
    }

    public String getCustomer_address() {
        return customer_address;
    }

    public void setCustomer_address(String customer_address) {
        this.customer_address = customer_address;
    }

    public String getCustomer_phoneno() {
        return customer_phoneno;
    }

    public void setCustomer_phoneno(String customer_phoneno) {
        this.customer_phoneno = customer_phoneno;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

   
    
    public void add(Policy policy){
        if(policies == null){
            policies = new ArrayList<>();
        }
        policies.add(policy);
    }

    @Override
    public String toString() {
        return "Customer{" +
                "customer_id=" + customer_id +
                ", customer_name='" + customer_name + '\'' +
                ", customer_age='" + customer_age + '\'' +
                ", customer_gender='" + customer_gender + '\'' +
                ", customer_address='" + customer_address + '\'' +
                ", customer_phoneno='" + customer_phoneno + '\'' +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", policies=" + policies +
                '}';
    }
}

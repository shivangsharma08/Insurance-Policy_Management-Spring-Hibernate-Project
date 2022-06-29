package com.ncs.entities;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

import javax.persistence.*;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "customer")
public class Customer {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name = "customer_id")
    private int customer_id;
    
    @NotNull(message = "name is required")
    @Size(min = 3, message = "Minimum 3 charaters required")
    @Column(name = "customer_name")
    private String customer_name;

    @NotNull(message = "age is required")
    @Min(value = 18)
    @Column(name = "customer_age")
    private String customer_age;

    @NotNull(message = "gender is required")
    @Column(name = "customer_gender")
    private String customer_gender;

    @NotNull(message = "address is required")
    @Size(min = 5, message = "Address must contain atleast 5 characters")
    @Column(name = "customer_address")
    private String customer_address;

    @NotNull(message = "phone no is required")
    @Size(min=10,max=10, message = "Phone number must be 10 digit")
    @Column(name = "customer_phoneno")
    private String customer_phoneno;

    @NotNull(message = "username is required")
    @Size(min = 4, message = "Username must contain atleast 4 characters")
    @Column(name = "username")
    private String username;

    @NotNull(message = "password is required")
    @Size(min = 6, max = 12, message = "Password must contain 6-12 characters")
    @Column(name = "password")
    private String password;
    
    

    @LazyCollection(LazyCollectionOption.FALSE)
    @ManyToMany(cascade={CascadeType.ALL})
    @JoinColumn(name = "cust_id")
    @JoinTable(name = "customerpolicy_customer", joinColumns = @JoinColumn(name = "cust_id"), inverseJoinColumns = @JoinColumn(name = "cpid"))
    List<CustomerPolicy> customerPolicies;
    
    public Customer() {
    }

    public Customer(int customer_id, String customer_name, String customer_age, String customer_gender, String customer_address, String customer_phoneno, String username, String password,List<CustomerPolicy> customerPolicies) {
        this.customer_id = customer_id;
        this.customer_name = customer_name;
        this.customer_age = customer_age;
        this.customer_gender = customer_gender;
        this.customer_address = customer_address;
        this.customer_phoneno = customer_phoneno;
        this.username = username;
        this.password = password;
        this.customerPolicies = customerPolicies;
    }

    public List<CustomerPolicy> getCustomerPolicies() {
        return customerPolicies;
    }

    public void setCustomerPolicies(List<CustomerPolicy> customerPolicies) {
        this.customerPolicies = customerPolicies;
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
    
    
    // ADDING THE POLICY TAKEN BY CUSTOMER IN LIST
    public void addCustomerPolicy(CustomerPolicy cp){
        if(customerPolicies == null){
            customerPolicies = new ArrayList<>();
        }
        customerPolicies.add(cp);
    }

   
}

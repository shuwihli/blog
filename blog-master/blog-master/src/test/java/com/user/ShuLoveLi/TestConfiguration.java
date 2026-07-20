package com.user.ShuLoveLi;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class TestConfiguration {
    @Bean
    public TestCustomer getCustomer(){
        TestCustomerLow testCustomerLow = new TestCustomerLow();
        String customerType = testCustomerLow.getCustomerType();
        System.out.println(customerType);
        return testCustomerLow;
    }
}

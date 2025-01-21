package com.user.ShuLoveLi;

import org.springframework.stereotype.Component;

@Component
public class TestCustomerLow implements TestCustomer{
    public String cType = "低级用户";
    @Override
    public String getCustomerType(){
        return cType;
    }
}

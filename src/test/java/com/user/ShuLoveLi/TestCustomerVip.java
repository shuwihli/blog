package com.user.ShuLoveLi;

import org.springframework.stereotype.Component;

@Component
public class TestCustomerVip implements TestCustomer{
    public String cType = "VIP用户";
    @Override
    public String getCustomerType(){
        return cType;
    }
}

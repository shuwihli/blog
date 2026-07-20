package com.user.ShuLoveLi;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Component;
@SpringBootTest
@Component
public class mydate {
    @Autowired
    ApplicationContext applicationContext;
    @Autowired
    private final dateFun date;
    mydate(@Qualifier("dateFun")dateFun d) {
        this.date = d;
    }
    @Test
    public void dateTest(){
        System.out.println(date.getDate());
    }
}

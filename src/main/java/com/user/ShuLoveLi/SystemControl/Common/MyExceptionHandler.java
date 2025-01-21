package com.user.ShuLoveLi.SystemControl.Common;

import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
@ControllerAdvice
public class MyExceptionHandler {
    @ExceptionHandler(value = UsernameNotFoundException.class)
    @ResponseBody
    public ResResult exceptionHandler(UsernameNotFoundException e){
        return ResResult.error(ErrorEnum.NO_USER,e);
    }
    @ExceptionHandler(value = BadCredentialsException.class)
    @ResponseBody
    public ResResult exceptionHandler(BadCredentialsException e){
        return ResResult.error(ErrorEnum.NO_USER,e);
    }
}
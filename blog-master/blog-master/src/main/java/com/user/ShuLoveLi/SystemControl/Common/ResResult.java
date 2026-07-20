package com.user.ShuLoveLi.SystemControl.Common;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.sun.net.httpserver.Authenticator;
import io.swagger.models.auth.In;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import java.util.Optional;

/**
 * 自定义响应类
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
public class ResResult {
    public Optional<Integer> code;
    public Optional<String> mes;
    public Object data;
    public Integer errno;
    public ResResult(){}
    public ResResult(Integer code, String mes, Object data) { // 成功
        this.code = Optional.ofNullable(code);
        this.mes = Optional.ofNullable(mes);
        this.data = data;
    }
    public ResResult(Integer errno, Object data) { // 失败
        this.errno = errno;
        this.data = data;
    }
    static public ResResult success(Object data) {
        return new ResResult(200,"请求成功",data);
    }
    static public ResResult error(ErrorEnum errorEnum,Object e){
        return new ResResult(errorEnum.getErrorCode(),errorEnum.getErrorMsg(),Optional.ofNullable(e));
    }
    static public ResResult imageSuccess(Object data){
        return new ResResult(0,data);
    }


    @Override
    public String toString() {
        return "ResResult{" +
                "code=" + code +
                ", mes='" + mes + '\'' +
                ", data=" + data +
                ", errno=" + errno +
                '}';
    }
}

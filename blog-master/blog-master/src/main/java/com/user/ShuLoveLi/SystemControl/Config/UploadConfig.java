package com.user.ShuLoveLi.SystemControl.Config;
import lombok.Data;

/**文件上传封装类*/
@Data
//@Component
public class UploadConfig {
    private String url;
    private String fileName;
    public UploadConfig(String url,String fileName){
//        this.url="http://cn-hk-bgp-4.ofalias.net/"+url;
        this.url="http://127.0.0.1:9090/"+url;
        this.fileName=fileName;
    }
}

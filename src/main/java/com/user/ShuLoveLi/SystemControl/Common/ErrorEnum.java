package com.user.ShuLoveLi.SystemControl.Common;

public enum ErrorEnum {
    /** 错误码 */
        // 数据操作错误定义
        SUCCESS(200, "nice"),
        NO_PERMISSION(403,"你没得权限"),
        NO_USER(401,"用户名或密码错误"),
        NOT_FOUND(404, "未找到该资源!"),
        HAS_USER(401, "用户名已被占用!"),

        INTERNAL_SERVER_ERROR(500, "服务器跑路了"),
        NO_IMAGE_ERROR(404,"未找到媒体资源");
    private final Integer errorCode;
        /** 错误信息 */
        private final String errorMsg;
        ErrorEnum(Integer errorCode, String errorMsg) {
            this.errorCode = errorCode;
            this.errorMsg = errorMsg;
        }

        public Integer getErrorCode() {
            return errorCode;
        }

        public String getErrorMsg() {
            return errorMsg;
        }
}

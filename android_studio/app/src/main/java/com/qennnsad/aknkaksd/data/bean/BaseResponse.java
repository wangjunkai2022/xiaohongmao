package com.qennnsad.aknkaksd.data.bean;

/* loaded from: classes3.dex */
public class BaseResponse<DataType> {
    public static final int RESULT_CODE_ALERTMESSAGE = 418;
    public static final int RESULT_CODE_OPENURL = 302;
    public static final int RESULT_CODE_OPERATION_TOO_FREQUENT = 429;
    public static final int RESULT_CODE_SUCCESS = 0;
    public static final int RESULT_CODE_TOKEN_EXPIRED = 401;
    private int code;
    private DataType data;
    private String msg;
    private String warn;

    public int getCode() {
        return this.code;
    }

    public DataType getData() {
        return this.data;
    }

    public String getMsg() {
        return this.msg;
    }

    public String getWarn() {
        return this.warn;
    }

    public boolean isOk() {
        return this.code == 0 && ("ok".equals(this.msg) || "操作成功".equals(this.msg));
    }

    public void setCode(int i4) {
        this.code = i4;
    }

    public void setData(DataType datatype) {
        this.data = datatype;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setWarn(String str) {
        this.warn = str;
    }

    public String toString() {
        return "BaseResponse{code=" + this.code + ", msg='" + this.msg + "', data=" + this.data + ", warn='" + this.warn + "'}";
    }
}

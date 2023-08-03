package com.alipay.android.phone.mrpc.core;

/* loaded from: classes.dex */
public class RpcException extends RuntimeException {

    /* renamed from: d  reason: collision with root package name */
    private static final long f6598d = -2875437994101380406L;

    /* renamed from: a  reason: collision with root package name */
    private String f6599a;

    /* renamed from: b  reason: collision with root package name */
    private int f6600b;

    /* renamed from: c  reason: collision with root package name */
    private String f6601c;

    public RpcException(Integer num, String str) {
        super(a(num, str));
        this.f6600b = num.intValue();
        this.f6601c = str;
    }

    public RpcException(Integer num, String str, Throwable th) {
        super(a(num, str), th);
        this.f6600b = num.intValue();
        this.f6601c = str;
    }

    public RpcException(Integer num, Throwable th) {
        super(th);
        this.f6600b = num.intValue();
    }

    public RpcException(String str) {
        super(str);
        this.f6600b = 0;
        this.f6601c = str;
    }

    private static String a(Integer num, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("RPCException: ");
        if (num != null) {
            sb.append("[");
            sb.append(num);
            sb.append("]");
        }
        sb.append(" : ");
        if (str != null) {
            sb.append(str);
        }
        return sb.toString();
    }

    public int getCode() {
        return this.f6600b;
    }

    public String getMsg() {
        return this.f6601c;
    }

    public String getOperationType() {
        return this.f6599a;
    }

    public void setOperationType(String str) {
        this.f6599a = str;
    }
}

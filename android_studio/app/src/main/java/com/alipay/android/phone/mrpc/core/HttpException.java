package com.alipay.android.phone.mrpc.core;

/* loaded from: classes.dex */
public class HttpException extends Exception {
    public static final int NETWORK_AUTH_ERROR = 8;
    public static final int NETWORK_CONNECTION_EXCEPTION = 3;
    public static final int NETWORK_DNS_ERROR = 9;
    public static final int NETWORK_IO_EXCEPTION = 6;
    public static final int NETWORK_SCHEDULE_ERROR = 7;
    public static final int NETWORK_SERVER_EXCEPTION = 5;
    public static final int NETWORK_SOCKET_EXCEPTION = 4;
    public static final int NETWORK_SSL_EXCEPTION = 2;
    public static final int NETWORK_UNAVAILABLE = 1;
    public static final int NETWORK_UNKNOWN_ERROR = 0;

    /* renamed from: c  reason: collision with root package name */
    private static final long f6593c = -6320569206365033676L;

    /* renamed from: a  reason: collision with root package name */
    private int f6594a;

    /* renamed from: b  reason: collision with root package name */
    private String f6595b;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public HttpException(java.lang.Integer r3, java.lang.String r4) {
        /*
            r2 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Http Transport error"
            r0.append(r1)
            if (r3 == 0) goto L19
            java.lang.String r1 = "["
            r0.append(r1)
            r0.append(r3)
            java.lang.String r1 = "]"
            r0.append(r1)
        L19:
            java.lang.String r1 = " : "
            r0.append(r1)
            if (r4 == 0) goto L23
            r0.append(r4)
        L23:
            java.lang.String r0 = r0.toString()
            r2.<init>(r0)
            int r3 = r3.intValue()
            r2.f6594a = r3
            r2.f6595b = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.android.phone.mrpc.core.HttpException.<init>(java.lang.Integer, java.lang.String):void");
    }

    public HttpException(String str) {
        super(str);
        this.f6594a = 0;
        this.f6595b = str;
    }

    public int getCode() {
        return this.f6594a;
    }

    public String getMsg() {
        return this.f6595b;
    }
}

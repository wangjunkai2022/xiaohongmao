package com.alipay.sdk.app;

/* loaded from: classes.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public static String f6764a;

    public static String a() {
        i a10 = i.a(i.CANCELED.f6773h);
        return b(a10.f6773h, a10.f6774i, "");
    }

    public static String b(int i4, String str, String str2) {
        return "resultStatus={" + i4 + "};memo={" + str + "};result={" + str2 + com.alipay.sdk.util.i.f6967d;
    }

    private static void c(String str) {
        f6764a = str;
    }

    private static String d() {
        return f6764a;
    }

    private static String e() {
        i a10 = i.a(i.DOUBLE_REQUEST.f6773h);
        return b(a10.f6773h, a10.f6774i, "");
    }

    private static String f() {
        i a10 = i.a(i.PARAMS_ERROR.f6773h);
        return b(a10.f6773h, a10.f6774i, "");
    }
}

package com.alipay.sdk.util;

/* loaded from: classes.dex */
public enum d {
    WIFI(0, "WIFI"),
    NETWORK_TYPE_1(1, "unicom2G"),
    NETWORK_TYPE_2(2, "mobile2G"),
    NETWORK_TYPE_4(4, "telecom2G"),
    NETWORK_TYPE_5(5, "telecom3G"),
    NETWORK_TYPE_6(6, "telecom3G"),
    NETWORK_TYPE_12(12, "telecom3G"),
    NETWORK_TYPE_8(8, "unicom3G"),
    NETWORK_TYPE_3(3, "unicom3G"),
    NETWORK_TYPE_13(13, "LTE"),
    NETWORK_TYPE_11(11, "IDEN"),
    NETWORK_TYPE_9(9, "HSUPA"),
    NETWORK_TYPE_10(10, "HSPA"),
    NETWORK_TYPE_15(15, "HSPAP"),
    NONE(-1, "none");
    

    /* renamed from: p  reason: collision with root package name */
    public String f6950p;

    /* renamed from: q  reason: collision with root package name */
    private int f6951q;

    d(int i4, String str) {
        this.f6951q = i4;
        this.f6950p = str;
    }

    private int a() {
        return this.f6951q;
    }

    private String b() {
        return this.f6950p;
    }

    public static d a(int i4) {
        d[] values;
        for (d dVar : values()) {
            if (dVar.f6951q == i4) {
                return dVar;
            }
        }
        return NONE;
    }
}

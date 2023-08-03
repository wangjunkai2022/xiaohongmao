package com.airbnb.lottie.model;

/* compiled from: Marker.java */
/* loaded from: classes.dex */
public class g {

    /* renamed from: d  reason: collision with root package name */
    private static String f4540d = "\r";

    /* renamed from: a  reason: collision with root package name */
    private final String f4541a;

    /* renamed from: b  reason: collision with root package name */
    public final float f4542b;

    /* renamed from: c  reason: collision with root package name */
    public final float f4543c;

    public g(String str, float f10, float f11) {
        this.f4541a = str;
        this.f4543c = f11;
        this.f4542b = f10;
    }

    public boolean a(String str) {
        if (this.f4541a.equalsIgnoreCase(str)) {
            return true;
        }
        if (this.f4541a.endsWith(f4540d)) {
            String str2 = this.f4541a;
            if (str2.substring(0, str2.length() - 1).equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }
}

package com.iab.omid.library.giphy.adsession;

/* loaded from: classes2.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private final String f39346a;

    /* renamed from: b  reason: collision with root package name */
    private final String f39347b;

    private e(String str, String str2) {
        this.f39346a = str;
        this.f39347b = str2;
    }

    public static e a(String str, String str2) {
        com.iab.omid.library.giphy.d.e.f(str, "Name is null or empty");
        com.iab.omid.library.giphy.d.e.f(str2, "Version is null or empty");
        return new e(str, str2);
    }

    public String b() {
        return this.f39346a;
    }

    public String c() {
        return this.f39347b;
    }
}

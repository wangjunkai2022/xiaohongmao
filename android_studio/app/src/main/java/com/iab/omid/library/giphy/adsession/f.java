package com.iab.omid.library.giphy.adsession;

import java.net.URL;

/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private final String f39348a;

    /* renamed from: b  reason: collision with root package name */
    private final URL f39349b;

    /* renamed from: c  reason: collision with root package name */
    private final String f39350c;

    private f(String str, URL url, String str2) {
        this.f39348a = str;
        this.f39349b = url;
        this.f39350c = str2;
    }

    public static f a(String str, URL url, String str2) {
        com.iab.omid.library.giphy.d.e.f(str, "VendorKey is null or empty");
        com.iab.omid.library.giphy.d.e.d(url, "ResourceURL is null");
        com.iab.omid.library.giphy.d.e.f(str2, "VerificationParameters is null or empty");
        return new f(str, url, str2);
    }

    public static f b(String str, URL url) {
        com.iab.omid.library.giphy.d.e.f(str, "VendorKey is null or empty");
        com.iab.omid.library.giphy.d.e.d(url, "ResourceURL is null");
        return new f(str, url, null);
    }

    public static f c(URL url) {
        com.iab.omid.library.giphy.d.e.d(url, "ResourceURL is null");
        return new f(null, url, null);
    }

    public URL d() {
        return this.f39349b;
    }

    public String e() {
        return this.f39348a;
    }

    public String f() {
        return this.f39350c;
    }
}

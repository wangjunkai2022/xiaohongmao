package com.iab.omid.library.giphy.adsession;

import android.webkit.WebView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private final e f39340a;

    /* renamed from: b  reason: collision with root package name */
    private final WebView f39341b;

    /* renamed from: c  reason: collision with root package name */
    private final List<f> f39342c;

    /* renamed from: d  reason: collision with root package name */
    private final String f39343d;

    /* renamed from: e  reason: collision with root package name */
    private final String f39344e;

    /* renamed from: f  reason: collision with root package name */
    private final AdSessionContextType f39345f;

    private d(e eVar, WebView webView, String str, List<f> list, String str2) {
        AdSessionContextType adSessionContextType;
        ArrayList arrayList = new ArrayList();
        this.f39342c = arrayList;
        this.f39340a = eVar;
        this.f39341b = webView;
        this.f39343d = str;
        if (list != null) {
            arrayList.addAll(list);
            adSessionContextType = AdSessionContextType.NATIVE;
        } else {
            adSessionContextType = AdSessionContextType.HTML;
        }
        this.f39345f = adSessionContextType;
        this.f39344e = str2;
    }

    public static d a(e eVar, WebView webView, String str) {
        com.iab.omid.library.giphy.d.e.d(eVar, "Partner is null");
        com.iab.omid.library.giphy.d.e.d(webView, "WebView is null");
        if (str != null) {
            com.iab.omid.library.giphy.d.e.e(str, 256, "CustomReferenceData is greater than 256 characters");
        }
        return new d(eVar, webView, null, null, str);
    }

    public static d b(e eVar, String str, List<f> list, String str2) {
        com.iab.omid.library.giphy.d.e.d(eVar, "Partner is null");
        com.iab.omid.library.giphy.d.e.d(str, "OM SDK JS script content is null");
        com.iab.omid.library.giphy.d.e.d(list, "VerificationScriptResources is null");
        if (str2 != null) {
            com.iab.omid.library.giphy.d.e.e(str2, 256, "CustomReferenceData is greater than 256 characters");
        }
        return new d(eVar, null, str, list, str2);
    }

    public AdSessionContextType c() {
        return this.f39345f;
    }

    public String d() {
        return this.f39344e;
    }

    public String e() {
        return this.f39343d;
    }

    public e f() {
        return this.f39340a;
    }

    public List<f> g() {
        return Collections.unmodifiableList(this.f39342c);
    }

    public WebView h() {
        return this.f39341b;
    }
}

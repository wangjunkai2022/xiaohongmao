package com.iab.omid.library.giphy.publisher;

import android.webkit.WebView;
import com.iab.omid.library.giphy.adsession.ErrorType;
import com.iab.omid.library.giphy.adsession.f;
import com.iab.omid.library.giphy.adsession.g;
import com.iab.omid.library.giphy.b.d;
import io.sentry.m2;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private a4.b f39410a;

    /* renamed from: b  reason: collision with root package name */
    private com.iab.omid.library.giphy.adsession.a f39411b;

    /* renamed from: c  reason: collision with root package name */
    private com.iab.omid.library.giphy.adsession.video.b f39412c;

    /* renamed from: d  reason: collision with root package name */
    private EnumC0298a f39413d;

    /* renamed from: e  reason: collision with root package name */
    private double f39414e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.iab.omid.library.giphy.publisher.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public enum EnumC0298a {
        AD_STATE_IDLE,
        AD_STATE_VISIBLE,
        AD_STATE_HIDDEN
    }

    public a() {
        u();
        this.f39410a = new a4.b(null);
    }

    public void a() {
    }

    public void b(float f10) {
        d.a().c(t(), f10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(WebView webView) {
        this.f39410a = new a4.b(webView);
    }

    public void d(com.iab.omid.library.giphy.adsession.a aVar) {
        this.f39411b = aVar;
    }

    public void e(com.iab.omid.library.giphy.adsession.c cVar) {
        d.a().i(t(), cVar.e());
    }

    public void f(ErrorType errorType, String str) {
        d.a().d(t(), errorType, str);
    }

    public void g(g gVar, com.iab.omid.library.giphy.adsession.d dVar) {
        String e4 = gVar.e();
        JSONObject jSONObject = new JSONObject();
        com.iab.omid.library.giphy.d.b.f(jSONObject, "environment", io.sentry.protocol.a.f83616j);
        com.iab.omid.library.giphy.d.b.f(jSONObject, "adSessionType", dVar.c());
        com.iab.omid.library.giphy.d.b.f(jSONObject, "deviceInfo", com.iab.omid.library.giphy.d.a.d());
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        com.iab.omid.library.giphy.d.b.f(jSONObject, "supports", jSONArray);
        JSONObject jSONObject2 = new JSONObject();
        com.iab.omid.library.giphy.d.b.f(jSONObject2, "partnerName", dVar.f().b());
        com.iab.omid.library.giphy.d.b.f(jSONObject2, "partnerVersion", dVar.f().c());
        com.iab.omid.library.giphy.d.b.f(jSONObject, "omidNativeInfo", jSONObject2);
        JSONObject jSONObject3 = new JSONObject();
        com.iab.omid.library.giphy.d.b.f(jSONObject3, "libraryVersion", "1.2.13-Giphy");
        com.iab.omid.library.giphy.d.b.f(jSONObject3, "appId", com.iab.omid.library.giphy.b.c.a().c().getApplicationContext().getPackageName());
        com.iab.omid.library.giphy.d.b.f(jSONObject, io.sentry.protocol.a.f83616j, jSONObject3);
        if (dVar.d() != null) {
            com.iab.omid.library.giphy.d.b.f(jSONObject, "customReferenceData", dVar.d());
        }
        JSONObject jSONObject4 = new JSONObject();
        for (f fVar : dVar.g()) {
            com.iab.omid.library.giphy.d.b.f(jSONObject4, fVar.e(), fVar.f());
        }
        d.a().f(t(), e4, jSONObject, jSONObject4);
    }

    public void h(com.iab.omid.library.giphy.adsession.video.b bVar) {
        this.f39412c = bVar;
    }

    public void i(String str) {
        d.a().e(t(), str, null);
    }

    public void j(String str, double d4) {
        if (d4 > this.f39414e) {
            this.f39413d = EnumC0298a.AD_STATE_VISIBLE;
            d.a().n(t(), str);
        }
    }

    public void k(String str, JSONObject jSONObject) {
        d.a().e(t(), str, jSONObject);
    }

    public void l(boolean z9) {
        if (q()) {
            d.a().o(t(), z9 ? "foregrounded" : m2.F);
        }
    }

    public void m() {
        this.f39410a.clear();
    }

    public void n(String str, double d4) {
        if (d4 > this.f39414e) {
            EnumC0298a enumC0298a = this.f39413d;
            EnumC0298a enumC0298a2 = EnumC0298a.AD_STATE_HIDDEN;
            if (enumC0298a != enumC0298a2) {
                this.f39413d = enumC0298a2;
                d.a().n(t(), str);
            }
        }
    }

    public com.iab.omid.library.giphy.adsession.a o() {
        return this.f39411b;
    }

    public com.iab.omid.library.giphy.adsession.video.b p() {
        return this.f39412c;
    }

    public boolean q() {
        return this.f39410a.get() != null;
    }

    public void r() {
        d.a().b(t());
    }

    public void s() {
        d.a().l(t());
    }

    public WebView t() {
        return this.f39410a.get();
    }

    public void u() {
        this.f39414e = com.iab.omid.library.giphy.d.d.a();
        this.f39413d = EnumC0298a.AD_STATE_IDLE;
    }
}

package com.iab.omid.library.giphy.adsession.video;

import com.google.android.exoplayer2.text.ttml.d;
import com.iab.omid.library.giphy.adsession.g;
import com.iab.omid.library.giphy.d.e;
import io.sentry.protocol.t;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final g f39371a;

    private b(g gVar) {
        this.f39371a = gVar;
    }

    private void e(float f10) {
        if (f10 <= 0.0f) {
            throw new IllegalArgumentException("Invalid Video duration");
        }
    }

    private void f(float f10) {
        if (f10 < 0.0f || f10 > 1.0f) {
            throw new IllegalArgumentException("Invalid Video volume");
        }
    }

    public static b g(com.iab.omid.library.giphy.adsession.b bVar) {
        g gVar = (g) bVar;
        e.d(bVar, "AdSession is null");
        e.l(gVar);
        e.c(gVar);
        e.g(gVar);
        e.j(gVar);
        b bVar2 = new b(gVar);
        gVar.f().h(bVar2);
        return bVar2;
    }

    public void a(InteractionType interactionType) {
        e.d(interactionType, "InteractionType is null");
        e.h(this.f39371a);
        JSONObject jSONObject = new JSONObject();
        com.iab.omid.library.giphy.d.b.f(jSONObject, "interactionType", interactionType);
        this.f39371a.f().k("adUserInteraction", jSONObject);
    }

    public void b() {
        e.h(this.f39371a);
        this.f39371a.f().i("bufferFinish");
    }

    public void c() {
        e.h(this.f39371a);
        this.f39371a.f().i("bufferStart");
    }

    public void d() {
        e.h(this.f39371a);
        this.f39371a.f().i("complete");
    }

    public void h() {
        e.h(this.f39371a);
        this.f39371a.f().i("firstQuartile");
    }

    public void i(a aVar) {
        e.d(aVar, "VastProperties is null");
        e.g(this.f39371a);
        this.f39371a.f().k("loaded", aVar.c());
    }

    public void j() {
        e.h(this.f39371a);
        this.f39371a.f().i("midpoint");
    }

    public void k() {
        e.h(this.f39371a);
        this.f39371a.f().i("pause");
    }

    public void l(PlayerState playerState) {
        e.d(playerState, "PlayerState is null");
        e.h(this.f39371a);
        JSONObject jSONObject = new JSONObject();
        com.iab.omid.library.giphy.d.b.f(jSONObject, t.b.f83859d, playerState);
        this.f39371a.f().k("playerStateChange", jSONObject);
    }

    public void m() {
        e.h(this.f39371a);
        this.f39371a.f().i("resume");
    }

    public void n() {
        e.h(this.f39371a);
        this.f39371a.f().i("skipped");
    }

    public void o(float f10, float f11) {
        e(f10);
        f(f11);
        e.h(this.f39371a);
        JSONObject jSONObject = new JSONObject();
        com.iab.omid.library.giphy.d.b.f(jSONObject, "duration", Float.valueOf(f10));
        com.iab.omid.library.giphy.d.b.f(jSONObject, "videoPlayerVolume", Float.valueOf(f11));
        com.iab.omid.library.giphy.d.b.f(jSONObject, "deviceVolume", Float.valueOf(com.iab.omid.library.giphy.b.e.a().e()));
        this.f39371a.f().k(d.f25725o0, jSONObject);
    }

    public void p() {
        e.h(this.f39371a);
        this.f39371a.f().i("thirdQuartile");
    }

    public void q(float f10) {
        f(f10);
        e.h(this.f39371a);
        JSONObject jSONObject = new JSONObject();
        com.iab.omid.library.giphy.d.b.f(jSONObject, "videoPlayerVolume", Float.valueOf(f10));
        com.iab.omid.library.giphy.d.b.f(jSONObject, "deviceVolume", Float.valueOf(com.iab.omid.library.giphy.b.e.a().e()));
        this.f39371a.f().k("volumeChange", jSONObject);
    }
}

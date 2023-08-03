package com.iab.omid.library.giphy.adsession;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final g f39336a;

    private a(g gVar) {
        this.f39336a = gVar;
    }

    public static a a(b bVar) {
        g gVar = (g) bVar;
        com.iab.omid.library.giphy.d.e.d(bVar, "AdSession is null");
        com.iab.omid.library.giphy.d.e.i(gVar);
        com.iab.omid.library.giphy.d.e.g(gVar);
        a aVar = new a(gVar);
        gVar.f().d(aVar);
        return aVar;
    }

    public void b() {
        com.iab.omid.library.giphy.d.e.g(this.f39336a);
        com.iab.omid.library.giphy.d.e.k(this.f39336a);
        if (!this.f39336a.r()) {
            try {
                this.f39336a.j();
            } catch (Exception unused) {
            }
        }
        if (this.f39336a.r()) {
            this.f39336a.m();
        }
    }
}

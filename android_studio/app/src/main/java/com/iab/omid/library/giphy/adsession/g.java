package com.iab.omid.library.giphy.adsession;

import android.view.View;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.UUID;

/* loaded from: classes2.dex */
public class g extends b {

    /* renamed from: a  reason: collision with root package name */
    private final d f39351a;

    /* renamed from: b  reason: collision with root package name */
    private final c f39352b;

    /* renamed from: d  reason: collision with root package name */
    private a4.a f39354d;

    /* renamed from: e  reason: collision with root package name */
    private com.iab.omid.library.giphy.publisher.a f39355e;

    /* renamed from: i  reason: collision with root package name */
    private boolean f39359i;

    /* renamed from: c  reason: collision with root package name */
    private final List<a4.a> f39353c = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    private boolean f39356f = false;

    /* renamed from: g  reason: collision with root package name */
    private boolean f39357g = false;

    /* renamed from: h  reason: collision with root package name */
    private String f39358h = UUID.randomUUID().toString();

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(c cVar, d dVar) {
        this.f39352b = cVar;
        this.f39351a = dVar;
        p(null);
        this.f39355e = dVar.c() == AdSessionContextType.HTML ? new com.iab.omid.library.giphy.publisher.b(dVar.h()) : new com.iab.omid.library.giphy.publisher.c(dVar.g(), dVar.e());
        this.f39355e.a();
        com.iab.omid.library.giphy.b.a.a().b(this);
        this.f39355e.e(cVar);
    }

    private a4.a k(View view) {
        for (a4.a aVar : this.f39353c) {
            if (aVar.get() == view) {
                return aVar;
            }
        }
        return null;
    }

    private void n(View view) {
        if (view == null) {
            throw new IllegalArgumentException("FriendlyObstruction is null");
        }
    }

    private void p(View view) {
        this.f39354d = new a4.a(view);
    }

    private void q(View view) {
        Collection<g> c10 = com.iab.omid.library.giphy.b.a.a().c();
        if (c10 == null || c10.size() <= 0) {
            return;
        }
        for (g gVar : c10) {
            if (gVar != this && gVar.o() == view) {
                gVar.f39354d.clear();
            }
        }
    }

    private void w() {
        if (this.f39359i) {
            throw new IllegalStateException("Impression event can only be sent once");
        }
    }

    @Override // com.iab.omid.library.giphy.adsession.b
    public void a(View view) {
        if (this.f39357g) {
            return;
        }
        n(view);
        if (k(view) == null) {
            this.f39353c.add(new a4.a(view));
        }
    }

    @Override // com.iab.omid.library.giphy.adsession.b
    public void c(ErrorType errorType, String str) {
        if (this.f39357g) {
            throw new IllegalStateException("AdSession is finished");
        }
        com.iab.omid.library.giphy.d.e.d(errorType, "Error type is null");
        com.iab.omid.library.giphy.d.e.f(str, "Message is null");
        f().f(errorType, str);
    }

    @Override // com.iab.omid.library.giphy.adsession.b
    public void d() {
        if (this.f39357g) {
            return;
        }
        this.f39354d.clear();
        h();
        this.f39357g = true;
        f().r();
        com.iab.omid.library.giphy.b.a.a().f(this);
        f().m();
        this.f39355e = null;
    }

    @Override // com.iab.omid.library.giphy.adsession.b
    public String e() {
        return this.f39358h;
    }

    @Override // com.iab.omid.library.giphy.adsession.b
    public com.iab.omid.library.giphy.publisher.a f() {
        return this.f39355e;
    }

    @Override // com.iab.omid.library.giphy.adsession.b
    public void g(View view) {
        if (this.f39357g) {
            return;
        }
        com.iab.omid.library.giphy.d.e.d(view, "AdView is null");
        if (o() == view) {
            return;
        }
        p(view);
        f().u();
        q(view);
    }

    @Override // com.iab.omid.library.giphy.adsession.b
    public void h() {
        if (this.f39357g) {
            return;
        }
        this.f39353c.clear();
    }

    @Override // com.iab.omid.library.giphy.adsession.b
    public void i(View view) {
        if (this.f39357g) {
            return;
        }
        n(view);
        a4.a k10 = k(view);
        if (k10 != null) {
            this.f39353c.remove(k10);
        }
    }

    @Override // com.iab.omid.library.giphy.adsession.b
    public void j() {
        if (this.f39356f) {
            return;
        }
        this.f39356f = true;
        com.iab.omid.library.giphy.b.a.a().d(this);
        this.f39355e.b(com.iab.omid.library.giphy.b.e.a().e());
        this.f39355e.g(this, this.f39351a);
    }

    public List<a4.a> l() {
        return this.f39353c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m() {
        w();
        f().s();
        this.f39359i = true;
    }

    public View o() {
        return this.f39354d.get();
    }

    public boolean r() {
        return this.f39356f && !this.f39357g;
    }

    public boolean s() {
        return this.f39356f;
    }

    public boolean t() {
        return this.f39357g;
    }

    public boolean u() {
        return this.f39352b.c();
    }

    public boolean v() {
        return this.f39352b.d();
    }
}

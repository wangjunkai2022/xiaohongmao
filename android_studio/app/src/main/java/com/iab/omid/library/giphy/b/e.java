package com.iab.omid.library.giphy.b;

import android.content.Context;
import android.os.Handler;
import com.iab.omid.library.giphy.adsession.g;
import com.iab.omid.library.giphy.b.b;

/* loaded from: classes2.dex */
public class e implements z3.c, b.InterfaceC0296b {

    /* renamed from: f  reason: collision with root package name */
    private static e f39388f;

    /* renamed from: a  reason: collision with root package name */
    private float f39389a = 0.0f;

    /* renamed from: b  reason: collision with root package name */
    private final z3.e f39390b;

    /* renamed from: c  reason: collision with root package name */
    private final z3.b f39391c;

    /* renamed from: d  reason: collision with root package name */
    private z3.d f39392d;

    /* renamed from: e  reason: collision with root package name */
    private a f39393e;

    public e(z3.e eVar, z3.b bVar) {
        this.f39390b = eVar;
        this.f39391c = bVar;
    }

    public static e a() {
        if (f39388f == null) {
            f39388f = new e(new z3.e(), new z3.b());
        }
        return f39388f;
    }

    private a f() {
        if (this.f39393e == null) {
            this.f39393e = a.a();
        }
        return this.f39393e;
    }

    @Override // z3.c
    public void a(float f10) {
        this.f39389a = f10;
        for (g gVar : f().e()) {
            gVar.f().b(f10);
        }
    }

    @Override // com.iab.omid.library.giphy.b.b.InterfaceC0296b
    public void a(boolean z9) {
        if (z9) {
            com.iab.omid.library.giphy.walking.a.p().c();
        } else {
            com.iab.omid.library.giphy.walking.a.p().k();
        }
    }

    public void b(Context context) {
        this.f39392d = this.f39390b.a(new Handler(), context, this.f39391c.a(), this);
    }

    public void c() {
        b.a().c(this);
        b.a().f();
        if (b.a().h()) {
            com.iab.omid.library.giphy.walking.a.p().c();
        }
        this.f39392d.a();
    }

    public void d() {
        com.iab.omid.library.giphy.walking.a.p().h();
        b.a().g();
        this.f39392d.c();
    }

    public float e() {
        return this.f39389a;
    }
}

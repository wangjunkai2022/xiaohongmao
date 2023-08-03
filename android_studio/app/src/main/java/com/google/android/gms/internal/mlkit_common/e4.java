package com.google.android.gms.internal.mlkit_common;

import com.google.firebase.encoders.c;
import io.sentry.protocol.v;
import java.io.IOException;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
final class e4 implements com.google.firebase.encoders.d {

    /* renamed from: a  reason: collision with root package name */
    static final e4 f29585a = new e4();

    /* renamed from: b  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f29586b;

    /* renamed from: c  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f29587c;

    /* renamed from: d  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f29588d;

    /* renamed from: e  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f29589e;

    /* renamed from: f  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f29590f;

    /* renamed from: g  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f29591g;

    /* renamed from: h  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f29592h;

    /* renamed from: i  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f29593i;

    /* renamed from: j  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f29594j;

    static {
        c.b a10 = com.google.firebase.encoders.c.a("name");
        d0 d0Var = new d0();
        d0Var.a(1);
        f29586b = a10.b(d0Var.b()).a();
        c.b a11 = com.google.firebase.encoders.c.a("version");
        d0 d0Var2 = new d0();
        d0Var2.a(2);
        f29587c = a11.b(d0Var2.b()).a();
        c.b a12 = com.google.firebase.encoders.c.a(v.b.f83881a);
        d0 d0Var3 = new d0();
        d0Var3.a(3);
        f29588d = a12.b(d0Var3.b()).a();
        c.b a13 = com.google.firebase.encoders.c.a("uri");
        d0 d0Var4 = new d0();
        d0Var4.a(4);
        f29589e = a13.b(d0Var4.b()).a();
        c.b a14 = com.google.firebase.encoders.c.a("hash");
        d0 d0Var5 = new d0();
        d0Var5.a(5);
        f29590f = a14.b(d0Var5.b()).a();
        c.b a15 = com.google.firebase.encoders.c.a("modelType");
        d0 d0Var6 = new d0();
        d0Var6.a(6);
        f29591g = a15.b(d0Var6.b()).a();
        c.b a16 = com.google.firebase.encoders.c.a(com.qennnsad.aknkaksd.data.repository.f.f47745b);
        d0 d0Var7 = new d0();
        d0Var7.a(7);
        f29592h = a16.b(d0Var7.b()).a();
        c.b a17 = com.google.firebase.encoders.c.a("hasLabelMap");
        d0 d0Var8 = new d0();
        d0Var8.a(8);
        f29593i = a17.b(d0Var8.b()).a();
        c.b a18 = com.google.firebase.encoders.c.a("isManifestModel");
        d0 d0Var9 = new d0();
        d0Var9.a(9);
        f29594j = a18.b(d0Var9.b()).a();
    }

    private e4() {
    }

    @Override // com.google.firebase.encoders.d, com.google.firebase.encoders.b
    public final /* bridge */ /* synthetic */ void a(Object obj, com.google.firebase.encoders.e eVar) throws IOException {
        f8 f8Var = (f8) obj;
        com.google.firebase.encoders.e eVar2 = eVar;
        eVar2.m(f29586b, f8Var.d());
        eVar2.m(f29587c, null);
        eVar2.m(f29588d, f8Var.b());
        eVar2.m(f29589e, null);
        eVar2.m(f29590f, f8Var.c());
        eVar2.m(f29591g, f8Var.a());
        eVar2.m(f29592h, null);
        eVar2.m(f29593i, null);
        eVar2.m(f29594j, null);
    }
}

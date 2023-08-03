package com.google.android.gms.internal.mlkit_common;

import com.google.firebase.encoders.c;
import java.io.IOException;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
final class z5 implements com.google.firebase.encoders.d {

    /* renamed from: a  reason: collision with root package name */
    static final z5 f30227a = new z5();

    /* renamed from: b  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30228b;

    /* renamed from: c  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30229c;

    /* renamed from: d  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30230d;

    /* renamed from: e  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30231e;

    /* renamed from: f  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30232f;

    /* renamed from: g  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30233g;

    /* renamed from: h  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30234h;

    /* renamed from: i  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30235i;

    /* renamed from: j  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30236j;

    /* renamed from: k  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30237k;

    /* renamed from: l  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30238l;

    /* renamed from: m  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30239m;

    /* renamed from: n  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30240n;

    /* renamed from: o  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30241o;

    static {
        c.b a10 = com.google.firebase.encoders.c.a("appId");
        d0 d0Var = new d0();
        d0Var.a(1);
        f30228b = a10.b(d0Var.b()).a();
        c.b a11 = com.google.firebase.encoders.c.a("appVersion");
        d0 d0Var2 = new d0();
        d0Var2.a(2);
        f30229c = a11.b(d0Var2.b()).a();
        c.b a12 = com.google.firebase.encoders.c.a("firebaseProjectId");
        d0 d0Var3 = new d0();
        d0Var3.a(3);
        f30230d = a12.b(d0Var3.b()).a();
        c.b a13 = com.google.firebase.encoders.c.a("mlSdkVersion");
        d0 d0Var4 = new d0();
        d0Var4.a(4);
        f30231e = a13.b(d0Var4.b()).a();
        c.b a14 = com.google.firebase.encoders.c.a("tfliteSchemaVersion");
        d0 d0Var5 = new d0();
        d0Var5.a(5);
        f30232f = a14.b(d0Var5.b()).a();
        c.b a15 = com.google.firebase.encoders.c.a("gcmSenderId");
        d0 d0Var6 = new d0();
        d0Var6.a(6);
        f30233g = a15.b(d0Var6.b()).a();
        c.b a16 = com.google.firebase.encoders.c.a("apiKey");
        d0 d0Var7 = new d0();
        d0Var7.a(7);
        f30234h = a16.b(d0Var7.b()).a();
        c.b a17 = com.google.firebase.encoders.c.a("languages");
        d0 d0Var8 = new d0();
        d0Var8.a(8);
        f30235i = a17.b(d0Var8.b()).a();
        c.b a18 = com.google.firebase.encoders.c.a("mlSdkInstanceId");
        d0 d0Var9 = new d0();
        d0Var9.a(9);
        f30236j = a18.b(d0Var9.b()).a();
        c.b a19 = com.google.firebase.encoders.c.a("isClearcutClient");
        d0 d0Var10 = new d0();
        d0Var10.a(10);
        f30237k = a19.b(d0Var10.b()).a();
        c.b a20 = com.google.firebase.encoders.c.a("isStandaloneMlkit");
        d0 d0Var11 = new d0();
        d0Var11.a(11);
        f30238l = a20.b(d0Var11.b()).a();
        c.b a21 = com.google.firebase.encoders.c.a("isJsonLogging");
        d0 d0Var12 = new d0();
        d0Var12.a(12);
        f30239m = a21.b(d0Var12.b()).a();
        c.b a22 = com.google.firebase.encoders.c.a("buildLevel");
        d0 d0Var13 = new d0();
        d0Var13.a(13);
        f30240n = a22.b(d0Var13.b()).a();
        c.b a23 = com.google.firebase.encoders.c.a("optionalModuleVersion");
        d0 d0Var14 = new d0();
        d0Var14.a(14);
        f30241o = a23.b(d0Var14.b()).a();
    }

    private z5() {
    }

    @Override // com.google.firebase.encoders.d, com.google.firebase.encoders.b
    public final /* bridge */ /* synthetic */ void a(Object obj, com.google.firebase.encoders.e eVar) throws IOException {
        y9 y9Var = (y9) obj;
        com.google.firebase.encoders.e eVar2 = eVar;
        eVar2.m(f30228b, y9Var.g());
        eVar2.m(f30229c, y9Var.h());
        eVar2.m(f30230d, null);
        eVar2.m(f30231e, y9Var.j());
        eVar2.m(f30232f, y9Var.k());
        eVar2.m(f30233g, null);
        eVar2.m(f30234h, null);
        eVar2.m(f30235i, y9Var.a());
        eVar2.m(f30236j, y9Var.i());
        eVar2.m(f30237k, y9Var.b());
        eVar2.m(f30238l, y9Var.d());
        eVar2.m(f30239m, y9Var.c());
        eVar2.m(f30240n, y9Var.e());
        eVar2.m(f30241o, y9Var.f());
    }
}

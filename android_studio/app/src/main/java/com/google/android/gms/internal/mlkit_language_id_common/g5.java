package com.google.android.gms.internal.mlkit_language_id_common;

import com.google.firebase.encoders.c;
import java.io.IOException;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
final class g5 implements com.google.firebase.encoders.d {

    /* renamed from: a  reason: collision with root package name */
    static final g5 f30504a = new g5();

    /* renamed from: b  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30505b;

    /* renamed from: c  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30506c;

    /* renamed from: d  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30507d;

    /* renamed from: e  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30508e;

    /* renamed from: f  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30509f;

    /* renamed from: g  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30510g;

    /* renamed from: h  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30511h;

    /* renamed from: i  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30512i;

    /* renamed from: j  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30513j;

    /* renamed from: k  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30514k;

    /* renamed from: l  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30515l;

    /* renamed from: m  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30516m;

    /* renamed from: n  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30517n;

    /* renamed from: o  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30518o;

    static {
        c.b a10 = com.google.firebase.encoders.c.a("appId");
        j jVar = new j();
        jVar.a(1);
        f30505b = a10.b(jVar.b()).a();
        c.b a11 = com.google.firebase.encoders.c.a("appVersion");
        j jVar2 = new j();
        jVar2.a(2);
        f30506c = a11.b(jVar2.b()).a();
        c.b a12 = com.google.firebase.encoders.c.a("firebaseProjectId");
        j jVar3 = new j();
        jVar3.a(3);
        f30507d = a12.b(jVar3.b()).a();
        c.b a13 = com.google.firebase.encoders.c.a("mlSdkVersion");
        j jVar4 = new j();
        jVar4.a(4);
        f30508e = a13.b(jVar4.b()).a();
        c.b a14 = com.google.firebase.encoders.c.a("tfliteSchemaVersion");
        j jVar5 = new j();
        jVar5.a(5);
        f30509f = a14.b(jVar5.b()).a();
        c.b a15 = com.google.firebase.encoders.c.a("gcmSenderId");
        j jVar6 = new j();
        jVar6.a(6);
        f30510g = a15.b(jVar6.b()).a();
        c.b a16 = com.google.firebase.encoders.c.a("apiKey");
        j jVar7 = new j();
        jVar7.a(7);
        f30511h = a16.b(jVar7.b()).a();
        c.b a17 = com.google.firebase.encoders.c.a("languages");
        j jVar8 = new j();
        jVar8.a(8);
        f30512i = a17.b(jVar8.b()).a();
        c.b a18 = com.google.firebase.encoders.c.a("mlSdkInstanceId");
        j jVar9 = new j();
        jVar9.a(9);
        f30513j = a18.b(jVar9.b()).a();
        c.b a19 = com.google.firebase.encoders.c.a("isClearcutClient");
        j jVar10 = new j();
        jVar10.a(10);
        f30514k = a19.b(jVar10.b()).a();
        c.b a20 = com.google.firebase.encoders.c.a("isStandaloneMlkit");
        j jVar11 = new j();
        jVar11.a(11);
        f30515l = a20.b(jVar11.b()).a();
        c.b a21 = com.google.firebase.encoders.c.a("isJsonLogging");
        j jVar12 = new j();
        jVar12.a(12);
        f30516m = a21.b(jVar12.b()).a();
        c.b a22 = com.google.firebase.encoders.c.a("buildLevel");
        j jVar13 = new j();
        jVar13.a(13);
        f30517n = a22.b(jVar13.b()).a();
        c.b a23 = com.google.firebase.encoders.c.a("optionalModuleVersion");
        j jVar14 = new j();
        jVar14.a(14);
        f30518o = a23.b(jVar14.b()).a();
    }

    private g5() {
    }

    @Override // com.google.firebase.encoders.d, com.google.firebase.encoders.b
    public final /* bridge */ /* synthetic */ void a(Object obj, com.google.firebase.encoders.e eVar) throws IOException {
        e9 e9Var = (e9) obj;
        com.google.firebase.encoders.e eVar2 = eVar;
        eVar2.m(f30505b, e9Var.g());
        eVar2.m(f30506c, e9Var.h());
        eVar2.m(f30507d, null);
        eVar2.m(f30508e, e9Var.j());
        eVar2.m(f30509f, e9Var.k());
        eVar2.m(f30510g, null);
        eVar2.m(f30511h, null);
        eVar2.m(f30512i, e9Var.a());
        eVar2.m(f30513j, e9Var.i());
        eVar2.m(f30514k, e9Var.b());
        eVar2.m(f30515l, e9Var.d());
        eVar2.m(f30516m, e9Var.c());
        eVar2.m(f30517n, e9Var.e());
        eVar2.m(f30518o, e9Var.f());
    }
}

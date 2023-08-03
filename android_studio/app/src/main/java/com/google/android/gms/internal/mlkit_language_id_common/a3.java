package com.google.android.gms.internal.mlkit_language_id_common;

import com.google.firebase.encoders.c;
import java.io.IOException;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
final class a3 implements com.google.firebase.encoders.d {

    /* renamed from: a  reason: collision with root package name */
    static final a3 f30304a = new a3();

    /* renamed from: b  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30305b;

    /* renamed from: c  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30306c;

    /* renamed from: d  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30307d;

    /* renamed from: e  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30308e;

    /* renamed from: f  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30309f;

    /* renamed from: g  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30310g;

    /* renamed from: h  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30311h;

    /* renamed from: i  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30312i;

    /* renamed from: j  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30313j;

    /* renamed from: k  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30314k;

    static {
        c.b a10 = com.google.firebase.encoders.c.a("durationMs");
        j jVar = new j();
        jVar.a(1);
        f30305b = a10.b(jVar.b()).a();
        c.b a11 = com.google.firebase.encoders.c.a("errorCode");
        j jVar2 = new j();
        jVar2.a(2);
        f30306c = a11.b(jVar2.b()).a();
        c.b a12 = com.google.firebase.encoders.c.a("isColdCall");
        j jVar3 = new j();
        jVar3.a(3);
        f30307d = a12.b(jVar3.b()).a();
        c.b a13 = com.google.firebase.encoders.c.a("autoManageModelOnBackground");
        j jVar4 = new j();
        jVar4.a(4);
        f30308e = a13.b(jVar4.b()).a();
        c.b a14 = com.google.firebase.encoders.c.a("autoManageModelOnLowMemory");
        j jVar5 = new j();
        jVar5.a(5);
        f30309f = a14.b(jVar5.b()).a();
        c.b a15 = com.google.firebase.encoders.c.a("isNnApiEnabled");
        j jVar6 = new j();
        jVar6.a(6);
        f30310g = a15.b(jVar6.b()).a();
        c.b a16 = com.google.firebase.encoders.c.a("eventsCount");
        j jVar7 = new j();
        jVar7.a(7);
        f30311h = a16.b(jVar7.b()).a();
        c.b a17 = com.google.firebase.encoders.c.a("otherErrors");
        j jVar8 = new j();
        jVar8.a(8);
        f30312i = a17.b(jVar8.b()).a();
        c.b a18 = com.google.firebase.encoders.c.a("remoteConfigValueForAcceleration");
        j jVar9 = new j();
        jVar9.a(9);
        f30313j = a18.b(jVar9.b()).a();
        c.b a19 = com.google.firebase.encoders.c.a("isAccelerated");
        j jVar10 = new j();
        jVar10.a(10);
        f30314k = a19.b(jVar10.b()).a();
    }

    private a3() {
    }

    @Override // com.google.firebase.encoders.d, com.google.firebase.encoders.b
    public final /* bridge */ /* synthetic */ void a(Object obj, com.google.firebase.encoders.e eVar) throws IOException {
        s6 s6Var = (s6) obj;
        com.google.firebase.encoders.e eVar2 = eVar;
        eVar2.m(f30305b, s6Var.c());
        eVar2.m(f30306c, s6Var.a());
        eVar2.m(f30307d, s6Var.b());
        eVar2.m(f30308e, null);
        eVar2.m(f30309f, null);
        eVar2.m(f30310g, null);
        eVar2.m(f30311h, null);
        eVar2.m(f30312i, null);
        eVar2.m(f30313j, null);
        eVar2.m(f30314k, null);
    }
}

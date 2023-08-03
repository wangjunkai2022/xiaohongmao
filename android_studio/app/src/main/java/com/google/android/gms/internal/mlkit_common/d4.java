package com.google.android.gms.internal.mlkit_common;

import com.google.firebase.encoders.c;
import java.io.IOException;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
final class d4 implements com.google.firebase.encoders.d {

    /* renamed from: a  reason: collision with root package name */
    static final d4 f29545a = new d4();

    /* renamed from: b  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f29546b;

    /* renamed from: c  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f29547c;

    /* renamed from: d  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f29548d;

    /* renamed from: e  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f29549e;

    /* renamed from: f  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f29550f;

    /* renamed from: g  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f29551g;

    /* renamed from: h  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f29552h;

    static {
        c.b a10 = com.google.firebase.encoders.c.a("options");
        d0 d0Var = new d0();
        d0Var.a(1);
        f29546b = a10.b(d0Var.b()).a();
        c.b a11 = com.google.firebase.encoders.c.a("roughDownloadDurationMs");
        d0 d0Var2 = new d0();
        d0Var2.a(2);
        f29547c = a11.b(d0Var2.b()).a();
        c.b a12 = com.google.firebase.encoders.c.a("errorCode");
        d0 d0Var3 = new d0();
        d0Var3.a(3);
        f29548d = a12.b(d0Var3.b()).a();
        c.b a13 = com.google.firebase.encoders.c.a("exactDownloadDurationMs");
        d0 d0Var4 = new d0();
        d0Var4.a(4);
        f29549e = a13.b(d0Var4.b()).a();
        c.b a14 = com.google.firebase.encoders.c.a("downloadStatus");
        d0 d0Var5 = new d0();
        d0Var5.a(5);
        f29550f = a14.b(d0Var5.b()).a();
        c.b a15 = com.google.firebase.encoders.c.a("downloadFailureStatus");
        d0 d0Var6 = new d0();
        d0Var6.a(6);
        f29551g = a15.b(d0Var6.b()).a();
        c.b a16 = com.google.firebase.encoders.c.a("mddDownloadErrorCodes");
        d0 d0Var7 = new d0();
        d0Var7.a(7);
        f29552h = a16.b(d0Var7.b()).a();
    }

    private d4() {
    }

    @Override // com.google.firebase.encoders.d, com.google.firebase.encoders.b
    public final /* bridge */ /* synthetic */ void a(Object obj, com.google.firebase.encoders.e eVar) throws IOException {
        c8 c8Var = (c8) obj;
        com.google.firebase.encoders.e eVar2 = eVar;
        eVar2.m(f29546b, c8Var.c());
        eVar2.m(f29547c, c8Var.f());
        eVar2.m(f29548d, c8Var.a());
        eVar2.m(f29549e, c8Var.e());
        eVar2.m(f29550f, c8Var.b());
        eVar2.m(f29551g, c8Var.d());
        eVar2.m(f29552h, null);
    }
}

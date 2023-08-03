package com.google.android.gms.internal.mlkit_common;

import com.google.firebase.encoders.c;
import java.io.IOException;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
final class n3 implements com.google.firebase.encoders.d {

    /* renamed from: a  reason: collision with root package name */
    static final n3 f29848a = new n3();

    /* renamed from: b  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f29849b;

    /* renamed from: c  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f29850c;

    /* renamed from: d  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f29851d;

    /* renamed from: e  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f29852e;

    /* renamed from: f  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f29853f;

    /* renamed from: g  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f29854g;

    static {
        c.b a10 = com.google.firebase.encoders.c.a("maxMs");
        d0 d0Var = new d0();
        d0Var.a(1);
        f29849b = a10.b(d0Var.b()).a();
        c.b a11 = com.google.firebase.encoders.c.a("minMs");
        d0 d0Var2 = new d0();
        d0Var2.a(2);
        f29850c = a11.b(d0Var2.b()).a();
        c.b a12 = com.google.firebase.encoders.c.a("avgMs");
        d0 d0Var3 = new d0();
        d0Var3.a(3);
        f29851d = a12.b(d0Var3.b()).a();
        c.b a13 = com.google.firebase.encoders.c.a("firstQuartileMs");
        d0 d0Var4 = new d0();
        d0Var4.a(4);
        f29852e = a13.b(d0Var4.b()).a();
        c.b a14 = com.google.firebase.encoders.c.a("medianMs");
        d0 d0Var5 = new d0();
        d0Var5.a(5);
        f29853f = a14.b(d0Var5.b()).a();
        c.b a15 = com.google.firebase.encoders.c.a("thirdQuartileMs");
        d0 d0Var6 = new d0();
        d0Var6.a(6);
        f29854g = a15.b(d0Var6.b()).a();
    }

    private n3() {
    }

    @Override // com.google.firebase.encoders.d, com.google.firebase.encoders.b
    public final /* bridge */ /* synthetic */ void a(Object obj, com.google.firebase.encoders.e eVar) throws IOException {
        h7 h7Var = (h7) obj;
        throw null;
    }
}

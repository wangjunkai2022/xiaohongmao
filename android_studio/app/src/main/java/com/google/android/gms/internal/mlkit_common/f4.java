package com.google.android.gms.internal.mlkit_common;

import com.google.firebase.encoders.c;
import java.io.IOException;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
final class f4 implements com.google.firebase.encoders.d {

    /* renamed from: a  reason: collision with root package name */
    static final f4 f29618a = new f4();

    /* renamed from: b  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f29619b;

    /* renamed from: c  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f29620c;

    /* renamed from: d  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f29621d;

    /* renamed from: e  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f29622e;

    static {
        c.b a10 = com.google.firebase.encoders.c.a("modelInfo");
        d0 d0Var = new d0();
        d0Var.a(1);
        f29619b = a10.b(d0Var.b()).a();
        c.b a11 = com.google.firebase.encoders.c.a("initialDownloadConditions");
        d0 d0Var2 = new d0();
        d0Var2.a(2);
        f29620c = a11.b(d0Var2.b()).a();
        c.b a12 = com.google.firebase.encoders.c.a("updateDownloadConditions");
        d0 d0Var3 = new d0();
        d0Var3.a(3);
        f29621d = a12.b(d0Var3.b()).a();
        c.b a13 = com.google.firebase.encoders.c.a("isModelUpdateEnabled");
        d0 d0Var4 = new d0();
        d0Var4.a(4);
        f29622e = a13.b(d0Var4.b()).a();
    }

    private f4() {
    }

    @Override // com.google.firebase.encoders.d, com.google.firebase.encoders.b
    public final /* bridge */ /* synthetic */ void a(Object obj, com.google.firebase.encoders.e eVar) throws IOException {
        com.google.firebase.encoders.e eVar2 = eVar;
        eVar2.m(f29619b, ((j8) obj).a());
        eVar2.m(f29620c, null);
        eVar2.m(f29621d, null);
        eVar2.m(f29622e, null);
    }
}

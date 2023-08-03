package com.google.android.gms.internal.mlkit_common;

import com.google.firebase.encoders.c;
import java.io.IOException;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
final class l3 implements com.google.firebase.encoders.d {

    /* renamed from: a  reason: collision with root package name */
    static final l3 f29799a = new l3();

    /* renamed from: b  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f29800b;

    /* renamed from: c  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f29801c;

    /* renamed from: d  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f29802d;

    static {
        c.b a10 = com.google.firebase.encoders.c.a("modelType");
        d0 d0Var = new d0();
        d0Var.a(1);
        f29800b = a10.b(d0Var.b()).a();
        c.b a11 = com.google.firebase.encoders.c.a("isSuccessful");
        d0 d0Var2 = new d0();
        d0Var2.a(2);
        f29801c = a11.b(d0Var2.b()).a();
        c.b a12 = com.google.firebase.encoders.c.a("modelName");
        d0 d0Var3 = new d0();
        d0Var3.a(3);
        f29802d = a12.b(d0Var3.b()).a();
    }

    private l3() {
    }

    @Override // com.google.firebase.encoders.d, com.google.firebase.encoders.b
    public final /* bridge */ /* synthetic */ void a(Object obj, com.google.firebase.encoders.e eVar) throws IOException {
        g7 g7Var = (g7) obj;
        com.google.firebase.encoders.e eVar2 = eVar;
        eVar2.m(f29800b, g7Var.a());
        eVar2.m(f29801c, g7Var.b());
        eVar2.m(f29802d, null);
    }
}

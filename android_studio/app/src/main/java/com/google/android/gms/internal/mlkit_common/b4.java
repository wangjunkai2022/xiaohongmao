package com.google.android.gms.internal.mlkit_common;

import com.google.firebase.encoders.c;
import com.qennnsad.aknkaksd.data.repository.RetrofitApi;
import java.io.IOException;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
final class b4 implements com.google.firebase.encoders.d {

    /* renamed from: a  reason: collision with root package name */
    static final b4 f29451a = new b4();

    /* renamed from: b  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f29452b;

    static {
        c.b a10 = com.google.firebase.encoders.c.a(RetrofitApi.f47692a);
        d0 d0Var = new d0();
        d0Var.a(1);
        f29452b = a10.b(d0Var.b()).a();
    }

    private b4() {
    }

    @Override // com.google.firebase.encoders.d, com.google.firebase.encoders.b
    public final /* bridge */ /* synthetic */ void a(Object obj, com.google.firebase.encoders.e eVar) throws IOException {
        eVar.m(f29452b, ((v7) obj).a());
    }
}

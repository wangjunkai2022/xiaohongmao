package com.google.android.gms.internal.mlkit_language_id_common;

import com.google.firebase.encoders.c;
import java.io.IOException;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
final class h4 implements com.google.firebase.encoders.d {

    /* renamed from: a  reason: collision with root package name */
    static final h4 f30535a = new h4();

    /* renamed from: b  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30536b;

    static {
        c.b a10 = com.google.firebase.encoders.c.a("identifiedLanguages");
        j jVar = new j();
        jVar.a(1);
        f30536b = a10.b(jVar.b()).a();
    }

    private h4() {
    }

    @Override // com.google.firebase.encoders.d, com.google.firebase.encoders.b
    public final /* bridge */ /* synthetic */ void a(Object obj, com.google.firebase.encoders.e eVar) throws IOException {
        eVar.m(f30536b, ((g8) obj).a());
    }
}

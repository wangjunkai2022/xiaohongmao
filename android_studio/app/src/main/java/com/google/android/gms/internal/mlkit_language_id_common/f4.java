package com.google.android.gms.internal.mlkit_language_id_common;

import com.google.firebase.encoders.c;
import java.io.IOException;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
final class f4 implements com.google.firebase.encoders.d {

    /* renamed from: a  reason: collision with root package name */
    static final f4 f30484a = new f4();

    /* renamed from: b  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30485b;

    /* renamed from: c  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30486c;

    static {
        c.b a10 = com.google.firebase.encoders.c.a("confidence");
        j jVar = new j();
        jVar.a(1);
        f30485b = a10.b(jVar.b()).a();
        c.b a11 = com.google.firebase.encoders.c.a("languageCode");
        j jVar2 = new j();
        jVar2.a(2);
        f30486c = a11.b(jVar2.b()).a();
    }

    private f4() {
    }

    @Override // com.google.firebase.encoders.d, com.google.firebase.encoders.b
    public final /* bridge */ /* synthetic */ void a(Object obj, com.google.firebase.encoders.e eVar) throws IOException {
        z7 z7Var = (z7) obj;
        com.google.firebase.encoders.e eVar2 = eVar;
        eVar2.m(f30485b, z7Var.a());
        eVar2.m(f30486c, z7Var.b());
    }
}

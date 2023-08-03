package com.google.android.gms.internal.mlkit_language_id_common;

import com.google.firebase.encoders.c;
import java.io.IOException;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
final class g3 implements com.google.firebase.encoders.d {

    /* renamed from: a  reason: collision with root package name */
    static final g3 f30498a = new g3();

    /* renamed from: b  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30499b;

    /* renamed from: c  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30500c;

    /* renamed from: d  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30501d;

    static {
        c.b a10 = com.google.firebase.encoders.c.a("identifyLanguageConfidenceThreshold");
        j jVar = new j();
        jVar.a(1);
        f30499b = a10.b(jVar.b()).a();
        c.b a11 = com.google.firebase.encoders.c.a("identifyAllLanguagesConfidenceThreshold");
        j jVar2 = new j();
        jVar2.a(2);
        f30500c = a11.b(jVar2.b()).a();
        c.b a12 = com.google.firebase.encoders.c.a("confidenceThreshold");
        j jVar3 = new j();
        jVar3.a(3);
        f30501d = a12.b(jVar3.b()).a();
    }

    private g3() {
    }

    @Override // com.google.firebase.encoders.d, com.google.firebase.encoders.b
    public final /* bridge */ /* synthetic */ void a(Object obj, com.google.firebase.encoders.e eVar) throws IOException {
        com.google.firebase.encoders.e eVar2 = eVar;
        eVar2.m(f30499b, null);
        eVar2.m(f30500c, null);
        eVar2.m(f30501d, ((y6) obj).a());
    }
}

package com.google.android.gms.internal.mlkit_language_id_common;

import com.google.firebase.encoders.c;
import java.io.IOException;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
final class d4 implements com.google.firebase.encoders.d {

    /* renamed from: a  reason: collision with root package name */
    static final d4 f30423a = new d4();

    /* renamed from: b  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30424b;

    /* renamed from: c  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30425c;

    /* renamed from: d  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30426d;

    /* renamed from: e  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30427e;

    static {
        c.b a10 = com.google.firebase.encoders.c.a("inferenceCommonLogEvent");
        j jVar = new j();
        jVar.a(1);
        f30424b = a10.b(jVar.b()).a();
        c.b a11 = com.google.firebase.encoders.c.a("options");
        j jVar2 = new j();
        jVar2.a(2);
        f30425c = a11.b(jVar2.b()).a();
        c.b a12 = com.google.firebase.encoders.c.a("identifyLanguageResult");
        j jVar3 = new j();
        jVar3.a(3);
        f30426d = a12.b(jVar3.b()).a();
        c.b a13 = com.google.firebase.encoders.c.a("identifyPossibleLanguagesResult");
        j jVar4 = new j();
        jVar4.a(4);
        f30427e = a13.b(jVar4.b()).a();
    }

    private d4() {
    }

    @Override // com.google.firebase.encoders.d, com.google.firebase.encoders.b
    public final /* bridge */ /* synthetic */ void a(Object obj, com.google.firebase.encoders.e eVar) throws IOException {
        i8 i8Var = (i8) obj;
        com.google.firebase.encoders.e eVar2 = eVar;
        eVar2.m(f30424b, i8Var.a());
        eVar2.m(f30425c, i8Var.b());
        eVar2.m(f30426d, i8Var.c());
        eVar2.m(f30427e, i8Var.d());
    }
}

package com.google.android.gms.internal.mlkit_language_id_common;

import android.content.Context;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
public final class sa implements ja {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private o3.b f30883a;

    /* renamed from: b  reason: collision with root package name */
    private final o3.b f30884b;

    /* renamed from: c  reason: collision with root package name */
    private final da f30885c;

    public sa(Context context, da daVar) {
        this.f30885c = daVar;
        com.google.android.datatransport.cct.a aVar = com.google.android.datatransport.cct.a.f20200j;
        com.google.android.datatransport.runtime.t.f(context);
        final com.google.android.datatransport.h g4 = com.google.android.datatransport.runtime.t.c().g(aVar);
        if (aVar.a().contains(com.google.android.datatransport.c.b("json"))) {
            this.f30883a = new com.google.firebase.components.w(new o3.b() { // from class: com.google.android.gms.internal.mlkit_language_id_common.pa
                @Override // o3.b
                public final Object get() {
                    return com.google.android.datatransport.h.this.b("FIREBASE_ML_SDK", byte[].class, com.google.android.datatransport.c.b("json"), ra.f30852a);
                }
            });
        }
        this.f30884b = new com.google.firebase.components.w(new o3.b() { // from class: com.google.android.gms.internal.mlkit_language_id_common.qa
            @Override // o3.b
            public final Object get() {
                return com.google.android.datatransport.h.this.b("FIREBASE_ML_SDK", byte[].class, com.google.android.datatransport.c.b("proto"), oa.f30782a);
            }
        });
    }

    @VisibleForTesting
    static com.google.android.datatransport.d b(da daVar, ba baVar) {
        int a10 = daVar.a();
        if (baVar.zza() != 0) {
            return com.google.android.datatransport.d.e(baVar.a(a10, false));
        }
        return com.google.android.datatransport.d.g(baVar.a(a10, false));
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.ja
    public final void a(ba baVar) {
        if (this.f30885c.a() != 0) {
            ((com.google.android.datatransport.g) this.f30884b.get()).b(b(this.f30885c, baVar));
            return;
        }
        o3.b bVar = this.f30883a;
        if (bVar != null) {
            ((com.google.android.datatransport.g) bVar.get()).b(b(this.f30885c, baVar));
        }
    }
}

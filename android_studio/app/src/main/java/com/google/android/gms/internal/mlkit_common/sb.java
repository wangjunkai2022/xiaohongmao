package com.google.android.gms.internal.mlkit_common;

import android.content.Context;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public final class sb implements jb {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private o3.b f30002a;

    /* renamed from: b  reason: collision with root package name */
    private final o3.b f30003b;

    /* renamed from: c  reason: collision with root package name */
    private final db f30004c;

    public sb(Context context, db dbVar) {
        this.f30004c = dbVar;
        com.google.android.datatransport.cct.a aVar = com.google.android.datatransport.cct.a.f20200j;
        com.google.android.datatransport.runtime.t.f(context);
        final com.google.android.datatransport.h g4 = com.google.android.datatransport.runtime.t.c().g(aVar);
        if (aVar.a().contains(com.google.android.datatransport.c.b("json"))) {
            this.f30002a = new com.google.firebase.components.w(new o3.b() { // from class: com.google.android.gms.internal.mlkit_common.pb
                @Override // o3.b
                public final Object get() {
                    return com.google.android.datatransport.h.this.b("FIREBASE_ML_SDK", byte[].class, com.google.android.datatransport.c.b("json"), rb.f29972a);
                }
            });
        }
        this.f30003b = new com.google.firebase.components.w(new o3.b() { // from class: com.google.android.gms.internal.mlkit_common.qb
            @Override // o3.b
            public final Object get() {
                return com.google.android.datatransport.h.this.b("FIREBASE_ML_SDK", byte[].class, com.google.android.datatransport.c.b("proto"), ob.f29888a);
            }
        });
    }

    @VisibleForTesting
    static com.google.android.datatransport.d b(db dbVar, ab abVar) {
        return com.google.android.datatransport.d.g(abVar.a(dbVar.a(), false));
    }

    @Override // com.google.android.gms.internal.mlkit_common.jb
    public final void a(ab abVar) {
        if (this.f30004c.a() != 0) {
            ((com.google.android.datatransport.g) this.f30003b.get()).b(b(this.f30004c, abVar));
            return;
        }
        o3.b bVar = this.f30002a;
        if (bVar != null) {
            ((com.google.android.datatransport.g) bVar.get()).b(b(this.f30004c, abVar));
        }
    }
}

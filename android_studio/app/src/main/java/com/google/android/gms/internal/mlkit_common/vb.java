package com.google.android.gms.internal.mlkit_common;

import androidx.annotation.Nullable;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public final class vb {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private static ub f30091a;

    public static synchronized kb a(db dbVar) {
        kb kbVar;
        synchronized (vb.class) {
            if (f30091a == null) {
                f30091a = new ub(null);
            }
            kbVar = (kb) f30091a.b(dbVar);
        }
        return kbVar;
    }

    public static synchronized kb b(String str) {
        kb a10;
        synchronized (vb.class) {
            a10 = a(db.d("common").c());
        }
        return a10;
    }
}

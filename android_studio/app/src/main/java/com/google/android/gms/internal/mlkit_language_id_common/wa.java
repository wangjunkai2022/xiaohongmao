package com.google.android.gms.internal.mlkit_language_id_common;

import androidx.annotation.Nullable;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
public final class wa {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private static wa f30976a;

    private wa() {
    }

    public static synchronized wa a() {
        wa waVar;
        synchronized (wa.class) {
            if (f30976a == null) {
                f30976a = new wa();
            }
            waVar = f30976a;
        }
        return waVar;
    }
}

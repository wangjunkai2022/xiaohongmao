package com.google.android.gms.internal.mlkit_language_id_common;

import androidx.annotation.Nullable;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
public final class va {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private static ua f30949a;

    public static synchronized ka a(da daVar) {
        ka kaVar;
        synchronized (va.class) {
            if (f30949a == null) {
                f30949a = new ua(null);
            }
            kaVar = (ka) f30949a.b(daVar);
        }
        return kaVar;
    }

    public static synchronized ka b(String str) {
        ka a10;
        synchronized (va.class) {
            a10 = a(da.d(str).c());
        }
        return a10;
    }
}

package com.google.android.gms.internal.mlkit_common;

import androidx.annotation.Nullable;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public final class yb {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private static yb f30211a;

    private yb() {
    }

    public static synchronized yb a() {
        yb ybVar;
        synchronized (yb.class) {
            if (f30211a == null) {
                f30211a = new yb();
            }
            ybVar = f30211a;
        }
        return ybVar;
    }

    public static void b() {
        xb.a();
    }
}

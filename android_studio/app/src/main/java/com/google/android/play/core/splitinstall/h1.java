package com.google.android.play.core.splitinstall;

import android.content.Context;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class h1 {

    /* renamed from: a  reason: collision with root package name */
    private static c1 f31875a;

    public static synchronized c1 a(Context context) {
        c1 c1Var;
        synchronized (h1.class) {
            if (f31875a == null) {
                q0 q0Var = new q0(null);
                q0Var.a(new k(com.google.android.play.core.internal.e1.a(context)));
                f31875a = q0Var.b();
            }
            c1Var = f31875a;
        }
        return c1Var;
    }
}

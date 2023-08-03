package com.google.android.play.core.assetpacks;

import android.content.Context;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class j2 {

    /* renamed from: a  reason: collision with root package name */
    private static g f31355a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized g a(Context context) {
        g gVar;
        synchronized (j2.class) {
            if (f31355a == null) {
                k1 k1Var = new k1(null);
                k1Var.b(new o4(com.google.android.play.core.internal.e1.a(context)));
                f31355a = k1Var.a();
            }
            gVar = f31355a;
        }
        return gVar;
    }
}

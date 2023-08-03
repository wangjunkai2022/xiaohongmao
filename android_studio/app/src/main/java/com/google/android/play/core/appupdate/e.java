package com.google.android.play.core.appupdate;

import android.content.Context;
import com.google.android.play.core.internal.e1;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private static f f31189a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized f a(Context context) {
        f fVar;
        synchronized (e.class) {
            if (f31189a == null) {
                c0 c0Var = new c0(null);
                c0Var.a(new l(e1.a(context)));
                f31189a = c0Var.b();
            }
            fVar = f31189a;
        }
        return fVar;
    }
}

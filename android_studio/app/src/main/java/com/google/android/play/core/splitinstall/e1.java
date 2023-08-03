package com.google.android.play.core.splitinstall;

import androidx.annotation.Nullable;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class e1 {

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicReference f31861a = new AtomicReference(null);

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static d1 a() {
        return (d1) f31861a.get();
    }

    public static void b(d1 d1Var) {
        f31861a.compareAndSet(null, d1Var);
    }
}

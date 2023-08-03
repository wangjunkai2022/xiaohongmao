package com.google.android.gms.common.api.internal;

import androidx.annotation.VisibleForTesting;
import java.lang.ref.WeakReference;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class e1 extends a {

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<d0> f28683a;

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting(otherwise = 2)
    public e1(d0 d0Var) {
        this.f28683a = new WeakReference<>(d0Var);
    }

    @Override // com.google.android.gms.common.api.internal.a
    public final a b(Runnable runnable) {
        d0 d0Var = this.f28683a.get();
        if (d0Var != null) {
            d0Var.o(runnable);
            return this;
        }
        throw new IllegalStateException("The target activity has already been GC'd");
    }
}

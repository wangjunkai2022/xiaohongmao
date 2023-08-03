package com.google.android.gms.common.api.internal;

import androidx.annotation.BinderThread;
import com.google.android.gms.signin.internal.zak;
import java.lang.ref.WeakReference;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
final class v0 extends com.google.android.gms.signin.internal.c {

    /* renamed from: c  reason: collision with root package name */
    private final WeakReference<a1> f28906c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v0(a1 a1Var) {
        this.f28906c = new WeakReference<>(a1Var);
    }

    @Override // com.google.android.gms.signin.internal.c, com.google.android.gms.signin.internal.e
    @BinderThread
    public final void O(zak zakVar) {
        n1 n1Var;
        a1 a1Var = this.f28906c.get();
        if (a1Var == null) {
            return;
        }
        n1Var = a1Var.f28623a;
        n1Var.r(new u0(this, a1Var, a1Var, zakVar));
    }
}

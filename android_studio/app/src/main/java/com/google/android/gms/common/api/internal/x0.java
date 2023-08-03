package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.i;
import java.util.concurrent.locks.Lock;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
final class x0 implements i.b, i.c {

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ a1 f28927c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ x0(a1 a1Var, w0 w0Var) {
        this.f28927c = a1Var;
    }

    @Override // com.google.android.gms.common.api.internal.f
    public final void s(@Nullable Bundle bundle) {
        com.google.android.gms.common.internal.f fVar;
        com.google.android.gms.signin.f fVar2;
        fVar = this.f28927c.f28640r;
        com.google.android.gms.common.internal.f fVar3 = (com.google.android.gms.common.internal.f) com.google.android.gms.common.internal.u.k(fVar);
        fVar2 = this.f28927c.f28633k;
        ((com.google.android.gms.signin.f) com.google.android.gms.common.internal.u.k(fVar2)).q(new v0(this.f28927c));
    }

    @Override // com.google.android.gms.common.api.internal.f
    public final void x(int i4) {
    }

    @Override // com.google.android.gms.common.api.internal.q
    public final void z(@NonNull ConnectionResult connectionResult) {
        Lock lock;
        Lock lock2;
        boolean q9;
        lock = this.f28927c.f28624b;
        lock.lock();
        try {
            q9 = this.f28927c.q(connectionResult);
            if (q9) {
                this.f28927c.i();
                this.f28927c.n();
            } else {
                this.f28927c.l(connectionResult);
            }
        } finally {
            lock2 = this.f28927c.f28624b;
            lock2.unlock();
        }
    }
}

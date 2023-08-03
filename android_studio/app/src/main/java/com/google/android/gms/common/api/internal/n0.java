package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import android.os.DeadObjectException;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.e;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class n0 implements k1 {

    /* renamed from: a  reason: collision with root package name */
    private final n1 f28812a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f28813b = false;

    public n0(n1 n1Var) {
        this.f28812a = n1Var;
    }

    @Override // com.google.android.gms.common.api.internal.k1
    public final void a(@Nullable Bundle bundle) {
    }

    @Override // com.google.android.gms.common.api.internal.k1
    public final void b() {
    }

    @Override // com.google.android.gms.common.api.internal.k1
    public final void c() {
        if (this.f28813b) {
            this.f28813b = false;
            this.f28812a.r(new m0(this, this));
        }
    }

    @Override // com.google.android.gms.common.api.internal.k1
    public final void d(ConnectionResult connectionResult, com.google.android.gms.common.api.a<?> aVar, boolean z9) {
    }

    @Override // com.google.android.gms.common.api.internal.k1
    public final void e(int i4) {
        this.f28812a.q(null);
        this.f28812a.f28828q.b(i4, this.f28813b);
    }

    @Override // com.google.android.gms.common.api.internal.k1
    public final <A extends a.b, R extends com.google.android.gms.common.api.q, T extends e.a<R, A>> T f(T t9) {
        h(t9);
        return t9;
    }

    @Override // com.google.android.gms.common.api.internal.k1
    public final boolean g() {
        if (this.f28813b) {
            return false;
        }
        Set<h3> set = this.f28812a.f28827p.f28780z;
        if (set != null && !set.isEmpty()) {
            this.f28813b = true;
            for (h3 h3Var : set) {
                h3Var.k();
            }
            return false;
        }
        this.f28812a.q(null);
        return true;
    }

    @Override // com.google.android.gms.common.api.internal.k1
    public final <A extends a.b, T extends e.a<? extends com.google.android.gms.common.api.q, A>> T h(T t9) {
        try {
            this.f28812a.f28827p.A.a(t9);
            j1 j1Var = this.f28812a.f28827p;
            a.f fVar = j1Var.f28772r.get(t9.y());
            com.google.android.gms.common.internal.u.l(fVar, "Appropriate Api was not requested.");
            if (!fVar.a() && this.f28812a.f28820i.containsKey(t9.y())) {
                t9.b(new Status(17));
            } else {
                t9.A(fVar);
            }
        } catch (DeadObjectException unused) {
            this.f28812a.r(new l0(this, this));
        }
        return t9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void j() {
        if (this.f28813b) {
            this.f28813b = false;
            this.f28812a.f28827p.A.b();
            g();
        }
    }
}

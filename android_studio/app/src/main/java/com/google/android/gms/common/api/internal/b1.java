package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.e;
import java.util.Collections;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class b1 implements k1 {
    @NotOnlyInitialized

    /* renamed from: a  reason: collision with root package name */
    private final n1 f28646a;

    public b1(n1 n1Var) {
        this.f28646a = n1Var;
    }

    @Override // com.google.android.gms.common.api.internal.k1
    public final void a(@Nullable Bundle bundle) {
    }

    @Override // com.google.android.gms.common.api.internal.k1
    public final void b() {
        for (a.f fVar : this.f28646a.f28819h.values()) {
            fVar.c();
        }
        this.f28646a.f28827p.f28773s = Collections.emptySet();
    }

    @Override // com.google.android.gms.common.api.internal.k1
    public final void c() {
        this.f28646a.p();
    }

    @Override // com.google.android.gms.common.api.internal.k1
    public final void d(ConnectionResult connectionResult, com.google.android.gms.common.api.a<?> aVar, boolean z9) {
    }

    @Override // com.google.android.gms.common.api.internal.k1
    public final void e(int i4) {
    }

    @Override // com.google.android.gms.common.api.internal.k1
    public final <A extends a.b, R extends com.google.android.gms.common.api.q, T extends e.a<R, A>> T f(T t9) {
        this.f28646a.f28827p.f28765k.add(t9);
        return t9;
    }

    @Override // com.google.android.gms.common.api.internal.k1
    public final boolean g() {
        return true;
    }

    @Override // com.google.android.gms.common.api.internal.k1
    public final <A extends a.b, T extends e.a<? extends com.google.android.gms.common.api.q, A>> T h(T t9) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }
}

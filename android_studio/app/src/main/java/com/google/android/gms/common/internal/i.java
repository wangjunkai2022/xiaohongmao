package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Handler;
import android.os.IInterface;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.i;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public abstract class i<T extends IInterface> extends e<T> implements a.f, q0 {
    @Nullable
    private static volatile Executor N;
    private final f K;
    private final Set<Scope> L;
    @Nullable
    private final Account M;

    @u2.a
    @y2.d0
    protected i(@NonNull Context context, @NonNull Handler handler, int i4, @NonNull f fVar) {
        super(context, handler, j.d(context), com.google.android.gms.common.e.x(), i4, null, null);
        this.K = (f) u.k(fVar);
        this.M = fVar.b();
        this.L = r0(fVar.e());
    }

    private final Set<Scope> r0(@NonNull Set<Scope> set) {
        Set<Scope> q02 = q0(set);
        for (Scope scope : q02) {
            if (!set.contains(scope)) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        return q02;
    }

    @Override // com.google.android.gms.common.internal.e
    @Nullable
    public final Account A() {
        return this.M;
    }

    @Override // com.google.android.gms.common.internal.e
    @Nullable
    protected final Executor C() {
        return null;
    }

    @Override // com.google.android.gms.common.internal.e
    @NonNull
    @u2.a
    protected final Set<Scope> J() {
        return this.L;
    }

    @Override // com.google.android.gms.common.api.a.f
    @NonNull
    @u2.a
    public Feature[] i() {
        return new Feature[0];
    }

    @Override // com.google.android.gms.common.api.a.f
    @NonNull
    @u2.a
    public Set<Scope> m() {
        return k() ? this.L : Collections.emptySet();
    }

    @NonNull
    @u2.a
    protected final f p0() {
        return this.K;
    }

    @NonNull
    @u2.a
    protected Set<Scope> q0(@NonNull Set<Scope> set) {
        return set;
    }

    @u2.a
    protected i(@NonNull Context context, @NonNull Looper looper, int i4, @NonNull f fVar) {
        this(context, looper, j.d(context), com.google.android.gms.common.e.x(), i4, fVar, null, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @u2.a
    @Deprecated
    public i(@NonNull Context context, @NonNull Looper looper, int i4, @NonNull f fVar, @NonNull i.b bVar, @NonNull i.c cVar) {
        this(context, looper, i4, fVar, (com.google.android.gms.common.api.internal.f) bVar, (com.google.android.gms.common.api.internal.q) cVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @u2.a
    public i(@NonNull Context context, @NonNull Looper looper, int i4, @NonNull f fVar, @NonNull com.google.android.gms.common.api.internal.f fVar2, @NonNull com.google.android.gms.common.api.internal.q qVar) {
        this(context, looper, j.d(context), com.google.android.gms.common.e.x(), i4, fVar, (com.google.android.gms.common.api.internal.f) u.k(fVar2), (com.google.android.gms.common.api.internal.q) u.k(qVar));
    }

    @y2.d0
    protected i(@NonNull Context context, @NonNull Looper looper, @NonNull j jVar, @NonNull com.google.android.gms.common.e eVar, int i4, @NonNull f fVar, @Nullable com.google.android.gms.common.api.internal.f fVar2, @Nullable com.google.android.gms.common.api.internal.q qVar) {
        super(context, looper, jVar, eVar, i4, fVar2 == null ? null : new o0(fVar2), qVar == null ? null : new p0(qVar), fVar.m());
        this.K = fVar;
        this.M = fVar.b();
        this.L = r0(fVar.e());
    }
}

package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class m3<ResultT> extends f2 {

    /* renamed from: b  reason: collision with root package name */
    private final a0<a.b, ResultT> f28804b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.gms.tasks.l<ResultT> f28805c;

    /* renamed from: d  reason: collision with root package name */
    private final y f28806d;

    public m3(int i4, a0<a.b, ResultT> a0Var, com.google.android.gms.tasks.l<ResultT> lVar, y yVar) {
        super(i4);
        this.f28805c = lVar;
        this.f28804b = a0Var;
        this.f28806d = yVar;
        if (i4 == 2 && a0Var.c()) {
            throw new IllegalArgumentException("Best-effort write calls cannot pass methods that should auto-resolve missing features.");
        }
    }

    @Override // com.google.android.gms.common.api.internal.o3
    public final void a(@NonNull Status status) {
        this.f28805c.d(this.f28806d.a(status));
    }

    @Override // com.google.android.gms.common.api.internal.o3
    public final void b(@NonNull Exception exc) {
        this.f28805c.d(exc);
    }

    @Override // com.google.android.gms.common.api.internal.o3
    public final void c(v1<?> v1Var) throws DeadObjectException {
        try {
            this.f28804b.b(v1Var.t(), this.f28805c);
        } catch (DeadObjectException e4) {
            throw e4;
        } catch (RemoteException e10) {
            a(o3.e(e10));
        } catch (RuntimeException e11) {
            this.f28805c.d(e11);
        }
    }

    @Override // com.google.android.gms.common.api.internal.o3
    public final void d(@NonNull h0 h0Var, boolean z9) {
        h0Var.d(this.f28805c, z9);
    }

    @Override // com.google.android.gms.common.api.internal.f2
    public final boolean f(v1<?> v1Var) {
        return this.f28804b.c();
    }

    @Override // com.google.android.gms.common.api.internal.f2
    @Nullable
    public final Feature[] g(v1<?> v1Var) {
        return this.f28804b.e();
    }
}

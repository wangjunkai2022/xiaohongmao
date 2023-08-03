package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public abstract class g3<T> extends f2 {

    /* renamed from: b  reason: collision with root package name */
    protected final com.google.android.gms.tasks.l<T> f28698b;

    public g3(int i4, com.google.android.gms.tasks.l<T> lVar) {
        super(i4);
        this.f28698b = lVar;
    }

    @Override // com.google.android.gms.common.api.internal.o3
    public final void a(@NonNull Status status) {
        this.f28698b.d(new ApiException(status));
    }

    @Override // com.google.android.gms.common.api.internal.o3
    public final void b(@NonNull Exception exc) {
        this.f28698b.d(exc);
    }

    @Override // com.google.android.gms.common.api.internal.o3
    public final void c(v1<?> v1Var) throws DeadObjectException {
        try {
            h(v1Var);
        } catch (DeadObjectException e4) {
            a(o3.e(e4));
            throw e4;
        } catch (RemoteException e10) {
            a(o3.e(e10));
        } catch (RuntimeException e11) {
            this.f28698b.d(e11);
        }
    }

    @Override // com.google.android.gms.common.api.internal.o3
    public void d(@NonNull h0 h0Var, boolean z9) {
    }

    protected abstract void h(v1<?> v1Var) throws RemoteException;
}

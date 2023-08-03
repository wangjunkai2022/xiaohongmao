package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.locks.Lock;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class d4 implements e2 {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ e0 f28666a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ d4(e0 e0Var, c4 c4Var) {
        this.f28666a = e0Var;
    }

    @Override // com.google.android.gms.common.api.internal.e2
    public final void a(@Nullable Bundle bundle) {
        Lock lock;
        Lock lock2;
        lock = this.f28666a.f28681o;
        lock.lock();
        try {
            e0.A(this.f28666a, bundle);
            this.f28666a.f28678l = ConnectionResult.RESULT_SUCCESS;
            e0.B(this.f28666a);
        } finally {
            lock2 = this.f28666a.f28681o;
            lock2.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.e2
    public final void b(int i4, boolean z9) {
        Lock lock;
        Lock lock2;
        boolean z10;
        Lock lock3;
        ConnectionResult connectionResult;
        ConnectionResult connectionResult2;
        n1 n1Var;
        lock = this.f28666a.f28681o;
        lock.lock();
        try {
            e0 e0Var = this.f28666a;
            z10 = e0Var.f28680n;
            if (!z10) {
                connectionResult = e0Var.f28679m;
                if (connectionResult != null) {
                    connectionResult2 = e0Var.f28679m;
                    if (connectionResult2.isSuccess()) {
                        this.f28666a.f28680n = true;
                        n1Var = this.f28666a.f28673g;
                        n1Var.x(i4);
                        lock3 = this.f28666a.f28681o;
                        lock3.unlock();
                    }
                }
            }
            this.f28666a.f28680n = false;
            e0.z(this.f28666a, i4, z9);
            lock3 = this.f28666a.f28681o;
            lock3.unlock();
        } catch (Throwable th) {
            lock2 = this.f28666a.f28681o;
            lock2.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.internal.e2
    public final void c(@NonNull ConnectionResult connectionResult) {
        Lock lock;
        Lock lock2;
        lock = this.f28666a.f28681o;
        lock.lock();
        try {
            this.f28666a.f28678l = connectionResult;
            e0.B(this.f28666a);
        } finally {
            lock2 = this.f28666a.f28681o;
            lock2.unlock();
        }
    }
}

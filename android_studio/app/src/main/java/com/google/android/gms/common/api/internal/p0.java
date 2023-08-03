package com.google.android.gms.common.api.internal;

import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.e;
import java.lang.ref.WeakReference;
import java.util.concurrent.locks.Lock;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
final class p0 implements e.c {

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<a1> f28852a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.gms.common.api.a<?> f28853b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f28854c;

    public p0(a1 a1Var, com.google.android.gms.common.api.a<?> aVar, boolean z9) {
        this.f28852a = new WeakReference<>(a1Var);
        this.f28853b = aVar;
        this.f28854c = z9;
    }

    @Override // com.google.android.gms.common.internal.e.c
    public final void a(@NonNull ConnectionResult connectionResult) {
        n1 n1Var;
        Lock lock;
        Lock lock2;
        boolean o9;
        boolean p9;
        Lock lock3;
        a1 a1Var = this.f28852a.get();
        if (a1Var == null) {
            return;
        }
        Looper myLooper = Looper.myLooper();
        n1Var = a1Var.f28623a;
        com.google.android.gms.common.internal.u.r(myLooper == n1Var.f28827p.r(), "onReportServiceBinding must be called on the GoogleApiClient handler thread");
        lock = a1Var.f28624b;
        lock.lock();
        try {
            o9 = a1Var.o(0);
            if (o9) {
                if (!connectionResult.isSuccess()) {
                    a1Var.m(connectionResult, this.f28853b, this.f28854c);
                }
                p9 = a1Var.p();
                if (p9) {
                    a1Var.n();
                }
                lock3 = a1Var.f28624b;
            } else {
                lock3 = a1Var.f28624b;
            }
            lock3.unlock();
        } catch (Throwable th) {
            lock2 = a1Var.f28624b;
            lock2.unlock();
            throw th;
        }
    }
}

package com.google.android.gms.common.api.internal;

import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ConnectionTelemetryConfiguration;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.RootTelemetryConfiguration;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class j2<T> implements com.google.android.gms.tasks.e<T> {

    /* renamed from: a  reason: collision with root package name */
    private final i f28781a;

    /* renamed from: b  reason: collision with root package name */
    private final int f28782b;

    /* renamed from: c  reason: collision with root package name */
    private final c<?> f28783c;

    /* renamed from: d  reason: collision with root package name */
    private final long f28784d;

    /* renamed from: e  reason: collision with root package name */
    private final long f28785e;

    @y2.d0
    j2(i iVar, int i4, c<?> cVar, long j4, long j10, @Nullable String str, @Nullable String str2) {
        this.f28781a = iVar;
        this.f28782b = i4;
        this.f28783c = cVar;
        this.f28784d = j4;
        this.f28785e = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static <T> j2<T> b(i iVar, int i4, c<?> cVar) {
        boolean z9;
        if (iVar.g()) {
            RootTelemetryConfiguration a10 = com.google.android.gms.common.internal.w.b().a();
            if (a10 == null) {
                z9 = true;
            } else if (!a10.getMethodInvocationTelemetryEnabled()) {
                return null;
            } else {
                z9 = a10.getMethodTimingTelemetryEnabled();
                v1 x9 = iVar.x(cVar);
                if (x9 != null) {
                    if (!(x9.t() instanceof com.google.android.gms.common.internal.e)) {
                        return null;
                    }
                    com.google.android.gms.common.internal.e eVar = (com.google.android.gms.common.internal.e) x9.t();
                    if (eVar.Q() && !eVar.f()) {
                        ConnectionTelemetryConfiguration c10 = c(x9, eVar, i4);
                        if (c10 == null) {
                            return null;
                        }
                        x9.G();
                        z9 = c10.getMethodTimingTelemetryEnabled();
                    }
                }
            }
            return new j2<>(iVar, i4, cVar, z9 ? System.currentTimeMillis() : 0L, z9 ? SystemClock.elapsedRealtime() : 0L, null, null);
        }
        return null;
    }

    @Nullable
    private static ConnectionTelemetryConfiguration c(v1<?> v1Var, com.google.android.gms.common.internal.e<?> eVar, int i4) {
        int[] methodInvocationMethodKeyAllowlist;
        int[] methodInvocationMethodKeyDisallowlist;
        ConnectionTelemetryConfiguration O = eVar.O();
        if (O == null || !O.getMethodInvocationTelemetryEnabled() || ((methodInvocationMethodKeyAllowlist = O.getMethodInvocationMethodKeyAllowlist()) != null ? !y2.b.c(methodInvocationMethodKeyAllowlist, i4) : !((methodInvocationMethodKeyDisallowlist = O.getMethodInvocationMethodKeyDisallowlist()) == null || !y2.b.c(methodInvocationMethodKeyDisallowlist, i4))) || v1Var.p() >= O.getMaxMethodInvocationsLogged()) {
            return null;
        }
        return O;
    }

    @Override // com.google.android.gms.tasks.e
    @WorkerThread
    public final void a(@NonNull com.google.android.gms.tasks.k<T> kVar) {
        v1 x9;
        int i4;
        int i10;
        int i11;
        int i12;
        int errorCode;
        long j4;
        long j10;
        int i13;
        if (this.f28781a.g()) {
            RootTelemetryConfiguration a10 = com.google.android.gms.common.internal.w.b().a();
            if ((a10 == null || a10.getMethodInvocationTelemetryEnabled()) && (x9 = this.f28781a.x(this.f28783c)) != null && (x9.t() instanceof com.google.android.gms.common.internal.e)) {
                com.google.android.gms.common.internal.e eVar = (com.google.android.gms.common.internal.e) x9.t();
                boolean z9 = true;
                boolean z10 = this.f28784d > 0;
                int F = eVar.F();
                if (a10 != null) {
                    z10 &= a10.getMethodTimingTelemetryEnabled();
                    int batchPeriodMillis = a10.getBatchPeriodMillis();
                    int maxMethodInvocationsInBatch = a10.getMaxMethodInvocationsInBatch();
                    i4 = a10.getVersion();
                    if (eVar.Q() && !eVar.f()) {
                        ConnectionTelemetryConfiguration c10 = c(x9, eVar, this.f28782b);
                        if (c10 == null) {
                            return;
                        }
                        z9 = (!c10.getMethodTimingTelemetryEnabled() || this.f28784d <= 0) ? false : false;
                        maxMethodInvocationsInBatch = c10.getMaxMethodInvocationsLogged();
                        z10 = z9;
                    }
                    i10 = batchPeriodMillis;
                    i11 = maxMethodInvocationsInBatch;
                } else {
                    i4 = 0;
                    i10 = 5000;
                    i11 = 100;
                }
                i iVar = this.f28781a;
                if (kVar.v()) {
                    i12 = 0;
                    errorCode = 0;
                } else {
                    if (kVar.t()) {
                        i12 = 100;
                    } else {
                        Exception q9 = kVar.q();
                        if (q9 instanceof ApiException) {
                            Status status = ((ApiException) q9).getStatus();
                            int statusCode = status.getStatusCode();
                            ConnectionResult connectionResult = status.getConnectionResult();
                            errorCode = connectionResult == null ? -1 : connectionResult.getErrorCode();
                            i12 = statusCode;
                        } else {
                            i12 = 101;
                        }
                    }
                    errorCode = -1;
                }
                if (z10) {
                    long j11 = this.f28784d;
                    j10 = System.currentTimeMillis();
                    j4 = j11;
                    i13 = (int) (SystemClock.elapsedRealtime() - this.f28785e);
                } else {
                    j4 = 0;
                    j10 = 0;
                    i13 = -1;
                }
                iVar.L(new MethodInvocation(this.f28782b, i12, errorCode, j4, j10, null, null, F, i13), i4, i10, i11);
            }
        }
    }
}

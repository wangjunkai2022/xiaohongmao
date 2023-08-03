package com.google.android.gms.internal.mlkit_common;

import android.os.SystemClock;
import androidx.annotation.WorkerThread;
import com.google.mlkit.common.sdkinternal.ModelType;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public final class wb {

    /* renamed from: a  reason: collision with root package name */
    private static final com.google.android.gms.common.internal.k f30145a = new com.google.android.gms.common.internal.k("RemoteModelUtils", "");

    @WorkerThread
    public static c8 a(com.google.mlkit.common.model.d dVar, com.google.mlkit.common.sdkinternal.p pVar, mb mbVar) {
        zzjd zzjdVar;
        ModelType b10 = mbVar.b();
        String b11 = dVar.b();
        g8 g8Var = new g8();
        d8 d8Var = new d8();
        d8Var.c(dVar.d());
        d8Var.d(zzje.CLOUD);
        d8Var.a(e.b(b11));
        int ordinal = b10.ordinal();
        if (ordinal == 2) {
            zzjdVar = zzjd.BASE_TRANSLATE;
        } else if (ordinal == 4) {
            zzjdVar = zzjd.CUSTOM;
        } else if (ordinal != 5) {
            zzjdVar = zzjd.TYPE_UNKNOWN;
        } else {
            zzjdVar = zzjd.BASE_DIGITAL_INK;
        }
        d8Var.b(zzjdVar);
        g8Var.b(d8Var.g());
        j8 c10 = g8Var.c();
        z7 z7Var = new z7();
        z7Var.d(mbVar.c());
        z7Var.c(mbVar.d());
        z7Var.b(Long.valueOf(mbVar.a()));
        z7Var.f(c10);
        if (mbVar.g()) {
            long j4 = pVar.j(dVar);
            if (j4 == 0) {
                f30145a.n("RemoteModelUtils", "Model downloaded without its beginning time recorded.");
            } else {
                long k10 = pVar.k(dVar);
                if (k10 == 0) {
                    k10 = SystemClock.elapsedRealtime();
                    pVar.p(dVar, k10);
                }
                z7Var.g(Long.valueOf(k10 - j4));
            }
        }
        if (mbVar.f()) {
            long j10 = pVar.j(dVar);
            if (j10 == 0) {
                f30145a.n("RemoteModelUtils", "Model downloaded without its beginning time recorded.");
            } else {
                z7Var.e(Long.valueOf(SystemClock.elapsedRealtime() - j10));
            }
        }
        return z7Var.i();
    }
}

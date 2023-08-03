package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import androidx.annotation.BinderThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@y2.d0
/* loaded from: classes2.dex */
public final class r1 extends g1 {
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private e f29182c;

    /* renamed from: d  reason: collision with root package name */
    private final int f29183d;

    public r1(@NonNull e eVar, int i4) {
        this.f29182c = eVar;
        this.f29183d = i4;
    }

    @Override // com.google.android.gms.common.internal.o
    @BinderThread
    public final void e0(int i4, @NonNull IBinder iBinder, @Nullable Bundle bundle) {
        u.l(this.f29182c, "onPostInitComplete can be called only once per call to getRemoteService");
        this.f29182c.U(i4, iBinder, bundle, this.f29183d);
        this.f29182c = null;
    }

    @Override // com.google.android.gms.common.internal.o
    @BinderThread
    public final void g(int i4, @Nullable Bundle bundle) {
        Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
    }

    @Override // com.google.android.gms.common.internal.o
    @BinderThread
    public final void t1(int i4, @NonNull IBinder iBinder, @NonNull zzj zzjVar) {
        e eVar = this.f29182c;
        u.l(eVar, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService");
        u.k(zzjVar);
        e.i0(eVar, zzjVar);
        e0(i4, iBinder, zzjVar.zza);
    }
}

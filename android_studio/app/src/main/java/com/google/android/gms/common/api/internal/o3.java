package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Status;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public abstract class o3 {

    /* renamed from: a  reason: collision with root package name */
    public final int f28839a;

    public o3(int i4) {
        this.f28839a = i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ Status e(RemoteException remoteException) {
        return new Status(19, remoteException.getClass().getSimpleName() + ": " + remoteException.getLocalizedMessage());
    }

    public abstract void a(@NonNull Status status);

    public abstract void b(@NonNull Exception exc);

    public abstract void c(v1<?> v1Var) throws DeadObjectException;

    public abstract void d(@NonNull h0 h0Var, boolean z9);
}

package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.zzn;
import com.google.android.gms.common.zzq;
import com.google.android.gms.common.zzs;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public final class i1 extends com.google.android.gms.internal.common.a implements k1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public i1(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IGoogleCertificatesApi");
    }

    @Override // com.google.android.gms.common.internal.k1
    public final boolean k1(zzs zzsVar, com.google.android.gms.dynamic.d dVar) throws RemoteException {
        Parcel n12 = n1();
        com.google.android.gms.internal.common.l.c(n12, zzsVar);
        com.google.android.gms.internal.common.l.e(n12, dVar);
        Parcel s9 = s(5, n12);
        boolean f10 = com.google.android.gms.internal.common.l.f(s9);
        s9.recycle();
        return f10;
    }

    @Override // com.google.android.gms.common.internal.k1
    public final zzq m1(zzn zznVar) throws RemoteException {
        Parcel n12 = n1();
        com.google.android.gms.internal.common.l.c(n12, zznVar);
        Parcel s9 = s(6, n12);
        zzq zzqVar = (zzq) com.google.android.gms.internal.common.l.a(s9, zzq.CREATOR);
        s9.recycle();
        return zzqVar;
    }

    @Override // com.google.android.gms.common.internal.k1
    public final boolean o() throws RemoteException {
        Parcel s9 = s(7, n1());
        boolean f10 = com.google.android.gms.internal.common.l.f(s9);
        s9.recycle();
        return f10;
    }
}

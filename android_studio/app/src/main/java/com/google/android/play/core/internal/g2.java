package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class g2 extends y1 implements i2 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public g2(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.assetpacks.protocol.IAssetModuleService");
    }

    @Override // com.google.android.play.core.internal.i2
    public final void C0(String str, Bundle bundle, k2 k2Var) throws RemoteException {
        Parcel s9 = s();
        s9.writeString(str);
        a2.b(s9, bundle);
        a2.c(s9, k2Var);
        x(10, s9);
    }

    @Override // com.google.android.play.core.internal.i2
    public final void D0(String str, Bundle bundle, Bundle bundle2, k2 k2Var) throws RemoteException {
        Parcel s9 = s();
        s9.writeString(str);
        a2.b(s9, bundle);
        a2.b(s9, bundle2);
        a2.c(s9, k2Var);
        x(9, s9);
    }

    @Override // com.google.android.play.core.internal.i2
    public final void J0(String str, Bundle bundle, Bundle bundle2, k2 k2Var) throws RemoteException {
        Parcel s9 = s();
        s9.writeString(str);
        a2.b(s9, bundle);
        a2.b(s9, bundle2);
        a2.c(s9, k2Var);
        x(7, s9);
    }

    @Override // com.google.android.play.core.internal.i2
    public final void L(String str, Bundle bundle, Bundle bundle2, k2 k2Var) throws RemoteException {
        Parcel s9 = s();
        s9.writeString(str);
        a2.b(s9, bundle);
        a2.b(s9, bundle2);
        a2.c(s9, k2Var);
        x(13, s9);
    }

    @Override // com.google.android.play.core.internal.i2
    public final void a1(String str, Bundle bundle, k2 k2Var) throws RemoteException {
        Parcel s9 = s();
        s9.writeString(str);
        a2.b(s9, bundle);
        a2.c(s9, k2Var);
        x(5, s9);
    }

    @Override // com.google.android.play.core.internal.i2
    public final void l1(String str, Bundle bundle, Bundle bundle2, k2 k2Var) throws RemoteException {
        Parcel s9 = s();
        s9.writeString(str);
        a2.b(s9, bundle);
        a2.b(s9, bundle2);
        a2.c(s9, k2Var);
        x(11, s9);
    }

    @Override // com.google.android.play.core.internal.i2
    public final void n0(String str, List list, Bundle bundle, k2 k2Var) throws RemoteException {
        Parcel s9 = s();
        s9.writeString(str);
        s9.writeTypedList(list);
        a2.b(s9, bundle);
        a2.c(s9, k2Var);
        x(12, s9);
    }

    @Override // com.google.android.play.core.internal.i2
    public final void o0(String str, Bundle bundle, Bundle bundle2, k2 k2Var) throws RemoteException {
        Parcel s9 = s();
        s9.writeString(str);
        a2.b(s9, bundle);
        a2.b(s9, bundle2);
        a2.c(s9, k2Var);
        x(6, s9);
    }

    @Override // com.google.android.play.core.internal.i2
    public final void r1(String str, List list, Bundle bundle, k2 k2Var) throws RemoteException {
        Parcel s9 = s();
        s9.writeString(str);
        s9.writeTypedList(list);
        a2.b(s9, bundle);
        a2.c(s9, k2Var);
        x(14, s9);
    }

    @Override // com.google.android.play.core.internal.i2
    public final void x0(String str, List list, Bundle bundle, k2 k2Var) throws RemoteException {
        Parcel s9 = s();
        s9.writeString(str);
        s9.writeTypedList(list);
        a2.b(s9, bundle);
        a2.c(s9, k2Var);
        x(2, s9);
    }
}

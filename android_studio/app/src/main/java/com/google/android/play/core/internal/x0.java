package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class x0 extends y1 implements a1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public x0(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.splitinstall.protocol.ISplitInstallService");
    }

    @Override // com.google.android.play.core.internal.a1
    public final void E1(String str, List list, Bundle bundle, c1 c1Var) throws RemoteException {
        Parcel s9 = s();
        s9.writeString(str);
        s9.writeTypedList(list);
        a2.b(s9, bundle);
        a2.c(s9, c1Var);
        x(2, s9);
    }

    @Override // com.google.android.play.core.internal.a1
    public final void L0(String str, int i4, c1 c1Var) throws RemoteException {
        Parcel s9 = s();
        s9.writeString(str);
        s9.writeInt(i4);
        a2.c(s9, c1Var);
        x(5, s9);
    }

    @Override // com.google.android.play.core.internal.a1
    public final void N(String str, List list, Bundle bundle, c1 c1Var) throws RemoteException {
        Parcel s9 = s();
        s9.writeString(str);
        s9.writeTypedList(list);
        a2.b(s9, bundle);
        a2.c(s9, c1Var);
        x(8, s9);
    }

    @Override // com.google.android.play.core.internal.a1
    public final void S(String str, List list, Bundle bundle, c1 c1Var) throws RemoteException {
        Parcel s9 = s();
        s9.writeString(str);
        s9.writeTypedList(list);
        a2.b(s9, bundle);
        a2.c(s9, c1Var);
        x(13, s9);
    }

    @Override // com.google.android.play.core.internal.a1
    public final void T0(String str, c1 c1Var) throws RemoteException {
        Parcel s9 = s();
        s9.writeString(str);
        a2.c(s9, c1Var);
        x(6, s9);
    }

    @Override // com.google.android.play.core.internal.a1
    public final void Z(String str, List list, Bundle bundle, c1 c1Var) throws RemoteException {
        Parcel s9 = s();
        s9.writeString(str);
        s9.writeTypedList(list);
        a2.b(s9, bundle);
        a2.c(s9, c1Var);
        x(14, s9);
    }

    @Override // com.google.android.play.core.internal.a1
    public final void l0(String str, int i4, Bundle bundle, c1 c1Var) throws RemoteException {
        Parcel s9 = s();
        s9.writeString(str);
        s9.writeInt(i4);
        a2.b(s9, bundle);
        a2.c(s9, c1Var);
        x(4, s9);
    }

    @Override // com.google.android.play.core.internal.a1
    public final void u1(String str, List list, Bundle bundle, c1 c1Var) throws RemoteException {
        Parcel s9 = s();
        s9.writeString(str);
        s9.writeTypedList(list);
        a2.b(s9, bundle);
        a2.c(s9, c1Var);
        x(7, s9);
    }
}

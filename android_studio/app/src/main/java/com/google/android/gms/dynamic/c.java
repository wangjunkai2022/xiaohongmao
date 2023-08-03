package com.google.android.gms.dynamic;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.d;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public interface c extends IInterface {

    /* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
    /* loaded from: classes2.dex */
    public static abstract class a extends com.google.android.gms.internal.common.k implements c {
        public a() {
            super("com.google.android.gms.dynamic.IFragmentWrapper");
        }

        @NonNull
        public static c x(@NonNull IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamic.IFragmentWrapper");
            return queryLocalInterface instanceof c ? (c) queryLocalInterface : new q(iBinder);
        }

        @Override // com.google.android.gms.internal.common.k
        protected final boolean s(int i4, @NonNull Parcel parcel, @NonNull Parcel parcel2, int i10) throws RemoteException {
            switch (i4) {
                case 2:
                    d o9 = o();
                    parcel2.writeNoException();
                    com.google.android.gms.internal.common.l.e(parcel2, o9);
                    return true;
                case 3:
                    Bundle b10 = b();
                    parcel2.writeNoException();
                    com.google.android.gms.internal.common.l.d(parcel2, b10);
                    return true;
                case 4:
                    int zzb = zzb();
                    parcel2.writeNoException();
                    parcel2.writeInt(zzb);
                    return true;
                case 5:
                    c y12 = y1();
                    parcel2.writeNoException();
                    com.google.android.gms.internal.common.l.e(parcel2, y12);
                    return true;
                case 6:
                    d D = D();
                    parcel2.writeNoException();
                    com.google.android.gms.internal.common.l.e(parcel2, D);
                    return true;
                case 7:
                    boolean z12 = z1();
                    parcel2.writeNoException();
                    com.google.android.gms.internal.common.l.b(parcel2, z12);
                    return true;
                case 8:
                    String A0 = A0();
                    parcel2.writeNoException();
                    parcel2.writeString(A0);
                    return true;
                case 9:
                    c n9 = n();
                    parcel2.writeNoException();
                    com.google.android.gms.internal.common.l.e(parcel2, n9);
                    return true;
                case 10:
                    int e4 = e();
                    parcel2.writeNoException();
                    parcel2.writeInt(e4);
                    return true;
                case 11:
                    boolean I1 = I1();
                    parcel2.writeNoException();
                    com.google.android.gms.internal.common.l.b(parcel2, I1);
                    return true;
                case 12:
                    d Q = Q();
                    parcel2.writeNoException();
                    com.google.android.gms.internal.common.l.e(parcel2, Q);
                    return true;
                case 13:
                    boolean w12 = w1();
                    parcel2.writeNoException();
                    com.google.android.gms.internal.common.l.b(parcel2, w12);
                    return true;
                case 14:
                    boolean x12 = x1();
                    parcel2.writeNoException();
                    com.google.android.gms.internal.common.l.b(parcel2, x12);
                    return true;
                case 15:
                    boolean U = U();
                    parcel2.writeNoException();
                    com.google.android.gms.internal.common.l.b(parcel2, U);
                    return true;
                case 16:
                    boolean a02 = a0();
                    parcel2.writeNoException();
                    com.google.android.gms.internal.common.l.b(parcel2, a02);
                    return true;
                case 17:
                    boolean C = C();
                    parcel2.writeNoException();
                    com.google.android.gms.internal.common.l.b(parcel2, C);
                    return true;
                case 18:
                    boolean M = M();
                    parcel2.writeNoException();
                    com.google.android.gms.internal.common.l.b(parcel2, M);
                    return true;
                case 19:
                    boolean H1 = H1();
                    parcel2.writeNoException();
                    com.google.android.gms.internal.common.l.b(parcel2, H1);
                    return true;
                case 20:
                    v1(d.a.x(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 21:
                    O0(com.google.android.gms.internal.common.l.f(parcel));
                    parcel2.writeNoException();
                    return true;
                case 22:
                    U0(com.google.android.gms.internal.common.l.f(parcel));
                    parcel2.writeNoException();
                    return true;
                case 23:
                    b1(com.google.android.gms.internal.common.l.f(parcel));
                    parcel2.writeNoException();
                    return true;
                case 24:
                    B1(com.google.android.gms.internal.common.l.f(parcel));
                    parcel2.writeNoException();
                    return true;
                case 25:
                    d1((Intent) com.google.android.gms.internal.common.l.a(parcel, Intent.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 26:
                    g1((Intent) com.google.android.gms.internal.common.l.a(parcel, Intent.CREATOR), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 27:
                    r0(d.a.x(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                default:
                    return false;
            }
        }
    }

    @Nullable
    String A0() throws RemoteException;

    void B1(boolean z9) throws RemoteException;

    boolean C() throws RemoteException;

    @NonNull
    d D() throws RemoteException;

    boolean H1() throws RemoteException;

    boolean I1() throws RemoteException;

    boolean M() throws RemoteException;

    void O0(boolean z9) throws RemoteException;

    @NonNull
    d Q() throws RemoteException;

    boolean U() throws RemoteException;

    void U0(boolean z9) throws RemoteException;

    boolean a0() throws RemoteException;

    @Nullable
    Bundle b() throws RemoteException;

    void b1(boolean z9) throws RemoteException;

    void d1(@NonNull Intent intent) throws RemoteException;

    int e() throws RemoteException;

    void g1(@NonNull Intent intent, int i4) throws RemoteException;

    @Nullable
    c n() throws RemoteException;

    @NonNull
    d o() throws RemoteException;

    void r0(@NonNull d dVar) throws RemoteException;

    void v1(@NonNull d dVar) throws RemoteException;

    boolean w1() throws RemoteException;

    boolean x1() throws RemoteException;

    @Nullable
    c y1() throws RemoteException;

    boolean z1() throws RemoteException;

    int zzb() throws RemoteException;
}

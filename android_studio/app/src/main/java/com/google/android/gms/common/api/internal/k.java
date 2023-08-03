package com.google.android.gms.common.api.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Status;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public interface k extends IInterface {

    /* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    /* loaded from: classes2.dex */
    public static abstract class a extends com.google.android.gms.internal.base.b implements k {
        public a() {
            super("com.google.android.gms.common.api.internal.IStatusCallback");
        }

        @NonNull
        public static k K1(@NonNull IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.api.internal.IStatusCallback");
            return queryLocalInterface instanceof k ? (k) queryLocalInterface : new d2(iBinder);
        }

        @Override // com.google.android.gms.internal.base.b
        protected final boolean J1(int i4, @NonNull Parcel parcel, @NonNull Parcel parcel2, int i10) throws RemoteException {
            if (i4 == 1) {
                c1((Status) com.google.android.gms.internal.base.c.a(parcel, Status.CREATOR));
                return true;
            }
            return false;
        }
    }

    void c1(@NonNull Status status) throws RemoteException;
}

package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.annotation.NonNull;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public interface n extends IInterface {

    /* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
    /* loaded from: classes2.dex */
    public static abstract class a extends com.google.android.gms.internal.common.k implements n {
        public a() {
            super("com.google.android.gms.common.internal.ICancelToken");
        }

        @NonNull
        public static n x(@NonNull IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ICancelToken");
            return queryLocalInterface instanceof n ? (n) queryLocalInterface : new j2(iBinder);
        }

        @Override // com.google.android.gms.internal.common.k
        protected final boolean s(int i4, @NonNull Parcel parcel, @NonNull Parcel parcel2, int i10) throws RemoteException {
            if (i4 == 2) {
                cancel();
                return true;
            }
            return false;
        }
    }

    void cancel() throws RemoteException;
}

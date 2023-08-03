package com.google.android.gms.common.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public interface p extends IInterface {

    /* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
    /* loaded from: classes2.dex */
    public static abstract class a extends Binder implements p {
        public a() {
            attachInterface(this, "com.google.android.gms.common.internal.IGmsServiceBroker");
        }

        @Override // android.os.IInterface
        @NonNull
        @u2.a
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public final boolean onTransact(int i4, @NonNull Parcel parcel, @Nullable Parcel parcel2, int i10) throws RemoteException {
            o f1Var;
            if (i4 > 16777215) {
                return super.onTransact(i4, parcel, parcel2, i10);
            }
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                f1Var = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsCallbacks");
                f1Var = queryLocalInterface instanceof o ? (o) queryLocalInterface : new f1(readStrongBinder);
            }
            if (i4 == 46) {
                Y0(f1Var, parcel.readInt() != 0 ? GetServiceRequest.CREATOR.createFromParcel(parcel) : null);
                u.k(parcel2);
                parcel2.writeNoException();
                return true;
            } else if (i4 == 47) {
                if (parcel.readInt() != 0) {
                    zzaj.CREATOR.createFromParcel(parcel);
                }
                throw new UnsupportedOperationException();
            } else {
                parcel.readInt();
                if (i4 != 4) {
                    parcel.readString();
                    if (i4 != 1) {
                        if (i4 != 2 && i4 != 23 && i4 != 25 && i4 != 27) {
                            if (i4 != 30) {
                                if (i4 == 34) {
                                    parcel.readString();
                                } else if (i4 != 41 && i4 != 43 && i4 != 37 && i4 != 38) {
                                    switch (i4) {
                                        case 9:
                                            parcel.readString();
                                            parcel.createStringArray();
                                            parcel.readString();
                                            parcel.readStrongBinder();
                                            parcel.readString();
                                            if (parcel.readInt() != 0) {
                                                Bundle bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                                                break;
                                            }
                                            break;
                                        case 10:
                                            parcel.readString();
                                            parcel.createStringArray();
                                            break;
                                        case 19:
                                            parcel.readStrongBinder();
                                            if (parcel.readInt() != 0) {
                                                Bundle bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                                                break;
                                            }
                                            break;
                                    }
                                }
                            }
                            parcel.createStringArray();
                            parcel.readString();
                            if (parcel.readInt() != 0) {
                                Bundle bundle3 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                            }
                        }
                        if (parcel.readInt() != 0) {
                            Bundle bundle4 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                    } else {
                        parcel.readString();
                        parcel.createStringArray();
                        parcel.readString();
                        if (parcel.readInt() != 0) {
                            Bundle bundle5 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                    }
                }
                throw new UnsupportedOperationException();
            }
        }
    }

    @u2.a
    void Y0(@NonNull o oVar, @Nullable GetServiceRequest getServiceRequest) throws RemoteException;
}

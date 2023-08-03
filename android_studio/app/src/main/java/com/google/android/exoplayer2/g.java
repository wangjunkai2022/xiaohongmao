package com.google.android.exoplayer2;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.common.collect.ImmutableList;
import java.util.Collection;
import java.util.List;

/* compiled from: BundleListRetriever.java */
/* loaded from: classes2.dex */
public final class g extends Binder {

    /* renamed from: d  reason: collision with root package name */
    private static final int f23602d;

    /* renamed from: e  reason: collision with root package name */
    private static final int f23603e = 0;

    /* renamed from: f  reason: collision with root package name */
    private static final int f23604f = 1;

    /* renamed from: g  reason: collision with root package name */
    private static final int f23605g = 2;

    /* renamed from: c  reason: collision with root package name */
    private final ImmutableList<Bundle> f23606c;

    static {
        f23602d = com.google.android.exoplayer2.util.z0.f27743a >= 30 ? IBinder.getSuggestedMaxIpcSizeBytes() : 65536;
    }

    public g(List<Bundle> list) {
        this.f23606c = ImmutableList.copyOf((Collection) list);
    }

    public static ImmutableList<Bundle> a(IBinder iBinder) {
        int readInt;
        ImmutableList.a builder = ImmutableList.builder();
        int i4 = 1;
        int i10 = 0;
        while (i4 != 0) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInt(i10);
                try {
                    iBinder.transact(1, obtain, obtain2, 0);
                    while (true) {
                        readInt = obtain2.readInt();
                        if (readInt == 1) {
                            builder.g((Bundle) com.google.android.exoplayer2.util.a.g(obtain2.readBundle()));
                            i10++;
                        }
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    i4 = readInt;
                } catch (RemoteException e4) {
                    throw new RuntimeException(e4);
                }
            } catch (Throwable th) {
                obtain2.recycle();
                obtain.recycle();
                throw th;
            }
        }
        return builder.e();
    }

    @Override // android.os.Binder
    protected boolean onTransact(int i4, Parcel parcel, @Nullable Parcel parcel2, int i10) throws RemoteException {
        if (i4 != 1) {
            return super.onTransact(i4, parcel, parcel2, i10);
        }
        if (parcel2 == null) {
            return false;
        }
        int size = this.f23606c.size();
        int readInt = parcel.readInt();
        while (readInt < size && parcel2.dataSize() < f23602d) {
            parcel2.writeInt(1);
            parcel2.writeBundle(this.f23606c.get(readInt));
            readInt++;
        }
        parcel2.writeInt(readInt < size ? 2 : 0);
        return true;
    }
}

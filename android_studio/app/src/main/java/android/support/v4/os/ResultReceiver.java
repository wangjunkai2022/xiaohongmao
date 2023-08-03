package android.support.v4.os;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.v4.os.a;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

@SuppressLint({"BanParcelableUsage"})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class ResultReceiver implements Parcelable {
    public static final Parcelable.Creator<ResultReceiver> CREATOR = new a();
    final Handler mHandler;
    final boolean mLocal;
    android.support.v4.os.a mReceiver;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator<ResultReceiver> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ResultReceiver createFromParcel(Parcel parcel) {
            return new ResultReceiver(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public ResultReceiver[] newArray(int i4) {
            return new ResultReceiver[i4];
        }
    }

    /* loaded from: classes.dex */
    class b extends a.b {
        b() {
        }

        @Override // android.support.v4.os.a
        public void K0(int i4, Bundle bundle) {
            ResultReceiver resultReceiver = ResultReceiver.this;
            Handler handler = resultReceiver.mHandler;
            if (handler != null) {
                handler.post(new c(i4, bundle));
            } else {
                resultReceiver.onReceiveResult(i4, bundle);
            }
        }
    }

    /* loaded from: classes.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final int f392a;

        /* renamed from: b  reason: collision with root package name */
        final Bundle f393b;

        c(int i4, Bundle bundle) {
            this.f392a = i4;
            this.f393b = bundle;
        }

        @Override // java.lang.Runnable
        public void run() {
            ResultReceiver.this.onReceiveResult(this.f392a, this.f393b);
        }
    }

    public ResultReceiver(Handler handler) {
        this.mLocal = true;
        this.mHandler = handler;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    protected void onReceiveResult(int i4, Bundle bundle) {
    }

    public void send(int i4, Bundle bundle) {
        if (this.mLocal) {
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.post(new c(i4, bundle));
                return;
            } else {
                onReceiveResult(i4, bundle);
                return;
            }
        }
        android.support.v4.os.a aVar = this.mReceiver;
        if (aVar != null) {
            try {
                aVar.K0(i4, bundle);
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i4) {
        synchronized (this) {
            if (this.mReceiver == null) {
                this.mReceiver = new b();
            }
            parcel.writeStrongBinder(this.mReceiver.asBinder());
        }
    }

    ResultReceiver(Parcel parcel) {
        this.mLocal = false;
        this.mHandler = null;
        this.mReceiver = a.b.s(parcel.readStrongBinder());
    }
}

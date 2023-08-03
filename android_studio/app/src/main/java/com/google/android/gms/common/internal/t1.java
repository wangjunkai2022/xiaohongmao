package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.BinderThread;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.e;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public final class t1 extends e1 {
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public final IBinder f29201g;

    /* renamed from: h  reason: collision with root package name */
    final /* synthetic */ e f29202h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @BinderThread
    public t1(e eVar, @Nullable int i4, @Nullable IBinder iBinder, Bundle bundle) {
        super(eVar, i4, bundle);
        this.f29202h = eVar;
        this.f29201g = iBinder;
    }

    @Override // com.google.android.gms.common.internal.e1
    protected final void f(ConnectionResult connectionResult) {
        if (this.f29202h.f29094v != null) {
            this.f29202h.f29094v.z(connectionResult);
        }
        this.f29202h.S(connectionResult);
    }

    @Override // com.google.android.gms.common.internal.e1
    protected final boolean g() {
        e.a aVar;
        e.a aVar2;
        try {
            IBinder iBinder = this.f29201g;
            u.k(iBinder);
            String interfaceDescriptor = iBinder.getInterfaceDescriptor();
            if (!this.f29202h.L().equals(interfaceDescriptor)) {
                String L = this.f29202h.L();
                StringBuilder sb = new StringBuilder(String.valueOf(L).length() + 34 + String.valueOf(interfaceDescriptor).length());
                sb.append("service descriptor mismatch: ");
                sb.append(L);
                sb.append(" vs. ");
                sb.append(interfaceDescriptor);
                Log.w("GmsClient", sb.toString());
                return false;
            }
            IInterface y9 = this.f29202h.y(this.f29201g);
            if (y9 == null || !(e.m0(this.f29202h, 2, 4, y9) || e.m0(this.f29202h, 3, 4, y9))) {
                return false;
            }
            this.f29202h.f29098z = null;
            Bundle D = this.f29202h.D();
            e eVar = this.f29202h;
            aVar = eVar.f29093u;
            if (aVar != null) {
                aVar2 = eVar.f29093u;
                aVar2.s(D);
                return true;
            }
            return true;
        } catch (RemoteException unused) {
            Log.w("GmsClient", "service probably died");
            return false;
        }
    }
}

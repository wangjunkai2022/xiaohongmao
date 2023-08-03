package com.google.android.gms.common.internal;

import android.os.Bundle;
import androidx.annotation.BinderThread;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public final class u1 extends e1 {

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ e f29203g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @BinderThread
    public u1(e eVar, @Nullable int i4, Bundle bundle) {
        super(eVar, i4, null);
        this.f29203g = eVar;
    }

    @Override // com.google.android.gms.common.internal.e1
    protected final void f(ConnectionResult connectionResult) {
        if (this.f29203g.z() && e.n0(this.f29203g)) {
            e.j0(this.f29203g, 16);
            return;
        }
        this.f29203g.f29088p.a(connectionResult);
        this.f29203g.S(connectionResult);
    }

    @Override // com.google.android.gms.common.internal.e1
    protected final boolean g() {
        this.f29203g.f29088p.a(ConnectionResult.RESULT_SUCCESS);
        return true;
    }
}

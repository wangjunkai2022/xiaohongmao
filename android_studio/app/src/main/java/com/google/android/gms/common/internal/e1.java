package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Bundle;
import androidx.annotation.BinderThread;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
abstract class e1 extends q1<Boolean> {

    /* renamed from: d  reason: collision with root package name */
    public final int f29102d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final Bundle f29103e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ e f29104f;

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @BinderThread
    public e1(e eVar, @Nullable int i4, Bundle bundle) {
        super(eVar, Boolean.TRUE);
        this.f29104f = eVar;
        this.f29102d = i4;
        this.f29103e = bundle;
    }

    @Override // com.google.android.gms.common.internal.q1
    protected final /* bridge */ /* synthetic */ void a(Boolean bool) {
        if (this.f29102d != 0) {
            this.f29104f.o0(1, null);
            Bundle bundle = this.f29103e;
            f(new ConnectionResult(this.f29102d, bundle != null ? (PendingIntent) bundle.getParcelable(e.G) : null));
        } else if (g()) {
        } else {
            this.f29104f.o0(1, null);
            f(new ConnectionResult(8, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.q1
    public final void b() {
    }

    protected abstract void f(ConnectionResult connectionResult);

    protected abstract boolean g();
}

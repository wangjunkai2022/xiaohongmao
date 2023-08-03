package com.google.android.gms.common.internal.service;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.e;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
final class e extends b {

    /* renamed from: c  reason: collision with root package name */
    private final e.b<Status> f29194c;

    public e(e.b<Status> bVar) {
        this.f29194c = bVar;
    }

    @Override // com.google.android.gms.common.internal.service.b, com.google.android.gms.common.internal.service.l
    public final void i1(int i4) throws RemoteException {
        this.f29194c.a(new Status(i4));
    }
}

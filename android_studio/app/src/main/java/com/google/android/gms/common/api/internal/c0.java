package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.b;
import com.google.android.gms.common.api.internal.n;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public abstract class c0<A extends a.b, L> {

    /* renamed from: a  reason: collision with root package name */
    private final n.a<L> f28653a;

    /* JADX INFO: Access modifiers changed from: protected */
    @u2.a
    public c0(@NonNull n.a<L> aVar) {
        this.f28653a = aVar;
    }

    @NonNull
    @u2.a
    public n.a<L> a() {
        return this.f28653a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @u2.a
    public abstract void b(@NonNull A a10, @NonNull com.google.android.gms.tasks.l<Boolean> lVar) throws RemoteException;
}

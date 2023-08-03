package com.google.android.gms.common.api.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.e;
import com.google.android.gms.common.api.internal.k;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public class x extends k.a {
    @u2.a

    /* renamed from: c  reason: collision with root package name */
    private final e.b<Status> f28926c;

    @u2.a
    public x(@NonNull e.b<Status> bVar) {
        this.f28926c = bVar;
    }

    @Override // com.google.android.gms.common.api.internal.k
    @u2.a
    public void c1(@NonNull Status status) {
        this.f28926c.a(status);
    }
}

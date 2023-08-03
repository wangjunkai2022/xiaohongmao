package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.l;
import com.google.android.gms.common.internal.t;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
final class w0 implements l.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.common.api.l f29208a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.tasks.l f29209b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ t.a f29210c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ z0 f29211d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w0(com.google.android.gms.common.api.l lVar, com.google.android.gms.tasks.l lVar2, t.a aVar, z0 z0Var) {
        this.f29208a = lVar;
        this.f29209b = lVar2;
        this.f29210c = aVar;
        this.f29211d = z0Var;
    }

    @Override // com.google.android.gms.common.api.l.a
    public final void a(Status status) {
        if (status.isSuccess()) {
            this.f29209b.c(this.f29210c.a(this.f29208a.e(0L, TimeUnit.MILLISECONDS)));
            return;
        }
        this.f29209b.b(c.a(status));
    }
}

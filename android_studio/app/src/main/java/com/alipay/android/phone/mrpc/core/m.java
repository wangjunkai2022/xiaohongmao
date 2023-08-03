package com.alipay.android.phone.mrpc.core;

import android.content.Context;

/* loaded from: classes.dex */
final class m implements k {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ b f6642a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ l f6643b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(l lVar, b bVar) {
        this.f6643b = lVar;
        this.f6642a = bVar;
    }

    @Override // com.alipay.android.phone.mrpc.core.k
    public final String a() {
        return this.f6642a.a();
    }

    @Override // com.alipay.android.phone.mrpc.core.k
    public final c b() {
        Context context;
        context = this.f6643b.f6641a;
        return p.c(context.getApplicationContext());
    }

    @Override // com.alipay.android.phone.mrpc.core.k
    public final b c() {
        return this.f6642a;
    }

    @Override // com.alipay.android.phone.mrpc.core.k
    public final boolean d() {
        return this.f6642a.d();
    }
}

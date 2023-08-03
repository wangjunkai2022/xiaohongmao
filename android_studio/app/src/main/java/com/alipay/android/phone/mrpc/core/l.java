package com.alipay.android.phone.mrpc.core;

import android.content.Context;

/* loaded from: classes.dex */
public final class l extends a0 {

    /* renamed from: a  reason: collision with root package name */
    private Context f6641a;

    public l(Context context) {
        this.f6641a = context;
    }

    @Override // com.alipay.android.phone.mrpc.core.a0
    public final <T> T a(Class<T> cls, b bVar) {
        return (T) new b0(new m(this, bVar)).b(cls);
    }
}

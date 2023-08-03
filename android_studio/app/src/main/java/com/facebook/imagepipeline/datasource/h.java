package com.facebook.imagepipeline.datasource;

import com.facebook.infer.annotation.Nullsafe;

/* compiled from: SettableDataSource.java */
@s7.d
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public final class h<T> extends com.facebook.datasource.a<com.facebook.common.references.a<T>> {
    private h() {
    }

    public static <V> h<V> z() {
        return new h<>();
    }

    @Override // com.facebook.datasource.a, com.facebook.datasource.d
    @r7.h
    /* renamed from: A */
    public com.facebook.common.references.a<T> a() {
        return com.facebook.common.references.a.h((com.facebook.common.references.a) super.a());
    }

    public boolean B(@r7.h com.facebook.common.references.a<T> valueRef) {
        return super.v(com.facebook.common.references.a.h(valueRef), true, null);
    }

    public boolean C(Throwable throwable) {
        return super.p(throwable);
    }

    @Override // com.facebook.datasource.a
    public boolean s(float progress) {
        return super.s(progress);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.datasource.a
    /* renamed from: y */
    public void i(@r7.h com.facebook.common.references.a<T> result) {
        com.facebook.common.references.a.k(result);
    }
}

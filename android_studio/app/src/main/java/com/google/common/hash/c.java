package com.google.common.hash;

import com.google.errorprone.annotations.Immutable;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* compiled from: AbstractHashFunction.java */
@Immutable
/* loaded from: classes2.dex */
abstract class c implements m {
    @Override // com.google.common.hash.m
    public l a(CharSequence charSequence, Charset charset) {
        return h().g(charSequence, charset).i();
    }

    @Override // com.google.common.hash.m
    public l b(CharSequence charSequence) {
        return d(charSequence.length() * 2).d(charSequence).i();
    }

    @Override // com.google.common.hash.m
    public n d(int i4) {
        com.google.common.base.a0.k(i4 >= 0, "expectedInputSize must be >= 0 but was %s", i4);
        return h();
    }

    @Override // com.google.common.hash.m
    public l e(byte[] bArr) {
        return m(bArr, 0, bArr.length);
    }

    @Override // com.google.common.hash.m
    public l i(int i4) {
        return d(4).putInt(i4).i();
    }

    @Override // com.google.common.hash.m
    public <T> l j(T t9, Funnel<? super T> funnel) {
        return h().h(t9, funnel).i();
    }

    @Override // com.google.common.hash.m
    public l k(ByteBuffer byteBuffer) {
        return d(byteBuffer.remaining()).f(byteBuffer).i();
    }

    @Override // com.google.common.hash.m
    public l l(long j4) {
        return d(8).putLong(j4).i();
    }

    @Override // com.google.common.hash.m
    public l m(byte[] bArr, int i4, int i10) {
        com.google.common.base.a0.f0(i4, i4 + i10, bArr.length);
        return d(i10).e(bArr, i4, i10).i();
    }
}

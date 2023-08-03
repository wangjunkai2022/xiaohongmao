package com.google.common.hash;

import com.google.errorprone.annotations.Immutable;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* compiled from: HashFunction.java */
@Immutable
@h3.a
/* loaded from: classes2.dex */
public interface m {
    l a(CharSequence charSequence, Charset charset);

    l b(CharSequence charSequence);

    int c();

    n d(int i4);

    l e(byte[] bArr);

    n h();

    l i(int i4);

    <T> l j(T t9, Funnel<? super T> funnel);

    l k(ByteBuffer byteBuffer);

    l l(long j4);

    l m(byte[] bArr, int i4, int i10);
}

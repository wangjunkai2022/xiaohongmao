package com.google.common.hash;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* compiled from: Hasher.java */
@CanIgnoreReturnValue
@h3.a
/* loaded from: classes2.dex */
public interface n extends a0 {
    @Override // com.google.common.hash.a0
    n a(byte[] bArr);

    @Override // com.google.common.hash.a0
    n b(char c10);

    @Override // com.google.common.hash.a0
    n c(byte b10);

    @Override // com.google.common.hash.a0
    n d(CharSequence charSequence);

    @Override // com.google.common.hash.a0
    n e(byte[] bArr, int i4, int i10);

    @Override // com.google.common.hash.a0
    n f(ByteBuffer byteBuffer);

    @Override // com.google.common.hash.a0
    n g(CharSequence charSequence, Charset charset);

    <T> n h(T t9, Funnel<? super T> funnel);

    @Deprecated
    int hashCode();

    l i();

    @Override // com.google.common.hash.a0
    n putBoolean(boolean z9);

    @Override // com.google.common.hash.a0
    n putDouble(double d4);

    @Override // com.google.common.hash.a0
    n putFloat(float f10);

    @Override // com.google.common.hash.a0
    n putInt(int i4);

    @Override // com.google.common.hash.a0
    n putLong(long j4);

    @Override // com.google.common.hash.a0
    n putShort(short s9);
}

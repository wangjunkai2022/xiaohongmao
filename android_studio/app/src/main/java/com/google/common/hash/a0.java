package com.google.common.hash;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* compiled from: PrimitiveSink.java */
@CanIgnoreReturnValue
@h3.a
/* loaded from: classes2.dex */
public interface a0 {
    a0 a(byte[] bArr);

    a0 b(char c10);

    a0 c(byte b10);

    a0 d(CharSequence charSequence);

    a0 e(byte[] bArr, int i4, int i10);

    a0 f(ByteBuffer byteBuffer);

    a0 g(CharSequence charSequence, Charset charset);

    a0 putBoolean(boolean z9);

    a0 putDouble(double d4);

    a0 putFloat(float f10);

    a0 putInt(int i4);

    a0 putLong(long j4);

    a0 putShort(short s9);
}

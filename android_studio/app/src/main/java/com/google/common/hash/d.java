package com.google.common.hash;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* compiled from: AbstractHasher.java */
@CanIgnoreReturnValue
/* loaded from: classes2.dex */
abstract class d implements n {
    @Override // com.google.common.hash.n
    public <T> n h(T t9, Funnel<? super T> funnel) {
        funnel.funnel(t9, this);
        return this;
    }

    @Override // com.google.common.hash.n, com.google.common.hash.a0
    public n a(byte[] bArr) {
        return e(bArr, 0, bArr.length);
    }

    @Override // com.google.common.hash.n, com.google.common.hash.a0
    public n b(char c10) {
        c((byte) c10);
        c((byte) (c10 >>> '\b'));
        return this;
    }

    @Override // com.google.common.hash.n, com.google.common.hash.a0
    public n d(CharSequence charSequence) {
        int length = charSequence.length();
        for (int i4 = 0; i4 < length; i4++) {
            b(charSequence.charAt(i4));
        }
        return this;
    }

    @Override // com.google.common.hash.n, com.google.common.hash.a0
    public n e(byte[] bArr, int i4, int i10) {
        com.google.common.base.a0.f0(i4, i4 + i10, bArr.length);
        for (int i11 = 0; i11 < i10; i11++) {
            c(bArr[i4 + i11]);
        }
        return this;
    }

    @Override // com.google.common.hash.n, com.google.common.hash.a0
    public n f(ByteBuffer byteBuffer) {
        if (byteBuffer.hasArray()) {
            e(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
            byteBuffer.position(byteBuffer.limit());
        } else {
            for (int remaining = byteBuffer.remaining(); remaining > 0; remaining--) {
                c(byteBuffer.get());
            }
        }
        return this;
    }

    @Override // com.google.common.hash.n, com.google.common.hash.a0
    public n g(CharSequence charSequence, Charset charset) {
        return a(charSequence.toString().getBytes(charset));
    }

    @Override // com.google.common.hash.n, com.google.common.hash.a0
    public final n putBoolean(boolean z9) {
        return c(z9 ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.common.hash.n, com.google.common.hash.a0
    public final n putDouble(double d4) {
        return putLong(Double.doubleToRawLongBits(d4));
    }

    @Override // com.google.common.hash.n, com.google.common.hash.a0
    public final n putFloat(float f10) {
        return putInt(Float.floatToRawIntBits(f10));
    }

    @Override // com.google.common.hash.n, com.google.common.hash.a0
    public n putInt(int i4) {
        c((byte) i4);
        c((byte) (i4 >>> 8));
        c((byte) (i4 >>> 16));
        c((byte) (i4 >>> 24));
        return this;
    }

    @Override // com.google.common.hash.n, com.google.common.hash.a0
    public n putLong(long j4) {
        for (int i4 = 0; i4 < 64; i4 += 8) {
            c((byte) (j4 >>> i4));
        }
        return this;
    }

    @Override // com.google.common.hash.n, com.google.common.hash.a0
    public n putShort(short s9) {
        c((byte) s9);
        c((byte) (s9 >>> 8));
        return this;
    }
}

package com.google.common.hash;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* compiled from: AbstractByteHasher.java */
@CanIgnoreReturnValue
/* loaded from: classes2.dex */
abstract class a extends d {

    /* renamed from: a  reason: collision with root package name */
    private final ByteBuffer f34232a = ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN);

    private n j(int i4) {
        try {
            n(this.f34232a.array(), 0, i4);
            return this;
        } finally {
            this.f34232a.clear();
        }
    }

    protected abstract void k(byte b10);

    protected void l(ByteBuffer byteBuffer) {
        if (byteBuffer.hasArray()) {
            n(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
            byteBuffer.position(byteBuffer.limit());
            return;
        }
        for (int remaining = byteBuffer.remaining(); remaining > 0; remaining--) {
            k(byteBuffer.get());
        }
    }

    protected void m(byte[] bArr) {
        n(bArr, 0, bArr.length);
    }

    protected void n(byte[] bArr, int i4, int i10) {
        for (int i11 = i4; i11 < i4 + i10; i11++) {
            k(bArr[i11]);
        }
    }

    @Override // com.google.common.hash.d, com.google.common.hash.n, com.google.common.hash.a0
    public n a(byte[] bArr) {
        com.google.common.base.a0.E(bArr);
        m(bArr);
        return this;
    }

    @Override // com.google.common.hash.d, com.google.common.hash.n, com.google.common.hash.a0
    public n b(char c10) {
        this.f34232a.putChar(c10);
        return j(2);
    }

    @Override // com.google.common.hash.n, com.google.common.hash.a0
    public n c(byte b10) {
        k(b10);
        return this;
    }

    @Override // com.google.common.hash.d, com.google.common.hash.n, com.google.common.hash.a0
    public n e(byte[] bArr, int i4, int i10) {
        com.google.common.base.a0.f0(i4, i4 + i10, bArr.length);
        n(bArr, i4, i10);
        return this;
    }

    @Override // com.google.common.hash.d, com.google.common.hash.n, com.google.common.hash.a0
    public n f(ByteBuffer byteBuffer) {
        l(byteBuffer);
        return this;
    }

    @Override // com.google.common.hash.d, com.google.common.hash.n, com.google.common.hash.a0
    public n putInt(int i4) {
        this.f34232a.putInt(i4);
        return j(4);
    }

    @Override // com.google.common.hash.d, com.google.common.hash.n, com.google.common.hash.a0
    public n putLong(long j4) {
        this.f34232a.putLong(j4);
        return j(8);
    }

    @Override // com.google.common.hash.d, com.google.common.hash.n, com.google.common.hash.a0
    public n putShort(short s9) {
        this.f34232a.putShort(s9);
        return j(2);
    }
}

package com.google.common.hash;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* compiled from: AbstractStreamingHasher.java */
@CanIgnoreReturnValue
/* loaded from: classes2.dex */
abstract class f extends d {

    /* renamed from: a  reason: collision with root package name */
    private final ByteBuffer f34280a;

    /* renamed from: b  reason: collision with root package name */
    private final int f34281b;

    /* renamed from: c  reason: collision with root package name */
    private final int f34282c;

    /* JADX INFO: Access modifiers changed from: protected */
    public f(int i4) {
        this(i4, i4);
    }

    private void k() {
        this.f34280a.flip();
        while (this.f34280a.remaining() >= this.f34282c) {
            m(this.f34280a);
        }
        this.f34280a.compact();
    }

    private void l() {
        if (this.f34280a.remaining() < 8) {
            k();
        }
    }

    private n o(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() <= this.f34280a.remaining()) {
            this.f34280a.put(byteBuffer);
            l();
            return this;
        }
        int position = this.f34281b - this.f34280a.position();
        for (int i4 = 0; i4 < position; i4++) {
            this.f34280a.put(byteBuffer.get());
        }
        k();
        while (byteBuffer.remaining() >= this.f34282c) {
            m(byteBuffer);
        }
        this.f34280a.put(byteBuffer);
        return this;
    }

    @Override // com.google.common.hash.n
    public final l i() {
        k();
        this.f34280a.flip();
        if (this.f34280a.remaining() > 0) {
            n(this.f34280a);
            ByteBuffer byteBuffer = this.f34280a;
            byteBuffer.position(byteBuffer.limit());
        }
        return j();
    }

    protected abstract l j();

    protected abstract void m(ByteBuffer byteBuffer);

    protected void n(ByteBuffer byteBuffer) {
        byteBuffer.position(byteBuffer.limit());
        byteBuffer.limit(this.f34282c + 7);
        while (true) {
            int position = byteBuffer.position();
            int i4 = this.f34282c;
            if (position < i4) {
                byteBuffer.putLong(0L);
            } else {
                byteBuffer.limit(i4);
                byteBuffer.flip();
                m(byteBuffer);
                return;
            }
        }
    }

    protected f(int i4, int i10) {
        com.google.common.base.a0.d(i10 % i4 == 0);
        this.f34280a = ByteBuffer.allocate(i10 + 7).order(ByteOrder.LITTLE_ENDIAN);
        this.f34281b = i10;
        this.f34282c = i4;
    }

    @Override // com.google.common.hash.d, com.google.common.hash.n, com.google.common.hash.a0
    public final n b(char c10) {
        this.f34280a.putChar(c10);
        l();
        return this;
    }

    @Override // com.google.common.hash.n, com.google.common.hash.a0
    public final n c(byte b10) {
        this.f34280a.put(b10);
        l();
        return this;
    }

    @Override // com.google.common.hash.d, com.google.common.hash.n, com.google.common.hash.a0
    public final n e(byte[] bArr, int i4, int i10) {
        return o(ByteBuffer.wrap(bArr, i4, i10).order(ByteOrder.LITTLE_ENDIAN));
    }

    @Override // com.google.common.hash.d, com.google.common.hash.n, com.google.common.hash.a0
    public final n f(ByteBuffer byteBuffer) {
        ByteOrder order = byteBuffer.order();
        try {
            byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
            return o(byteBuffer);
        } finally {
            byteBuffer.order(order);
        }
    }

    @Override // com.google.common.hash.d, com.google.common.hash.n, com.google.common.hash.a0
    public final n putInt(int i4) {
        this.f34280a.putInt(i4);
        l();
        return this;
    }

    @Override // com.google.common.hash.d, com.google.common.hash.n, com.google.common.hash.a0
    public final n putLong(long j4) {
        this.f34280a.putLong(j4);
        l();
        return this;
    }

    @Override // com.google.common.hash.d, com.google.common.hash.n, com.google.common.hash.a0
    public final n putShort(short s9) {
        this.f34280a.putShort(s9);
        l();
        return this;
    }
}

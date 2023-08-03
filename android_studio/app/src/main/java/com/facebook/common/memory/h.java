package com.facebook.common.memory;

import androidx.annotation.VisibleForTesting;
import com.facebook.infer.annotation.Nullsafe;
import java.io.InputStream;

/* compiled from: PooledByteBufferInputStream.java */
@s7.c
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class h extends InputStream {
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    final PooledByteBuffer f10997a;
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    int f10998b;
    @VisibleForTesting

    /* renamed from: c  reason: collision with root package name */
    int f10999c;

    public h(PooledByteBuffer pooledByteBuffer) {
        com.facebook.common.internal.j.d(Boolean.valueOf(!pooledByteBuffer.isClosed()));
        this.f10997a = (PooledByteBuffer) com.facebook.common.internal.j.i(pooledByteBuffer);
        this.f10998b = 0;
        this.f10999c = 0;
    }

    @Override // java.io.InputStream
    public int available() {
        return this.f10997a.size() - this.f10998b;
    }

    @Override // java.io.InputStream
    public void mark(int readlimit) {
        this.f10999c = this.f10998b;
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public int read() {
        if (available() <= 0) {
            return -1;
        }
        PooledByteBuffer pooledByteBuffer = this.f10997a;
        int i4 = this.f10998b;
        this.f10998b = i4 + 1;
        return pooledByteBuffer.j(i4) & 255;
    }

    @Override // java.io.InputStream
    public void reset() {
        this.f10998b = this.f10999c;
    }

    @Override // java.io.InputStream
    public long skip(long byteCount) {
        com.facebook.common.internal.j.d(Boolean.valueOf(byteCount >= 0));
        int min = Math.min((int) byteCount, available());
        this.f10998b += min;
        return min;
    }

    @Override // java.io.InputStream
    public int read(byte[] buffer) {
        return read(buffer, 0, buffer.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] buffer, int offset, int length) {
        if (offset >= 0 && length >= 0 && offset + length <= buffer.length) {
            int available = available();
            if (available <= 0) {
                return -1;
            }
            if (length <= 0) {
                return 0;
            }
            int min = Math.min(available, length);
            this.f10997a.f(this.f10998b, buffer, offset, min);
            this.f10998b += min;
            return min;
        }
        throw new ArrayIndexOutOfBoundsException("length=" + buffer.length + "; regionStart=" + offset + "; regionLength=" + length);
    }
}

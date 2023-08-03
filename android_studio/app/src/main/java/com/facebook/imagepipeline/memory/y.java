package com.facebook.imagepipeline.memory;

import androidx.annotation.VisibleForTesting;
import com.facebook.common.memory.PooledByteBuffer;
import java.nio.ByteBuffer;

/* compiled from: MemoryPooledByteBuffer.java */
@s7.d
/* loaded from: classes.dex */
public class y implements PooledByteBuffer {

    /* renamed from: a  reason: collision with root package name */
    private final int f12676a;
    @VisibleForTesting
    @s7.a("this")

    /* renamed from: b  reason: collision with root package name */
    com.facebook.common.references.a<v> f12677b;

    public y(com.facebook.common.references.a<v> bufRef, int size) {
        com.facebook.common.internal.j.i(bufRef);
        com.facebook.common.internal.j.d(Boolean.valueOf(size >= 0 && size <= bufRef.q().getSize()));
        this.f12677b = bufRef.clone();
        this.f12676a = size;
    }

    synchronized void a() {
        if (isClosed()) {
            throw new PooledByteBuffer.ClosedException();
        }
    }

    @VisibleForTesting
    @s7.a("this")
    com.facebook.common.references.a<v> b() {
        return this.f12677b;
    }

    @Override // com.facebook.common.memory.PooledByteBuffer, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        com.facebook.common.references.a.k(this.f12677b);
        this.f12677b = null;
    }

    @Override // com.facebook.common.memory.PooledByteBuffer
    public synchronized int f(int offset, byte[] buffer, int bufferOffset, int length) {
        a();
        com.facebook.common.internal.j.d(Boolean.valueOf(offset + length <= this.f12676a));
        return this.f12677b.q().f(offset, buffer, bufferOffset, length);
    }

    @Override // com.facebook.common.memory.PooledByteBuffer
    @r7.h
    public synchronized ByteBuffer g() {
        return this.f12677b.q().g();
    }

    @Override // com.facebook.common.memory.PooledByteBuffer
    public synchronized boolean isClosed() {
        return !com.facebook.common.references.a.A(this.f12677b);
    }

    @Override // com.facebook.common.memory.PooledByteBuffer
    public synchronized byte j(int offset) {
        a();
        boolean z9 = true;
        com.facebook.common.internal.j.d(Boolean.valueOf(offset >= 0));
        if (offset >= this.f12676a) {
            z9 = false;
        }
        com.facebook.common.internal.j.d(Boolean.valueOf(z9));
        return this.f12677b.q().j(offset);
    }

    @Override // com.facebook.common.memory.PooledByteBuffer
    public synchronized long l() throws UnsupportedOperationException {
        a();
        return this.f12677b.q().l();
    }

    @Override // com.facebook.common.memory.PooledByteBuffer
    public synchronized int size() {
        a();
        return this.f12676a;
    }
}

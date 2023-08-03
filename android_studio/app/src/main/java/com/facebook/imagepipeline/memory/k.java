package com.facebook.imagepipeline.memory;

import android.util.Log;
import com.facebook.infer.annotation.Nullsafe;
import java.io.Closeable;
import java.nio.ByteBuffer;

/* compiled from: BufferMemoryChunk.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class k implements v, Closeable {

    /* renamed from: d  reason: collision with root package name */
    private static final String f12648d = "BufferMemoryChunk";
    @r7.h

    /* renamed from: a  reason: collision with root package name */
    private ByteBuffer f12649a;

    /* renamed from: b  reason: collision with root package name */
    private final int f12650b;

    /* renamed from: c  reason: collision with root package name */
    private final long f12651c = System.identityHashCode(this);

    public k(final int size) {
        this.f12649a = ByteBuffer.allocateDirect(size);
        this.f12650b = size;
    }

    private void h(final int offset, final v other, final int otherOffset, final int count) {
        if (other instanceof k) {
            com.facebook.common.internal.j.o(!isClosed());
            com.facebook.common.internal.j.o(!other.isClosed());
            com.facebook.common.internal.j.i(this.f12649a);
            x.b(offset, other.getSize(), otherOffset, count, this.f12650b);
            this.f12649a.position(offset);
            ByteBuffer byteBuffer = (ByteBuffer) com.facebook.common.internal.j.i(other.g());
            byteBuffer.position(otherOffset);
            byte[] bArr = new byte[count];
            this.f12649a.get(bArr, 0, count);
            byteBuffer.put(bArr, 0, count);
            return;
        }
        throw new IllegalArgumentException("Cannot copy two incompatible MemoryChunks");
    }

    @Override // com.facebook.imagepipeline.memory.v
    public long a() {
        return this.f12651c;
    }

    @Override // com.facebook.imagepipeline.memory.v
    public synchronized int b(final int memoryOffset, final byte[] byteArray, final int byteArrayOffset, final int count) {
        int a10;
        com.facebook.common.internal.j.i(byteArray);
        com.facebook.common.internal.j.o(!isClosed());
        com.facebook.common.internal.j.i(this.f12649a);
        a10 = x.a(memoryOffset, count, this.f12650b);
        x.b(memoryOffset, byteArray.length, byteArrayOffset, a10, this.f12650b);
        this.f12649a.position(memoryOffset);
        this.f12649a.put(byteArray, byteArrayOffset, a10);
        return a10;
    }

    @Override // com.facebook.imagepipeline.memory.v, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        this.f12649a = null;
    }

    @Override // com.facebook.imagepipeline.memory.v
    public void d(final int offset, final v other, final int otherOffset, final int count) {
        com.facebook.common.internal.j.i(other);
        if (other.a() == a()) {
            Log.w(f12648d, "Copying from BufferMemoryChunk " + Long.toHexString(a()) + " to BufferMemoryChunk " + Long.toHexString(other.a()) + " which are the same ");
            com.facebook.common.internal.j.d(Boolean.FALSE);
        }
        if (other.a() < a()) {
            synchronized (other) {
                synchronized (this) {
                    h(offset, other, otherOffset, count);
                }
            }
            return;
        }
        synchronized (this) {
            synchronized (other) {
                h(offset, other, otherOffset, count);
            }
        }
    }

    @Override // com.facebook.imagepipeline.memory.v
    public synchronized int f(final int memoryOffset, final byte[] byteArray, final int byteArrayOffset, final int count) {
        int a10;
        com.facebook.common.internal.j.i(byteArray);
        com.facebook.common.internal.j.o(!isClosed());
        com.facebook.common.internal.j.i(this.f12649a);
        a10 = x.a(memoryOffset, count, this.f12650b);
        x.b(memoryOffset, byteArray.length, byteArrayOffset, a10, this.f12650b);
        this.f12649a.position(memoryOffset);
        this.f12649a.get(byteArray, byteArrayOffset, a10);
        return a10;
    }

    @Override // com.facebook.imagepipeline.memory.v
    @r7.h
    public synchronized ByteBuffer g() {
        return this.f12649a;
    }

    @Override // com.facebook.imagepipeline.memory.v
    public int getSize() {
        return this.f12650b;
    }

    @Override // com.facebook.imagepipeline.memory.v
    public synchronized boolean isClosed() {
        return this.f12649a == null;
    }

    @Override // com.facebook.imagepipeline.memory.v
    public synchronized byte j(final int offset) {
        boolean z9 = true;
        com.facebook.common.internal.j.o(!isClosed());
        com.facebook.common.internal.j.d(Boolean.valueOf(offset >= 0));
        if (offset >= this.f12650b) {
            z9 = false;
        }
        com.facebook.common.internal.j.d(Boolean.valueOf(z9));
        com.facebook.common.internal.j.i(this.f12649a);
        return this.f12649a.get(offset);
    }

    @Override // com.facebook.imagepipeline.memory.v
    public long l() {
        throw new UnsupportedOperationException("Cannot get the pointer of a BufferMemoryChunk");
    }
}

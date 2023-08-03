package com.facebook.imagepipeline.memory;

import android.util.Log;
import androidx.annotation.VisibleForTesting;
import com.facebook.infer.annotation.Nullsafe;
import java.io.Closeable;
import java.nio.ByteBuffer;

@com.facebook.common.internal.e
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class NativeMemoryChunk implements v, Closeable {

    /* renamed from: d  reason: collision with root package name */
    private static final String f12547d = "NativeMemoryChunk";

    /* renamed from: a  reason: collision with root package name */
    private final long f12548a;

    /* renamed from: b  reason: collision with root package name */
    private final int f12549b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f12550c;

    static {
        y1.a.f(com.facebook.imagepipeline.nativecode.b.f12698a);
    }

    public NativeMemoryChunk(final int size) {
        com.facebook.common.internal.j.d(Boolean.valueOf(size > 0));
        this.f12549b = size;
        this.f12548a = nativeAllocate(size);
        this.f12550c = false;
    }

    private void h(final int offset, final v other, final int otherOffset, final int count) {
        if (other instanceof NativeMemoryChunk) {
            com.facebook.common.internal.j.o(!isClosed());
            com.facebook.common.internal.j.o(!other.isClosed());
            x.b(offset, other.getSize(), otherOffset, count, this.f12549b);
            nativeMemcpy(other.l() + otherOffset, this.f12548a + offset, count);
            return;
        }
        throw new IllegalArgumentException("Cannot copy two incompatible MemoryChunks");
    }

    @com.facebook.common.internal.e
    private static native long nativeAllocate(int size);

    @com.facebook.common.internal.e
    private static native void nativeCopyFromByteArray(long address, byte[] array, int offset, int count);

    @com.facebook.common.internal.e
    private static native void nativeCopyToByteArray(long address, byte[] array, int offset, int count);

    @com.facebook.common.internal.e
    private static native void nativeFree(long address);

    @com.facebook.common.internal.e
    private static native void nativeMemcpy(long toPtr, long fromPtr, int count);

    @com.facebook.common.internal.e
    private static native byte nativeReadByte(long fromPtr);

    @Override // com.facebook.imagepipeline.memory.v
    public long a() {
        return this.f12548a;
    }

    @Override // com.facebook.imagepipeline.memory.v
    public synchronized int b(final int memoryOffset, final byte[] byteArray, final int byteArrayOffset, final int count) {
        int a10;
        com.facebook.common.internal.j.i(byteArray);
        com.facebook.common.internal.j.o(!isClosed());
        a10 = x.a(memoryOffset, count, this.f12549b);
        x.b(memoryOffset, byteArray.length, byteArrayOffset, a10, this.f12549b);
        nativeCopyFromByteArray(this.f12548a + memoryOffset, byteArray, byteArrayOffset, a10);
        return a10;
    }

    @Override // com.facebook.imagepipeline.memory.v, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        if (!this.f12550c) {
            this.f12550c = true;
            nativeFree(this.f12548a);
        }
    }

    @Override // com.facebook.imagepipeline.memory.v
    public void d(final int offset, final v other, final int otherOffset, final int count) {
        com.facebook.common.internal.j.i(other);
        if (other.a() == a()) {
            Log.w(f12547d, "Copying from NativeMemoryChunk " + Integer.toHexString(System.identityHashCode(this)) + " to NativeMemoryChunk " + Integer.toHexString(System.identityHashCode(other)) + " which share the same address " + Long.toHexString(this.f12548a));
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
        a10 = x.a(memoryOffset, count, this.f12549b);
        x.b(memoryOffset, byteArray.length, byteArrayOffset, a10, this.f12549b);
        nativeCopyToByteArray(this.f12548a + memoryOffset, byteArray, byteArrayOffset, a10);
        return a10;
    }

    protected void finalize() throws Throwable {
        if (isClosed()) {
            return;
        }
        Log.w(f12547d, "finalize: Chunk " + Integer.toHexString(System.identityHashCode(this)) + " still active. ");
        try {
            close();
        } finally {
            super.finalize();
        }
    }

    @Override // com.facebook.imagepipeline.memory.v
    @r7.h
    public ByteBuffer g() {
        return null;
    }

    @Override // com.facebook.imagepipeline.memory.v
    public int getSize() {
        return this.f12549b;
    }

    @Override // com.facebook.imagepipeline.memory.v
    public synchronized boolean isClosed() {
        return this.f12550c;
    }

    @Override // com.facebook.imagepipeline.memory.v
    public synchronized byte j(final int offset) {
        boolean z9 = true;
        com.facebook.common.internal.j.o(!isClosed());
        com.facebook.common.internal.j.d(Boolean.valueOf(offset >= 0));
        if (offset >= this.f12549b) {
            z9 = false;
        }
        com.facebook.common.internal.j.d(Boolean.valueOf(z9));
        return nativeReadByte(this.f12548a + offset);
    }

    @Override // com.facebook.imagepipeline.memory.v
    public long l() {
        return this.f12548a;
    }

    @VisibleForTesting
    public NativeMemoryChunk() {
        this.f12549b = 0;
        this.f12548a = 0L;
        this.f12550c = true;
    }
}

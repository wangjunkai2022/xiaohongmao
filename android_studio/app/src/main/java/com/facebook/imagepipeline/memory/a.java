package com.facebook.imagepipeline.memory;

import android.annotation.TargetApi;
import android.os.SharedMemory;
import android.system.ErrnoException;
import android.util.Log;
import androidx.annotation.VisibleForTesting;
import com.facebook.infer.annotation.Nullsafe;
import java.io.Closeable;
import java.nio.ByteBuffer;

/* compiled from: AshmemMemoryChunk.java */
@TargetApi(27)
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class a implements v, Closeable {

    /* renamed from: d  reason: collision with root package name */
    private static final String f12551d = "AshmemMemoryChunk";
    @r7.h

    /* renamed from: a  reason: collision with root package name */
    private SharedMemory f12552a;
    @r7.h

    /* renamed from: b  reason: collision with root package name */
    private ByteBuffer f12553b;

    /* renamed from: c  reason: collision with root package name */
    private final long f12554c;

    public a(final int size) {
        com.facebook.common.internal.j.d(Boolean.valueOf(size > 0));
        try {
            SharedMemory create = SharedMemory.create(f12551d, size);
            this.f12552a = create;
            this.f12553b = create.mapReadWrite();
            this.f12554c = System.identityHashCode(this);
        } catch (ErrnoException e4) {
            throw new RuntimeException("Fail to create AshmemMemory", e4);
        }
    }

    private void h(final int offset, final v other, final int otherOffset, final int count) {
        if (other instanceof a) {
            com.facebook.common.internal.j.o(!isClosed());
            com.facebook.common.internal.j.o(!other.isClosed());
            com.facebook.common.internal.j.i(this.f12553b);
            com.facebook.common.internal.j.i(other.g());
            x.b(offset, other.getSize(), otherOffset, count, getSize());
            this.f12553b.position(offset);
            other.g().position(otherOffset);
            byte[] bArr = new byte[count];
            this.f12553b.get(bArr, 0, count);
            other.g().put(bArr, 0, count);
            return;
        }
        throw new IllegalArgumentException("Cannot copy two incompatible MemoryChunks");
    }

    @Override // com.facebook.imagepipeline.memory.v
    public long a() {
        return this.f12554c;
    }

    @Override // com.facebook.imagepipeline.memory.v
    public synchronized int b(final int memoryOffset, final byte[] byteArray, final int byteArrayOffset, final int count) {
        int a10;
        com.facebook.common.internal.j.i(byteArray);
        com.facebook.common.internal.j.i(this.f12553b);
        a10 = x.a(memoryOffset, count, getSize());
        x.b(memoryOffset, byteArray.length, byteArrayOffset, a10, getSize());
        this.f12553b.position(memoryOffset);
        this.f12553b.put(byteArray, byteArrayOffset, a10);
        return a10;
    }

    @Override // com.facebook.imagepipeline.memory.v, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        if (!isClosed()) {
            SharedMemory sharedMemory = this.f12552a;
            if (sharedMemory != null) {
                sharedMemory.close();
            }
            ByteBuffer byteBuffer = this.f12553b;
            if (byteBuffer != null) {
                SharedMemory.unmap(byteBuffer);
            }
            this.f12553b = null;
            this.f12552a = null;
        }
    }

    @Override // com.facebook.imagepipeline.memory.v
    public void d(final int offset, final v other, final int otherOffset, final int count) {
        com.facebook.common.internal.j.i(other);
        if (other.a() == a()) {
            Log.w(f12551d, "Copying from AshmemMemoryChunk " + Long.toHexString(a()) + " to AshmemMemoryChunk " + Long.toHexString(other.a()) + " which are the same ");
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
        com.facebook.common.internal.j.i(this.f12553b);
        a10 = x.a(memoryOffset, count, getSize());
        x.b(memoryOffset, byteArray.length, byteArrayOffset, a10, getSize());
        this.f12553b.position(memoryOffset);
        this.f12553b.get(byteArray, byteArrayOffset, a10);
        return a10;
    }

    @Override // com.facebook.imagepipeline.memory.v
    @r7.h
    public ByteBuffer g() {
        return this.f12553b;
    }

    @Override // com.facebook.imagepipeline.memory.v
    public int getSize() {
        com.facebook.common.internal.j.i(this.f12552a);
        return this.f12552a.getSize();
    }

    @Override // com.facebook.imagepipeline.memory.v
    public synchronized boolean isClosed() {
        boolean z9;
        if (this.f12553b != null) {
            z9 = this.f12552a == null;
        }
        return z9;
    }

    @Override // com.facebook.imagepipeline.memory.v
    public synchronized byte j(final int offset) {
        boolean z9 = true;
        com.facebook.common.internal.j.o(!isClosed());
        com.facebook.common.internal.j.d(Boolean.valueOf(offset >= 0));
        if (offset >= getSize()) {
            z9 = false;
        }
        com.facebook.common.internal.j.d(Boolean.valueOf(z9));
        com.facebook.common.internal.j.i(this.f12553b);
        return this.f12553b.get(offset);
    }

    @Override // com.facebook.imagepipeline.memory.v
    public long l() {
        throw new UnsupportedOperationException("Cannot get the pointer of an  AshmemMemoryChunk");
    }

    @VisibleForTesting
    public a() {
        this.f12552a = null;
        this.f12553b = null;
        this.f12554c = System.identityHashCode(this);
    }
}

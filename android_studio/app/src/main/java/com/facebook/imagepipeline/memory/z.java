package com.facebook.imagepipeline.memory;

import androidx.annotation.VisibleForTesting;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: MemoryPooledByteBufferFactory.java */
@s7.d
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class z implements com.facebook.common.memory.g {

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.common.memory.j f12678a;

    /* renamed from: b  reason: collision with root package name */
    private final w f12679b;

    public z(w pool, com.facebook.common.memory.j pooledByteStreams) {
        this.f12679b = pool;
        this.f12678a = pooledByteStreams;
    }

    @VisibleForTesting
    y g(InputStream inputStream, MemoryPooledByteBufferOutputStream outputStream) throws IOException {
        this.f12678a.a(inputStream, outputStream);
        return outputStream.a();
    }

    @Override // com.facebook.common.memory.g
    /* renamed from: h */
    public y e(int size) {
        com.facebook.common.internal.j.d(Boolean.valueOf(size > 0));
        com.facebook.common.references.a G = com.facebook.common.references.a.G(this.f12679b.get(size), this.f12679b);
        try {
            return new y(G, size);
        } finally {
            G.close();
        }
    }

    @Override // com.facebook.common.memory.g
    /* renamed from: i */
    public y a(InputStream inputStream) throws IOException {
        MemoryPooledByteBufferOutputStream memoryPooledByteBufferOutputStream = new MemoryPooledByteBufferOutputStream(this.f12679b);
        try {
            return g(inputStream, memoryPooledByteBufferOutputStream);
        } finally {
            memoryPooledByteBufferOutputStream.close();
        }
    }

    @Override // com.facebook.common.memory.g
    /* renamed from: j */
    public y b(InputStream inputStream, int initialCapacity) throws IOException {
        MemoryPooledByteBufferOutputStream memoryPooledByteBufferOutputStream = new MemoryPooledByteBufferOutputStream(this.f12679b, initialCapacity);
        try {
            return g(inputStream, memoryPooledByteBufferOutputStream);
        } finally {
            memoryPooledByteBufferOutputStream.close();
        }
    }

    @Override // com.facebook.common.memory.g
    /* renamed from: k */
    public y d(byte[] bytes) {
        MemoryPooledByteBufferOutputStream memoryPooledByteBufferOutputStream = new MemoryPooledByteBufferOutputStream(this.f12679b, bytes.length);
        try {
            try {
                memoryPooledByteBufferOutputStream.write(bytes, 0, bytes.length);
                return memoryPooledByteBufferOutputStream.a();
            } catch (IOException e4) {
                throw com.facebook.common.internal.o.d(e4);
            }
        } finally {
            memoryPooledByteBufferOutputStream.close();
        }
    }

    @Override // com.facebook.common.memory.g
    /* renamed from: l */
    public MemoryPooledByteBufferOutputStream c() {
        return new MemoryPooledByteBufferOutputStream(this.f12679b);
    }

    @Override // com.facebook.common.memory.g
    /* renamed from: m */
    public MemoryPooledByteBufferOutputStream f(int initialCapacity) {
        return new MemoryPooledByteBufferOutputStream(this.f12679b, initialCapacity);
    }
}

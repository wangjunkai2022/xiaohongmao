package com.facebook.imagepipeline.memory;

import androidx.annotation.VisibleForTesting;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;

@s7.c
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class MemoryPooledByteBufferOutputStream extends com.facebook.common.memory.i {

    /* renamed from: a  reason: collision with root package name */
    private final w f12544a;
    @r7.h

    /* renamed from: b  reason: collision with root package name */
    private com.facebook.common.references.a<v> f12545b;

    /* renamed from: c  reason: collision with root package name */
    private int f12546c;

    /* loaded from: classes.dex */
    public static class InvalidStreamException extends RuntimeException {
        public InvalidStreamException() {
            super("OutputStream no longer valid");
        }
    }

    public MemoryPooledByteBufferOutputStream(w pool) {
        this(pool, pool.R());
    }

    private void b() {
        if (!com.facebook.common.references.a.A(this.f12545b)) {
            throw new InvalidStreamException();
        }
    }

    @Override // com.facebook.common.memory.i, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        com.facebook.common.references.a.k(this.f12545b);
        this.f12545b = null;
        this.f12546c = -1;
        super.close();
    }

    @VisibleForTesting
    void d(int newLength) {
        b();
        com.facebook.common.internal.j.i(this.f12545b);
        if (newLength <= this.f12545b.q().getSize()) {
            return;
        }
        v vVar = this.f12544a.get(newLength);
        com.facebook.common.internal.j.i(this.f12545b);
        this.f12545b.q().d(0, vVar, 0, this.f12546c);
        this.f12545b.close();
        this.f12545b = com.facebook.common.references.a.G(vVar, this.f12544a);
    }

    @Override // com.facebook.common.memory.i
    /* renamed from: h */
    public y a() {
        b();
        return new y((com.facebook.common.references.a) com.facebook.common.internal.j.i(this.f12545b), this.f12546c);
    }

    @Override // com.facebook.common.memory.i
    public int size() {
        return this.f12546c;
    }

    @Override // java.io.OutputStream
    public void write(int oneByte) throws IOException {
        write(new byte[]{(byte) oneByte});
    }

    public MemoryPooledByteBufferOutputStream(w pool, int initialCapacity) {
        com.facebook.common.internal.j.d(Boolean.valueOf(initialCapacity > 0));
        w wVar = (w) com.facebook.common.internal.j.i(pool);
        this.f12544a = wVar;
        this.f12546c = 0;
        this.f12545b = com.facebook.common.references.a.G(wVar.get(initialCapacity), wVar);
    }

    @Override // java.io.OutputStream
    public void write(byte[] buffer, int offset, int count) throws IOException {
        if (offset >= 0 && count >= 0 && offset + count <= buffer.length) {
            b();
            d(this.f12546c + count);
            ((v) ((com.facebook.common.references.a) com.facebook.common.internal.j.i(this.f12545b)).q()).b(this.f12546c, buffer, offset, count);
            this.f12546c += count;
            return;
        }
        throw new ArrayIndexOutOfBoundsException("length=" + buffer.length + "; regionStart=" + offset + "; regionLength=" + count);
    }
}

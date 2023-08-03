package com.google.common.io;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: CountingInputStream.java */
@h3.c
@h3.a
/* loaded from: classes2.dex */
public final class n extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private long f34487a;

    /* renamed from: b  reason: collision with root package name */
    private long f34488b;

    public n(InputStream inputStream) {
        super((InputStream) com.google.common.base.a0.E(inputStream));
        this.f34488b = -1L;
    }

    public long a() {
        return this.f34487a;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i4) {
        ((FilterInputStream) this).in.mark(i4);
        this.f34488b = this.f34487a;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read = ((FilterInputStream) this).in.read();
        if (read != -1) {
            this.f34487a++;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        if (((FilterInputStream) this).in.markSupported()) {
            if (this.f34488b != -1) {
                ((FilterInputStream) this).in.reset();
                this.f34487a = this.f34488b;
            } else {
                throw new IOException("Mark not set");
            }
        } else {
            throw new IOException("Mark not supported");
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j4) throws IOException {
        long skip = ((FilterInputStream) this).in.skip(j4);
        this.f34487a += skip;
        return skip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i4, int i10) throws IOException {
        int read = ((FilterInputStream) this).in.read(bArr, i4, i10);
        if (read != -1) {
            this.f34487a += read;
        }
        return read;
    }
}

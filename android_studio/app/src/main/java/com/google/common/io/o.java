package com.google.common.io;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* compiled from: CountingOutputStream.java */
@h3.c
@h3.a
/* loaded from: classes2.dex */
public final class o extends FilterOutputStream {

    /* renamed from: a  reason: collision with root package name */
    private long f34489a;

    public o(OutputStream outputStream) {
        super((OutputStream) com.google.common.base.a0.E(outputStream));
    }

    public long a() {
        return this.f34489a;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        ((FilterOutputStream) this).out.close();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i4, int i10) throws IOException {
        ((FilterOutputStream) this).out.write(bArr, i4, i10);
        this.f34489a += i10;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i4) throws IOException {
        ((FilterOutputStream) this).out.write(i4);
        this.f34489a++;
    }
}

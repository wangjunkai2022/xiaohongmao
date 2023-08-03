package com.google.common.hash;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* compiled from: HashingOutputStream.java */
@h3.a
/* loaded from: classes2.dex */
public final class q extends FilterOutputStream {

    /* renamed from: a  reason: collision with root package name */
    private final n f34334a;

    public q(m mVar, OutputStream outputStream) {
        super((OutputStream) com.google.common.base.a0.E(outputStream));
        this.f34334a = (n) com.google.common.base.a0.E(mVar.h());
    }

    public l a() {
        return this.f34334a.i();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        ((FilterOutputStream) this).out.close();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i4) throws IOException {
        this.f34334a.c((byte) i4);
        ((FilterOutputStream) this).out.write(i4);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i4, int i10) throws IOException {
        this.f34334a.e(bArr, i4, i10);
        ((FilterOutputStream) this).out.write(bArr, i4, i10);
    }
}

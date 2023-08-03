package com.google.common.hash;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: HashingInputStream.java */
@h3.a
/* loaded from: classes2.dex */
public final class p extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private final n f34333a;

    public p(m mVar, InputStream inputStream) {
        super((InputStream) com.google.common.base.a0.E(inputStream));
        this.f34333a = (n) com.google.common.base.a0.E(mVar.h());
    }

    public l a() {
        return this.f34333a.i();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i4) {
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    @CanIgnoreReturnValue
    public int read() throws IOException {
        int read = ((FilterInputStream) this).in.read();
        if (read != -1) {
            this.f34333a.c((byte) read);
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        throw new IOException("reset not supported");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    @CanIgnoreReturnValue
    public int read(byte[] bArr, int i4, int i10) throws IOException {
        int read = ((FilterInputStream) this).in.read(bArr, i4, i10);
        if (read != -1) {
            this.f34333a.e(bArr, i4, read);
        }
        return read;
    }
}

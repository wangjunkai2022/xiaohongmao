package com.fasterxml.jackson.databind.util;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* compiled from: ByteBufferBackedInputStream.java */
/* loaded from: classes2.dex */
public class e extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    protected final ByteBuffer f16007a;

    public e(ByteBuffer byteBuffer) {
        this.f16007a = byteBuffer;
    }

    @Override // java.io.InputStream
    public int available() {
        return this.f16007a.remaining();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.f16007a.hasRemaining()) {
            return this.f16007a.get() & 255;
        }
        return -1;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i4, int i10) throws IOException {
        if (this.f16007a.hasRemaining()) {
            int min = Math.min(i10, this.f16007a.remaining());
            this.f16007a.get(bArr, i4, min);
            return min;
        }
        return -1;
    }
}

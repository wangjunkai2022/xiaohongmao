package com.fasterxml.jackson.databind.util;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;

/* compiled from: ByteBufferBackedOutputStream.java */
/* loaded from: classes2.dex */
public class f extends OutputStream {

    /* renamed from: a  reason: collision with root package name */
    protected final ByteBuffer f16008a;

    public f(ByteBuffer byteBuffer) {
        this.f16008a = byteBuffer;
    }

    @Override // java.io.OutputStream
    public void write(int i4) throws IOException {
        this.f16008a.put((byte) i4);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i4, int i10) throws IOException {
        this.f16008a.put(bArr, i4, i10);
    }
}

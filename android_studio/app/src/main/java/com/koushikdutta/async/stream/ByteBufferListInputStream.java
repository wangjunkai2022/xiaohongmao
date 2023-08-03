package com.koushikdutta.async.stream;

import com.koushikdutta.async.ByteBufferList;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes3.dex */
public class ByteBufferListInputStream extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    ByteBufferList f45101a;

    public ByteBufferListInputStream(ByteBufferList byteBufferList) {
        this.f45101a = byteBufferList;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.f45101a.P() <= 0) {
            return -1;
        }
        return this.f45101a.h() & 255;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i4, int i10) throws IOException {
        if (this.f45101a.P() <= 0) {
            return -1;
        }
        int min = Math.min(i10, this.f45101a.P());
        this.f45101a.m(bArr, i4, min);
        return min;
    }
}

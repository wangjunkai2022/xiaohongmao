package com.googlecode.mp4parser.authoring.tracks;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;

/* compiled from: CleanInputStream.java */
/* loaded from: classes2.dex */
public class k extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    int f36311a;

    /* renamed from: b  reason: collision with root package name */
    int f36312b;

    public k(InputStream inputStream) {
        super(inputStream);
        this.f36311a = -1;
        this.f36312b = -1;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read = super.read();
        if (read == 3 && this.f36311a == 0 && this.f36312b == 0) {
            this.f36311a = -1;
            this.f36312b = -1;
            read = super.read();
        }
        this.f36311a = this.f36312b;
        this.f36312b = read;
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i4, int i10) throws IOException {
        Objects.requireNonNull(bArr);
        if (i4 < 0 || i10 < 0 || i10 > bArr.length - i4) {
            throw new IndexOutOfBoundsException();
        }
        if (i10 == 0) {
            return 0;
        }
        int read = read();
        if (read == -1) {
            return -1;
        }
        bArr[i4] = (byte) read;
        int i11 = 1;
        while (true) {
            if (i11 < i10) {
                try {
                    int read2 = read();
                    if (read2 == -1) {
                        break;
                    }
                    bArr[i4 + i11] = (byte) read2;
                    i11++;
                } catch (IOException unused) {
                }
            }
            return i11;
        }
        return i11;
    }
}

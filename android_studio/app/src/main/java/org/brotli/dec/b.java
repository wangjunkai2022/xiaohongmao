package org.brotli.dec;

import java.io.IOException;
import java.io.InputStream;

/* compiled from: BrotliInputStream.java */
/* loaded from: classes5.dex */
public class b extends InputStream {

    /* renamed from: e  reason: collision with root package name */
    public static final int f91597e = 16384;

    /* renamed from: a  reason: collision with root package name */
    private byte[] f91598a;

    /* renamed from: b  reason: collision with root package name */
    private int f91599b;

    /* renamed from: c  reason: collision with root package name */
    private int f91600c;

    /* renamed from: d  reason: collision with root package name */
    private final l f91601d;

    public b(InputStream inputStream) throws IOException {
        this(inputStream, 16384, null);
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        l.a(this.f91601d);
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.f91600c >= this.f91599b) {
            byte[] bArr = this.f91598a;
            int read = read(bArr, 0, bArr.length);
            this.f91599b = read;
            this.f91600c = 0;
            if (read == -1) {
                return -1;
            }
        }
        byte[] bArr2 = this.f91598a;
        int i4 = this.f91600c;
        this.f91600c = i4 + 1;
        return bArr2[i4] & 255;
    }

    public b(InputStream inputStream, int i4) throws IOException {
        this(inputStream, i4, null);
    }

    public b(InputStream inputStream, int i4, byte[] bArr) throws IOException {
        l lVar = new l();
        this.f91601d = lVar;
        if (i4 <= 0) {
            throw new IllegalArgumentException("Bad buffer size:" + i4);
        } else if (inputStream != null) {
            this.f91598a = new byte[i4];
            this.f91599b = 0;
            this.f91600c = 0;
            try {
                l.c(lVar, inputStream);
                if (bArr != null) {
                    e.s(lVar, bArr);
                }
            } catch (c e4) {
                throw new IOException("Brotli decoder initialization failed", e4);
            }
        } else {
            throw new IllegalArgumentException("source is null");
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i4, int i10) throws IOException {
        if (i4 < 0) {
            throw new IllegalArgumentException("Bad offset: " + i4);
        } else if (i10 >= 0) {
            int i11 = i4 + i10;
            if (i11 > bArr.length) {
                throw new IllegalArgumentException("Buffer overflow: " + i11 + " > " + bArr.length);
            } else if (i10 == 0) {
                return 0;
            } else {
                int max = Math.max(this.f91599b - this.f91600c, 0);
                if (max != 0) {
                    max = Math.min(max, i10);
                    System.arraycopy(this.f91598a, this.f91600c, bArr, i4, max);
                    this.f91600c += max;
                    i4 += max;
                    i10 -= max;
                    if (i10 == 0) {
                        return max;
                    }
                }
                try {
                    l lVar = this.f91601d;
                    lVar.Z = bArr;
                    lVar.U = i4;
                    lVar.V = i10;
                    lVar.W = 0;
                    e.i(lVar);
                    int i12 = this.f91601d.W;
                    if (i12 == 0) {
                        return -1;
                    }
                    return i12 + max;
                } catch (c e4) {
                    throw new IOException("Brotli stream decoding failed", e4);
                }
            }
        } else {
            throw new IllegalArgumentException("Bad length: " + i10);
        }
    }
}

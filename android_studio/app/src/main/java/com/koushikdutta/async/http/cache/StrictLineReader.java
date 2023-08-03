package com.koushikdutta.async.http.cache;

import com.koushikdutta.async.util.Charsets;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;

/* loaded from: classes3.dex */
class StrictLineReader implements Closeable {

    /* renamed from: e  reason: collision with root package name */
    private static final byte f44886e = 13;

    /* renamed from: f  reason: collision with root package name */
    private static final byte f44887f = 10;

    /* renamed from: a  reason: collision with root package name */
    private final InputStream f44888a;

    /* renamed from: b  reason: collision with root package name */
    private byte[] f44889b;

    /* renamed from: c  reason: collision with root package name */
    private int f44890c;

    /* renamed from: d  reason: collision with root package name */
    private int f44891d;

    public StrictLineReader(InputStream inputStream) {
        this(inputStream, 8192);
    }

    private void a() throws IOException {
        InputStream inputStream = this.f44888a;
        byte[] bArr = this.f44889b;
        int read = inputStream.read(bArr, 0, bArr.length);
        if (read != -1) {
            this.f44890c = 0;
            this.f44891d = read;
            return;
        }
        throw new EOFException();
    }

    public boolean b() {
        return this.f44891d == -1;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.f44888a) {
            if (this.f44889b != null) {
                this.f44889b = null;
                this.f44888a.close();
            }
        }
    }

    public String d() throws IOException {
        int i4;
        byte[] bArr;
        int i10;
        synchronized (this.f44888a) {
            if (this.f44889b != null) {
                if (this.f44890c >= this.f44891d) {
                    a();
                }
                for (int i11 = this.f44890c; i11 != this.f44891d; i11++) {
                    byte[] bArr2 = this.f44889b;
                    if (bArr2[i11] == 10) {
                        int i12 = this.f44890c;
                        if (i11 != i12) {
                            i10 = i11 - 1;
                            if (bArr2[i10] == 13) {
                                String str = new String(bArr2, i12, i10 - i12);
                                this.f44890c = i11 + 1;
                                return str;
                            }
                        }
                        i10 = i11;
                        String str2 = new String(bArr2, i12, i10 - i12);
                        this.f44890c = i11 + 1;
                        return str2;
                    }
                }
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((this.f44891d - this.f44890c) + 80) { // from class: com.koushikdutta.async.http.cache.StrictLineReader.1
                    @Override // java.io.ByteArrayOutputStream
                    public String toString() {
                        int i13 = ((ByteArrayOutputStream) this).count;
                        if (i13 > 0 && ((ByteArrayOutputStream) this).buf[i13 - 1] == 13) {
                            i13--;
                        }
                        return new String(((ByteArrayOutputStream) this).buf, 0, i13);
                    }
                };
                loop1: while (true) {
                    byte[] bArr3 = this.f44889b;
                    int i13 = this.f44890c;
                    byteArrayOutputStream.write(bArr3, i13, this.f44891d - i13);
                    this.f44891d = -1;
                    a();
                    i4 = this.f44890c;
                    while (i4 != this.f44891d) {
                        bArr = this.f44889b;
                        if (bArr[i4] == 10) {
                            break loop1;
                        }
                        i4++;
                    }
                }
                int i14 = this.f44890c;
                if (i4 != i14) {
                    byteArrayOutputStream.write(bArr, i14, i4 - i14);
                }
                this.f44890c = i4 + 1;
                return byteArrayOutputStream.toString();
            }
            throw new IOException("LineReader is closed");
        }
    }

    public int readInt() throws IOException {
        String d4 = d();
        try {
            return Integer.parseInt(d4);
        } catch (NumberFormatException unused) {
            throw new IOException("expected an int but was \"" + d4 + "\"");
        }
    }

    public StrictLineReader(InputStream inputStream, int i4) {
        this(inputStream, i4, Charsets.f45142a);
    }

    public StrictLineReader(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    public StrictLineReader(InputStream inputStream, int i4, Charset charset) {
        java.util.Objects.requireNonNull(inputStream, "in == null");
        java.util.Objects.requireNonNull(charset, "charset == null");
        if (i4 >= 0) {
            if (!charset.equals(Charsets.f45142a) && !charset.equals(Charsets.f45143b)) {
                throw new IllegalArgumentException("Unsupported encoding");
            }
            this.f44888a = inputStream;
            this.f44889b = new byte[i4];
            return;
        }
        throw new IllegalArgumentException("capacity <= 0");
    }
}

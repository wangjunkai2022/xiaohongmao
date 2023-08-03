package com.bumptech.glide.disklrucache;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

/* compiled from: StrictLineReader.java */
/* loaded from: classes.dex */
class b implements Closeable {

    /* renamed from: f  reason: collision with root package name */
    private static final byte f7211f = 13;

    /* renamed from: g  reason: collision with root package name */
    private static final byte f7212g = 10;

    /* renamed from: a  reason: collision with root package name */
    private final InputStream f7213a;

    /* renamed from: b  reason: collision with root package name */
    private final Charset f7214b;

    /* renamed from: c  reason: collision with root package name */
    private byte[] f7215c;

    /* renamed from: d  reason: collision with root package name */
    private int f7216d;

    /* renamed from: e  reason: collision with root package name */
    private int f7217e;

    /* compiled from: StrictLineReader.java */
    /* loaded from: classes.dex */
    class a extends ByteArrayOutputStream {
        a(int i4) {
            super(i4);
        }

        @Override // java.io.ByteArrayOutputStream
        public String toString() {
            int i4 = ((ByteArrayOutputStream) this).count;
            if (i4 > 0 && ((ByteArrayOutputStream) this).buf[i4 - 1] == 13) {
                i4--;
            }
            try {
                return new String(((ByteArrayOutputStream) this).buf, 0, i4, b.this.f7214b.name());
            } catch (UnsupportedEncodingException e4) {
                throw new AssertionError(e4);
            }
        }
    }

    public b(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    private void b() throws IOException {
        InputStream inputStream = this.f7213a;
        byte[] bArr = this.f7215c;
        int read = inputStream.read(bArr, 0, bArr.length);
        if (read != -1) {
            this.f7216d = 0;
            this.f7217e = read;
            return;
        }
        throw new EOFException();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.f7213a) {
            if (this.f7215c != null) {
                this.f7215c = null;
                this.f7213a.close();
            }
        }
    }

    public boolean d() {
        return this.f7217e == -1;
    }

    public String h() throws IOException {
        int i4;
        byte[] bArr;
        int i10;
        synchronized (this.f7213a) {
            if (this.f7215c != null) {
                if (this.f7216d >= this.f7217e) {
                    b();
                }
                for (int i11 = this.f7216d; i11 != this.f7217e; i11++) {
                    byte[] bArr2 = this.f7215c;
                    if (bArr2[i11] == 10) {
                        int i12 = this.f7216d;
                        if (i11 != i12) {
                            i10 = i11 - 1;
                            if (bArr2[i10] == 13) {
                                String str = new String(bArr2, i12, i10 - i12, this.f7214b.name());
                                this.f7216d = i11 + 1;
                                return str;
                            }
                        }
                        i10 = i11;
                        String str2 = new String(bArr2, i12, i10 - i12, this.f7214b.name());
                        this.f7216d = i11 + 1;
                        return str2;
                    }
                }
                a aVar = new a((this.f7217e - this.f7216d) + 80);
                loop1: while (true) {
                    byte[] bArr3 = this.f7215c;
                    int i13 = this.f7216d;
                    aVar.write(bArr3, i13, this.f7217e - i13);
                    this.f7217e = -1;
                    b();
                    i4 = this.f7216d;
                    while (i4 != this.f7217e) {
                        bArr = this.f7215c;
                        if (bArr[i4] == 10) {
                            break loop1;
                        }
                        i4++;
                    }
                }
                int i14 = this.f7216d;
                if (i4 != i14) {
                    aVar.write(bArr, i14, i4 - i14);
                }
                this.f7216d = i4 + 1;
                return aVar.toString();
            }
            throw new IOException("LineReader is closed");
        }
    }

    public b(InputStream inputStream, int i4, Charset charset) {
        if (inputStream == null || charset == null) {
            throw null;
        }
        if (i4 >= 0) {
            if (charset.equals(c.f7219a)) {
                this.f7213a = inputStream;
                this.f7214b = charset;
                this.f7215c = new byte[i4];
                return;
            }
            throw new IllegalArgumentException("Unsupported encoding");
        }
        throw new IllegalArgumentException("capacity <= 0");
    }
}

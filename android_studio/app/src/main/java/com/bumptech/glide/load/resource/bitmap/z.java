package com.bumptech.glide.load.resource.bitmap;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: RecyclableBufferedInputStream.java */
/* loaded from: classes.dex */
public class z extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private volatile byte[] f9328a;

    /* renamed from: b  reason: collision with root package name */
    private int f9329b;

    /* renamed from: c  reason: collision with root package name */
    private int f9330c;

    /* renamed from: d  reason: collision with root package name */
    private int f9331d;

    /* renamed from: e  reason: collision with root package name */
    private int f9332e;

    /* renamed from: f  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.bitmap_recycle.b f9333f;

    /* compiled from: RecyclableBufferedInputStream.java */
    /* loaded from: classes.dex */
    static class a extends IOException {

        /* renamed from: a  reason: collision with root package name */
        private static final long f9334a = -4338378848813561757L;

        a(String str) {
            super(str);
        }
    }

    public z(@NonNull InputStream inputStream, @NonNull com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
        this(inputStream, bVar, 65536);
    }

    private int a(InputStream inputStream, byte[] bArr) throws IOException {
        int i4 = this.f9331d;
        if (i4 != -1) {
            int i10 = this.f9332e - i4;
            int i11 = this.f9330c;
            if (i10 < i11) {
                if (i4 == 0 && i11 > bArr.length && this.f9329b == bArr.length) {
                    int length = bArr.length * 2;
                    if (length <= i11) {
                        i11 = length;
                    }
                    byte[] bArr2 = (byte[]) this.f9333f.c(i11, byte[].class);
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    this.f9328a = bArr2;
                    this.f9333f.put(bArr);
                    bArr = bArr2;
                } else if (i4 > 0) {
                    System.arraycopy(bArr, i4, bArr, 0, bArr.length - i4);
                }
                int i12 = this.f9332e - this.f9331d;
                this.f9332e = i12;
                this.f9331d = 0;
                this.f9329b = 0;
                int read = inputStream.read(bArr, i12, bArr.length - i12);
                int i13 = this.f9332e;
                if (read > 0) {
                    i13 += read;
                }
                this.f9329b = i13;
                return read;
            }
        }
        int read2 = inputStream.read(bArr);
        if (read2 > 0) {
            this.f9331d = -1;
            this.f9332e = 0;
            this.f9329b = read2;
        }
        return read2;
    }

    private static IOException d() throws IOException {
        throw new IOException("BufferedInputStream is closed");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int available() throws IOException {
        InputStream inputStream;
        inputStream = ((FilterInputStream) this).in;
        if (this.f9328a != null && inputStream != null) {
        } else {
            throw d();
        }
        return (this.f9329b - this.f9332e) + inputStream.available();
    }

    public synchronized void b() {
        this.f9330c = this.f9328a.length;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f9328a != null) {
            this.f9333f.put(this.f9328a);
            this.f9328a = null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        ((FilterInputStream) this).in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i4) {
        this.f9330c = Math.max(this.f9330c, i4);
        this.f9331d = this.f9332e;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() throws IOException {
        byte[] bArr = this.f9328a;
        InputStream inputStream = ((FilterInputStream) this).in;
        if (bArr != null && inputStream != null) {
            if (this.f9332e < this.f9329b || a(inputStream, bArr) != -1) {
                if (bArr != this.f9328a && (bArr = this.f9328a) == null) {
                    throw d();
                }
                int i4 = this.f9329b;
                int i10 = this.f9332e;
                if (i4 - i10 > 0) {
                    this.f9332e = i10 + 1;
                    return bArr[i10] & 255;
                }
                return -1;
            }
            return -1;
        }
        throw d();
    }

    public synchronized void release() {
        if (this.f9328a != null) {
            this.f9333f.put(this.f9328a);
            this.f9328a = null;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        if (this.f9328a != null) {
            int i4 = this.f9331d;
            if (-1 != i4) {
                this.f9332e = i4;
            } else {
                throw new a("Mark has been invalidated, pos: " + this.f9332e + " markLimit: " + this.f9330c);
            }
        } else {
            throw new IOException("Stream is closed");
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized long skip(long j4) throws IOException {
        if (j4 < 1) {
            return 0L;
        }
        byte[] bArr = this.f9328a;
        if (bArr != null) {
            InputStream inputStream = ((FilterInputStream) this).in;
            if (inputStream != null) {
                int i4 = this.f9329b;
                int i10 = this.f9332e;
                if (i4 - i10 >= j4) {
                    this.f9332e = (int) (i10 + j4);
                    return j4;
                }
                long j10 = i4 - i10;
                this.f9332e = i4;
                if (this.f9331d != -1 && j4 <= this.f9330c) {
                    if (a(inputStream, bArr) == -1) {
                        return j10;
                    }
                    int i11 = this.f9329b;
                    int i12 = this.f9332e;
                    if (i11 - i12 >= j4 - j10) {
                        this.f9332e = (int) ((i12 + j4) - j10);
                        return j4;
                    }
                    long j11 = (j10 + i11) - i12;
                    this.f9332e = i11;
                    return j11;
                }
                long skip = inputStream.skip(j4 - j10);
                if (skip > 0) {
                    this.f9331d = -1;
                }
                return j10 + skip;
            }
            throw d();
        }
        throw d();
    }

    @VisibleForTesting
    z(@NonNull InputStream inputStream, @NonNull com.bumptech.glide.load.engine.bitmap_recycle.b bVar, int i4) {
        super(inputStream);
        this.f9331d = -1;
        this.f9333f = bVar;
        this.f9328a = (byte[]) bVar.c(i4, byte[].class);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read(@NonNull byte[] bArr, int i4, int i10) throws IOException {
        int i11;
        int i12;
        byte[] bArr2 = this.f9328a;
        if (bArr2 == null) {
            throw d();
        }
        if (i10 == 0) {
            return 0;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream != null) {
            int i13 = this.f9332e;
            int i14 = this.f9329b;
            if (i13 < i14) {
                int i15 = i14 - i13 >= i10 ? i10 : i14 - i13;
                System.arraycopy(bArr2, i13, bArr, i4, i15);
                this.f9332e += i15;
                if (i15 == i10 || inputStream.available() == 0) {
                    return i15;
                }
                i4 += i15;
                i11 = i10 - i15;
            } else {
                i11 = i10;
            }
            while (true) {
                if (this.f9331d == -1 && i11 >= bArr2.length) {
                    i12 = inputStream.read(bArr, i4, i11);
                    if (i12 == -1) {
                        return i11 != i10 ? i10 - i11 : -1;
                    }
                } else if (a(inputStream, bArr2) == -1) {
                    return i11 != i10 ? i10 - i11 : -1;
                } else {
                    if (bArr2 != this.f9328a && (bArr2 = this.f9328a) == null) {
                        throw d();
                    }
                    int i16 = this.f9329b;
                    int i17 = this.f9332e;
                    i12 = i16 - i17 >= i11 ? i11 : i16 - i17;
                    System.arraycopy(bArr2, i17, bArr, i4, i12);
                    this.f9332e += i12;
                }
                i11 -= i12;
                if (i11 == 0) {
                    return i10;
                }
                if (inputStream.available() == 0) {
                    return i10 - i11;
                }
                i4 += i12;
            }
        } else {
            throw d();
        }
    }
}

package com.fasterxml.jackson.core.io;

import java.io.IOException;
import java.io.InputStream;

/* compiled from: MergedStream.java */
/* loaded from: classes.dex */
public final class f extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private final d f13947a;

    /* renamed from: b  reason: collision with root package name */
    private final InputStream f13948b;

    /* renamed from: c  reason: collision with root package name */
    private byte[] f13949c;

    /* renamed from: d  reason: collision with root package name */
    private int f13950d;

    /* renamed from: e  reason: collision with root package name */
    private final int f13951e;

    public f(d dVar, InputStream inputStream, byte[] bArr, int i4, int i10) {
        this.f13947a = dVar;
        this.f13948b = inputStream;
        this.f13949c = bArr;
        this.f13950d = i4;
        this.f13951e = i10;
    }

    private void a() {
        byte[] bArr = this.f13949c;
        if (bArr != null) {
            this.f13949c = null;
            d dVar = this.f13947a;
            if (dVar != null) {
                dVar.v(bArr);
            }
        }
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        if (this.f13949c != null) {
            return this.f13951e - this.f13950d;
        }
        return this.f13948b.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        a();
        this.f13948b.close();
    }

    @Override // java.io.InputStream
    public synchronized void mark(int i4) {
        if (this.f13949c == null) {
            this.f13948b.mark(i4);
        }
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f13949c == null && this.f13948b.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        byte[] bArr = this.f13949c;
        if (bArr != null) {
            int i4 = this.f13950d;
            int i10 = i4 + 1;
            this.f13950d = i10;
            int i11 = bArr[i4] & 255;
            if (i10 >= this.f13951e) {
                a();
            }
            return i11;
        }
        return this.f13948b.read();
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        if (this.f13949c == null) {
            this.f13948b.reset();
        }
    }

    @Override // java.io.InputStream
    public long skip(long j4) throws IOException {
        long j10;
        if (this.f13949c != null) {
            int i4 = this.f13951e;
            int i10 = this.f13950d;
            long j11 = i4 - i10;
            if (j11 > j4) {
                this.f13950d = i10 + ((int) j4);
                return j4;
            }
            a();
            j10 = j11 + 0;
            j4 -= j11;
        } else {
            j10 = 0;
        }
        return j4 > 0 ? j10 + this.f13948b.skip(j4) : j10;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i4, int i10) throws IOException {
        byte[] bArr2 = this.f13949c;
        if (bArr2 != null) {
            int i11 = this.f13951e;
            int i12 = this.f13950d;
            int i13 = i11 - i12;
            if (i10 > i13) {
                i10 = i13;
            }
            System.arraycopy(bArr2, i12, bArr, i4, i10);
            int i14 = this.f13950d + i10;
            this.f13950d = i14;
            if (i14 >= this.f13951e) {
                a();
            }
            return i10;
        }
        return this.f13948b.read(bArr, i4, i10);
    }
}

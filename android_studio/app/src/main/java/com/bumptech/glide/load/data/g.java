package com.bumptech.glide.load.data;

import androidx.annotation.NonNull;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: ExifOrientationStream.java */
/* loaded from: classes.dex */
public final class g extends FilterInputStream {

    /* renamed from: c  reason: collision with root package name */
    private static final int f8542c = 2;

    /* renamed from: d  reason: collision with root package name */
    private static final byte[] f8543d;

    /* renamed from: e  reason: collision with root package name */
    private static final int f8544e;

    /* renamed from: f  reason: collision with root package name */
    private static final int f8545f;

    /* renamed from: a  reason: collision with root package name */
    private final byte f8546a;

    /* renamed from: b  reason: collision with root package name */
    private int f8547b;

    static {
        byte[] bArr = {-1, -31, 0, com.google.common.base.c.F, 69, 120, 105, 102, 0, 0, 77, 77, 0, 0, 0, 0, 0, 8, 0, 1, 1, com.google.common.base.c.f32114u, 0, 2, 0, 0, 0, 1, 0};
        f8543d = bArr;
        int length = bArr.length;
        f8544e = length;
        f8545f = length + 2;
    }

    public g(InputStream inputStream, int i4) {
        super(inputStream);
        if (i4 >= -1 && i4 <= 8) {
            this.f8546a = (byte) i4;
            return;
        }
        throw new IllegalArgumentException("Cannot add invalid orientation: " + i4);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i4) {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read;
        int i4;
        int i10 = this.f8547b;
        if (i10 < 2 || i10 > (i4 = f8545f)) {
            read = super.read();
        } else if (i10 == i4) {
            read = this.f8546a;
        } else {
            read = f8543d[i10 - 2] & 255;
        }
        if (read != -1) {
            this.f8547b++;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j4) throws IOException {
        long skip = super.skip(j4);
        if (skip > 0) {
            this.f8547b = (int) (this.f8547b + skip);
        }
        return skip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(@NonNull byte[] bArr, int i4, int i10) throws IOException {
        int i11;
        int i12 = this.f8547b;
        int i13 = f8545f;
        if (i12 > i13) {
            i11 = super.read(bArr, i4, i10);
        } else if (i12 == i13) {
            bArr[i4] = this.f8546a;
            i11 = 1;
        } else if (i12 < 2) {
            i11 = super.read(bArr, i4, 2 - i12);
        } else {
            int min = Math.min(i13 - i12, i10);
            System.arraycopy(f8543d, this.f8547b - 2, bArr, i4, min);
            i11 = min;
        }
        if (i11 > 0) {
            this.f8547b += i11;
        }
        return i11;
    }
}

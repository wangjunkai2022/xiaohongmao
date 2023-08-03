package com.bumptech.glide.util;

import androidx.annotation.NonNull;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: MarkEnforcingInputStream.java */
/* loaded from: classes.dex */
public class k extends FilterInputStream {

    /* renamed from: b  reason: collision with root package name */
    private static final int f9721b = Integer.MIN_VALUE;

    /* renamed from: c  reason: collision with root package name */
    private static final int f9722c = -1;

    /* renamed from: a  reason: collision with root package name */
    private int f9723a;

    public k(@NonNull InputStream inputStream) {
        super(inputStream);
        this.f9723a = Integer.MIN_VALUE;
    }

    private long a(long j4) {
        int i4 = this.f9723a;
        if (i4 == 0) {
            return -1L;
        }
        return (i4 == Integer.MIN_VALUE || j4 <= ((long) i4)) ? j4 : i4;
    }

    private void b(long j4) {
        int i4 = this.f9723a;
        if (i4 == Integer.MIN_VALUE || j4 == -1) {
            return;
        }
        this.f9723a = (int) (i4 - j4);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        int i4 = this.f9723a;
        if (i4 == Integer.MIN_VALUE) {
            return super.available();
        }
        return Math.min(i4, super.available());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i4) {
        super.mark(i4);
        this.f9723a = i4;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (a(1L) == -1) {
            return -1;
        }
        int read = super.read();
        b(1L);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        super.reset();
        this.f9723a = Integer.MIN_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j4) throws IOException {
        long a10 = a(j4);
        if (a10 == -1) {
            return 0L;
        }
        long skip = super.skip(a10);
        b(skip);
        return skip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(@NonNull byte[] bArr, int i4, int i10) throws IOException {
        int a10 = (int) a(i10);
        if (a10 == -1) {
            return -1;
        }
        int read = super.read(bArr, i4, a10);
        b(read);
        return read;
    }
}

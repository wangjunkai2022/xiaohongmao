package com.fasterxml.jackson.core.util;

import java.io.OutputStream;
import java.util.Iterator;
import java.util.LinkedList;

/* compiled from: ByteArrayBuilder.java */
/* loaded from: classes.dex */
public final class c extends OutputStream {

    /* renamed from: f  reason: collision with root package name */
    public static final byte[] f14274f = new byte[0];

    /* renamed from: g  reason: collision with root package name */
    private static final int f14275g = 500;

    /* renamed from: h  reason: collision with root package name */
    private static final int f14276h = 131072;

    /* renamed from: i  reason: collision with root package name */
    static final int f14277i = 40;

    /* renamed from: a  reason: collision with root package name */
    private final a f14278a;

    /* renamed from: b  reason: collision with root package name */
    private final LinkedList<byte[]> f14279b;

    /* renamed from: c  reason: collision with root package name */
    private int f14280c;

    /* renamed from: d  reason: collision with root package name */
    private byte[] f14281d;

    /* renamed from: e  reason: collision with root package name */
    private int f14282e;

    public c() {
        this((a) null);
    }

    private void a() {
        int length = this.f14280c + this.f14281d.length;
        if (length >= 0) {
            this.f14280c = length;
            int max = Math.max(length >> 1, 1000);
            if (max > 131072) {
                max = 131072;
            }
            this.f14279b.add(this.f14281d);
            this.f14281d = new byte[max];
            this.f14282e = 0;
            return;
        }
        throw new IllegalStateException("Maximum Java array size (2GB) exceeded by `ByteArrayBuilder`");
    }

    public static c q(byte[] bArr, int i4) {
        return new c(null, bArr, i4);
    }

    public byte[] A() {
        y();
        return this.f14281d;
    }

    public void D(int i4) {
        this.f14282e = i4;
    }

    public byte[] E() {
        int i4 = this.f14280c + this.f14282e;
        if (i4 == 0) {
            return f14274f;
        }
        byte[] bArr = new byte[i4];
        Iterator<byte[]> it = this.f14279b.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            byte[] next = it.next();
            int length = next.length;
            System.arraycopy(next, 0, bArr, i10, length);
            i10 += length;
        }
        System.arraycopy(this.f14281d, 0, bArr, i10, this.f14282e);
        int i11 = i10 + this.f14282e;
        if (i11 == i4) {
            if (!this.f14279b.isEmpty()) {
                y();
            }
            return bArr;
        }
        throw new RuntimeException("Internal error: total len assumed to be " + i4 + ", copied " + i11 + " bytes");
    }

    public void b(int i4) {
        if (this.f14282e >= this.f14281d.length) {
            a();
        }
        byte[] bArr = this.f14281d;
        int i10 = this.f14282e;
        this.f14282e = i10 + 1;
        bArr[i10] = (byte) i4;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public void d(int i4) {
        int i10 = this.f14282e;
        int i11 = i10 + 3;
        byte[] bArr = this.f14281d;
        if (i11 < bArr.length) {
            int i12 = i10 + 1;
            this.f14282e = i12;
            bArr[i10] = (byte) (i4 >> 24);
            int i13 = i12 + 1;
            this.f14282e = i13;
            bArr[i12] = (byte) (i4 >> 16);
            int i14 = i13 + 1;
            this.f14282e = i14;
            bArr[i13] = (byte) (i4 >> 8);
            this.f14282e = i14 + 1;
            bArr[i14] = (byte) i4;
            return;
        }
        b(i4 >> 24);
        b(i4 >> 16);
        b(i4 >> 8);
        b(i4);
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
    }

    public void h(int i4) {
        int i10 = this.f14282e;
        int i11 = i10 + 2;
        byte[] bArr = this.f14281d;
        if (i11 < bArr.length) {
            int i12 = i10 + 1;
            this.f14282e = i12;
            bArr[i10] = (byte) (i4 >> 16);
            int i13 = i12 + 1;
            this.f14282e = i13;
            bArr[i12] = (byte) (i4 >> 8);
            this.f14282e = i13 + 1;
            bArr[i13] = (byte) i4;
            return;
        }
        b(i4 >> 16);
        b(i4 >> 8);
        b(i4);
    }

    public void i(int i4) {
        int i10 = this.f14282e;
        int i11 = i10 + 1;
        byte[] bArr = this.f14281d;
        if (i11 < bArr.length) {
            int i12 = i10 + 1;
            this.f14282e = i12;
            bArr[i10] = (byte) (i4 >> 8);
            this.f14282e = i12 + 1;
            bArr[i12] = (byte) i4;
            return;
        }
        b(i4 >> 8);
        b(i4);
    }

    public byte[] k(int i4) {
        this.f14282e = i4;
        return E();
    }

    public byte[] p() {
        a();
        return this.f14281d;
    }

    public byte[] r() {
        return this.f14281d;
    }

    public void release() {
        byte[] bArr;
        y();
        a aVar = this.f14278a;
        if (aVar == null || (bArr = this.f14281d) == null) {
            return;
        }
        aVar.i(2, bArr);
        this.f14281d = null;
    }

    public int s() {
        return this.f14282e;
    }

    public int size() {
        return this.f14280c + this.f14282e;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    public void y() {
        this.f14280c = 0;
        this.f14282e = 0;
        if (this.f14279b.isEmpty()) {
            return;
        }
        this.f14279b.clear();
    }

    public c(a aVar) {
        this(aVar, 500);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i4, int i10) {
        while (true) {
            int min = Math.min(this.f14281d.length - this.f14282e, i10);
            if (min > 0) {
                System.arraycopy(bArr, i4, this.f14281d, this.f14282e, min);
                i4 += min;
                this.f14282e += min;
                i10 -= min;
            }
            if (i10 <= 0) {
                return;
            }
            a();
        }
    }

    public c(int i4) {
        this(null, i4);
    }

    public c(a aVar, int i4) {
        this.f14279b = new LinkedList<>();
        this.f14278a = aVar;
        this.f14281d = aVar == null ? new byte[i4 > 131072 ? 131072 : i4] : aVar.a(2);
    }

    @Override // java.io.OutputStream
    public void write(int i4) {
        b(i4);
    }

    private c(a aVar, byte[] bArr, int i4) {
        this.f14279b = new LinkedList<>();
        this.f14278a = null;
        this.f14281d = bArr;
        this.f14282e = i4;
    }
}

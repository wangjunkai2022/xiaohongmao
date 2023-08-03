package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.util.z0;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;

/* compiled from: DefaultExtractorInput.java */
/* loaded from: classes2.dex */
public final class g implements l {

    /* renamed from: i  reason: collision with root package name */
    private static final int f22246i = 65536;

    /* renamed from: j  reason: collision with root package name */
    private static final int f22247j = 524288;

    /* renamed from: k  reason: collision with root package name */
    private static final int f22248k = 4096;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.i f22250c;

    /* renamed from: d  reason: collision with root package name */
    private final long f22251d;

    /* renamed from: e  reason: collision with root package name */
    private long f22252e;

    /* renamed from: g  reason: collision with root package name */
    private int f22254g;

    /* renamed from: h  reason: collision with root package name */
    private int f22255h;

    /* renamed from: f  reason: collision with root package name */
    private byte[] f22253f = new byte[65536];

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f22249b = new byte[4096];

    public g(com.google.android.exoplayer2.upstream.i iVar, long j4, long j10) {
        this.f22250c = iVar;
        this.f22252e = j4;
        this.f22251d = j10;
    }

    private void t(int i4) {
        if (i4 != -1) {
            this.f22252e += i4;
        }
    }

    private void u(int i4) {
        int i10 = this.f22254g + i4;
        byte[] bArr = this.f22253f;
        if (i10 > bArr.length) {
            this.f22253f = Arrays.copyOf(this.f22253f, z0.t(bArr.length * 2, 65536 + i10, i10 + 524288));
        }
    }

    private int v(byte[] bArr, int i4, int i10) {
        int i11 = this.f22255h;
        if (i11 == 0) {
            return 0;
        }
        int min = Math.min(i11, i10);
        System.arraycopy(this.f22253f, 0, bArr, i4, min);
        y(min);
        return min;
    }

    private int w(byte[] bArr, int i4, int i10, int i11, boolean z9) throws IOException {
        if (!Thread.interrupted()) {
            int read = this.f22250c.read(bArr, i4 + i11, i10 - i11);
            if (read == -1) {
                if (i11 == 0 && z9) {
                    return -1;
                }
                throw new EOFException();
            }
            return i11 + read;
        }
        throw new InterruptedIOException();
    }

    private int x(int i4) {
        int min = Math.min(this.f22255h, i4);
        y(min);
        return min;
    }

    private void y(int i4) {
        int i10 = this.f22255h - i4;
        this.f22255h = i10;
        this.f22254g = 0;
        byte[] bArr = this.f22253f;
        byte[] bArr2 = i10 < bArr.length - 524288 ? new byte[65536 + i10] : bArr;
        System.arraycopy(bArr, i4, bArr2, 0, i10);
        this.f22253f = bArr2;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public boolean f(int i4, boolean z9) throws IOException {
        int x9 = x(i4);
        while (x9 < i4 && x9 != -1) {
            x9 = w(this.f22249b, -x9, Math.min(i4, this.f22249b.length + x9), x9, z9);
        }
        t(x9);
        return x9 != -1;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public boolean g(byte[] bArr, int i4, int i10, boolean z9) throws IOException {
        if (q(i10, z9)) {
            System.arraycopy(this.f22253f, this.f22254g - i10, bArr, i4, i10);
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public long getLength() {
        return this.f22251d;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public long getPosition() {
        return this.f22252e;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void h() {
        this.f22254g = 0;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public boolean i(byte[] bArr, int i4, int i10, boolean z9) throws IOException {
        int v9 = v(bArr, i4, i10);
        while (v9 < i10 && v9 != -1) {
            v9 = w(bArr, i4, i10, v9, z9);
        }
        t(v9);
        return v9 != -1;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public long j() {
        return this.f22252e + this.f22254g;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void k(int i4) throws IOException {
        q(i4, false);
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public <E extends Throwable> void m(long j4, E e4) throws Throwable {
        com.google.android.exoplayer2.util.a.a(j4 >= 0);
        this.f22252e = j4;
        throw e4;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public int n(byte[] bArr, int i4, int i10) throws IOException {
        int min;
        u(i10);
        int i11 = this.f22255h;
        int i12 = this.f22254g;
        int i13 = i11 - i12;
        if (i13 == 0) {
            min = w(this.f22253f, i12, i10, 0, true);
            if (min == -1) {
                return -1;
            }
            this.f22255h += min;
        } else {
            min = Math.min(i10, i13);
        }
        System.arraycopy(this.f22253f, this.f22254g, bArr, i4, min);
        this.f22254g += min;
        return min;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void o(int i4) throws IOException {
        f(i4, false);
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public boolean q(int i4, boolean z9) throws IOException {
        u(i4);
        int i10 = this.f22255h - this.f22254g;
        while (i10 < i4) {
            i10 = w(this.f22253f, this.f22254g, i4, i10, z9);
            if (i10 == -1) {
                return false;
            }
            this.f22255h = this.f22254g + i10;
        }
        this.f22254g += i4;
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.l, com.google.android.exoplayer2.upstream.i
    public int read(byte[] bArr, int i4, int i10) throws IOException {
        int v9 = v(bArr, i4, i10);
        if (v9 == 0) {
            v9 = w(bArr, i4, i10, 0, true);
        }
        t(v9);
        return v9;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void readFully(byte[] bArr, int i4, int i10) throws IOException {
        i(bArr, i4, i10, false);
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void s(byte[] bArr, int i4, int i10) throws IOException {
        g(bArr, i4, i10, false);
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public int skip(int i4) throws IOException {
        int x9 = x(i4);
        if (x9 == 0) {
            byte[] bArr = this.f22249b;
            x9 = w(bArr, 0, Math.min(i4, bArr.length), 0, true);
        }
        t(x9);
        return x9;
    }
}

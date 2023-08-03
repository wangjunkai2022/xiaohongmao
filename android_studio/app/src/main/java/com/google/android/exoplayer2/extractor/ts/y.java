package com.google.android.exoplayer2.extractor.ts;

import com.google.android.exoplayer2.util.u0;
import com.google.android.exoplayer2.util.z0;
import java.io.IOException;

/* compiled from: PsDurationReader.java */
/* loaded from: classes2.dex */
final class y {

    /* renamed from: i  reason: collision with root package name */
    private static final int f23460i = 20000;

    /* renamed from: c  reason: collision with root package name */
    private boolean f23463c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f23464d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f23465e;

    /* renamed from: a  reason: collision with root package name */
    private final u0 f23461a = new u0(0);

    /* renamed from: f  reason: collision with root package name */
    private long f23466f = com.google.android.exoplayer2.i.f23649b;

    /* renamed from: g  reason: collision with root package name */
    private long f23467g = com.google.android.exoplayer2.i.f23649b;

    /* renamed from: h  reason: collision with root package name */
    private long f23468h = com.google.android.exoplayer2.i.f23649b;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.h0 f23462b = new com.google.android.exoplayer2.util.h0();

    private static boolean a(byte[] bArr) {
        return (bArr[0] & 196) == 68 && (bArr[2] & 4) == 4 && (bArr[4] & 4) == 4 && (bArr[5] & 1) == 1 && (bArr[8] & 3) == 3;
    }

    private int b(com.google.android.exoplayer2.extractor.l lVar) {
        this.f23462b.P(z0.f27748f);
        this.f23463c = true;
        lVar.h();
        return 0;
    }

    private int f(byte[] bArr, int i4) {
        return (bArr[i4 + 3] & 255) | ((bArr[i4] & 255) << 24) | ((bArr[i4 + 1] & 255) << 16) | ((bArr[i4 + 2] & 255) << 8);
    }

    private int h(com.google.android.exoplayer2.extractor.l lVar, com.google.android.exoplayer2.extractor.z zVar) throws IOException {
        int min = (int) Math.min((long) com.google.android.exoplayer2.audio.j0.f21249v, lVar.getLength());
        long j4 = 0;
        if (lVar.getPosition() != j4) {
            zVar.f23544a = j4;
            return 1;
        }
        this.f23462b.O(min);
        lVar.h();
        lVar.s(this.f23462b.d(), 0, min);
        this.f23466f = i(this.f23462b);
        this.f23464d = true;
        return 0;
    }

    private long i(com.google.android.exoplayer2.util.h0 h0Var) {
        int f10 = h0Var.f();
        for (int e4 = h0Var.e(); e4 < f10 - 3; e4++) {
            if (f(h0Var.d(), e4) == 442) {
                h0Var.S(e4 + 4);
                long l10 = l(h0Var);
                if (l10 != com.google.android.exoplayer2.i.f23649b) {
                    return l10;
                }
            }
        }
        return com.google.android.exoplayer2.i.f23649b;
    }

    private int j(com.google.android.exoplayer2.extractor.l lVar, com.google.android.exoplayer2.extractor.z zVar) throws IOException {
        long length = lVar.getLength();
        int min = (int) Math.min((long) com.google.android.exoplayer2.audio.j0.f21249v, length);
        long j4 = length - min;
        if (lVar.getPosition() != j4) {
            zVar.f23544a = j4;
            return 1;
        }
        this.f23462b.O(min);
        lVar.h();
        lVar.s(this.f23462b.d(), 0, min);
        this.f23467g = k(this.f23462b);
        this.f23465e = true;
        return 0;
    }

    private long k(com.google.android.exoplayer2.util.h0 h0Var) {
        int e4 = h0Var.e();
        for (int f10 = h0Var.f() - 4; f10 >= e4; f10--) {
            if (f(h0Var.d(), f10) == 442) {
                h0Var.S(f10 + 4);
                long l10 = l(h0Var);
                if (l10 != com.google.android.exoplayer2.i.f23649b) {
                    return l10;
                }
            }
        }
        return com.google.android.exoplayer2.i.f23649b;
    }

    public static long l(com.google.android.exoplayer2.util.h0 h0Var) {
        int e4 = h0Var.e();
        if (h0Var.a() < 9) {
            return com.google.android.exoplayer2.i.f23649b;
        }
        byte[] bArr = new byte[9];
        h0Var.k(bArr, 0, 9);
        h0Var.S(e4);
        return !a(bArr) ? com.google.android.exoplayer2.i.f23649b : m(bArr);
    }

    private static long m(byte[] bArr) {
        return (((bArr[0] & 56) >> 3) << 30) | ((bArr[0] & 3) << 28) | ((bArr[1] & 255) << 20) | (((bArr[2] & 248) >> 3) << 15) | ((bArr[2] & 3) << 13) | ((bArr[3] & 255) << 5) | ((bArr[4] & 248) >> 3);
    }

    public long c() {
        return this.f23468h;
    }

    public u0 d() {
        return this.f23461a;
    }

    public boolean e() {
        return this.f23463c;
    }

    public int g(com.google.android.exoplayer2.extractor.l lVar, com.google.android.exoplayer2.extractor.z zVar) throws IOException {
        if (!this.f23465e) {
            return j(lVar, zVar);
        }
        if (this.f23467g == com.google.android.exoplayer2.i.f23649b) {
            return b(lVar);
        }
        if (!this.f23464d) {
            return h(lVar, zVar);
        }
        long j4 = this.f23466f;
        if (j4 == com.google.android.exoplayer2.i.f23649b) {
            return b(lVar);
        }
        this.f23468h = this.f23461a.b(this.f23467g) - this.f23461a.b(j4);
        return b(lVar);
    }
}

package com.google.android.exoplayer2.extractor.rawcc;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.e0;
import com.google.android.exoplayer2.extractor.k;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.extractor.z;
import com.google.android.exoplayer2.i;
import com.google.android.exoplayer2.util.h0;
import java.io.IOException;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* compiled from: RawCcExtractor.java */
/* loaded from: classes2.dex */
public final class a implements k {

    /* renamed from: l  reason: collision with root package name */
    private static final int f22948l = 9;

    /* renamed from: m  reason: collision with root package name */
    private static final int f22949m = 8;

    /* renamed from: n  reason: collision with root package name */
    private static final int f22950n = 1380139777;

    /* renamed from: o  reason: collision with root package name */
    private static final int f22951o = 4;

    /* renamed from: p  reason: collision with root package name */
    private static final int f22952p = 8;

    /* renamed from: q  reason: collision with root package name */
    private static final int f22953q = 0;

    /* renamed from: r  reason: collision with root package name */
    private static final int f22954r = 1;

    /* renamed from: s  reason: collision with root package name */
    private static final int f22955s = 2;

    /* renamed from: d  reason: collision with root package name */
    private final Format f22956d;

    /* renamed from: f  reason: collision with root package name */
    private e0 f22958f;

    /* renamed from: h  reason: collision with root package name */
    private int f22960h;

    /* renamed from: i  reason: collision with root package name */
    private long f22961i;

    /* renamed from: j  reason: collision with root package name */
    private int f22962j;

    /* renamed from: k  reason: collision with root package name */
    private int f22963k;

    /* renamed from: e  reason: collision with root package name */
    private final h0 f22957e = new h0(9);

    /* renamed from: g  reason: collision with root package name */
    private int f22959g = 0;

    public a(Format format) {
        this.f22956d = format;
    }

    private boolean e(l lVar) throws IOException {
        this.f22957e.O(8);
        if (lVar.i(this.f22957e.d(), 0, 8, true)) {
            if (this.f22957e.o() == f22950n) {
                this.f22960h = this.f22957e.G();
                return true;
            }
            throw new IOException("Input not RawCC");
        }
        return false;
    }

    @RequiresNonNull({"trackOutput"})
    private void f(l lVar) throws IOException {
        while (this.f22962j > 0) {
            this.f22957e.O(3);
            lVar.readFully(this.f22957e.d(), 0, 3);
            this.f22958f.c(this.f22957e, 3);
            this.f22963k += 3;
            this.f22962j--;
        }
        int i4 = this.f22963k;
        if (i4 > 0) {
            this.f22958f.e(this.f22961i, 1, i4, 0, null);
        }
    }

    private boolean g(l lVar) throws IOException {
        int i4 = this.f22960h;
        if (i4 == 0) {
            this.f22957e.O(5);
            if (!lVar.i(this.f22957e.d(), 0, 5, true)) {
                return false;
            }
            this.f22961i = (this.f22957e.I() * 1000) / 45;
        } else if (i4 == 1) {
            this.f22957e.O(9);
            if (!lVar.i(this.f22957e.d(), 0, 9, true)) {
                return false;
            }
            this.f22961i = this.f22957e.z();
        } else {
            int i10 = this.f22960h;
            StringBuilder sb = new StringBuilder(39);
            sb.append("Unsupported version number: ");
            sb.append(i10);
            throw new ParserException(sb.toString());
        }
        this.f22962j = this.f22957e.G();
        this.f22963k = 0;
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void a(long j4, long j10) {
        this.f22959g = 0;
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public boolean b(l lVar) throws IOException {
        this.f22957e.O(8);
        lVar.s(this.f22957e.d(), 0, 8);
        return this.f22957e.o() == f22950n;
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public int c(l lVar, z zVar) throws IOException {
        com.google.android.exoplayer2.util.a.k(this.f22958f);
        while (true) {
            int i4 = this.f22959g;
            if (i4 != 0) {
                if (i4 != 1) {
                    if (i4 == 2) {
                        f(lVar);
                        this.f22959g = 1;
                        return 0;
                    }
                    throw new IllegalStateException();
                } else if (g(lVar)) {
                    this.f22959g = 2;
                } else {
                    this.f22959g = 0;
                    return -1;
                }
            } else if (!e(lVar)) {
                return -1;
            } else {
                this.f22959g = 1;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void d(m mVar) {
        mVar.q(new b0.b(i.f23649b));
        e0 f10 = mVar.f(0, 3);
        this.f22958f = f10;
        f10.d(this.f22956d);
        mVar.t();
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void release() {
    }
}

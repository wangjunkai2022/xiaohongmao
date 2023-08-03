package com.google.android.exoplayer2.extractor.mp4;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.h0;
import java.io.IOException;

/* compiled from: TrackFragment.java */
/* loaded from: classes2.dex */
final class q {

    /* renamed from: a  reason: collision with root package name */
    public c f22829a;

    /* renamed from: b  reason: collision with root package name */
    public long f22830b;

    /* renamed from: c  reason: collision with root package name */
    public long f22831c;

    /* renamed from: d  reason: collision with root package name */
    public long f22832d;

    /* renamed from: e  reason: collision with root package name */
    public int f22833e;

    /* renamed from: f  reason: collision with root package name */
    public int f22834f;

    /* renamed from: m  reason: collision with root package name */
    public boolean f22841m;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    public p f22843o;

    /* renamed from: q  reason: collision with root package name */
    public boolean f22845q;

    /* renamed from: r  reason: collision with root package name */
    public long f22846r;

    /* renamed from: s  reason: collision with root package name */
    public boolean f22847s;

    /* renamed from: g  reason: collision with root package name */
    public long[] f22835g = new long[0];

    /* renamed from: h  reason: collision with root package name */
    public int[] f22836h = new int[0];

    /* renamed from: i  reason: collision with root package name */
    public int[] f22837i = new int[0];

    /* renamed from: j  reason: collision with root package name */
    public int[] f22838j = new int[0];

    /* renamed from: k  reason: collision with root package name */
    public long[] f22839k = new long[0];

    /* renamed from: l  reason: collision with root package name */
    public boolean[] f22840l = new boolean[0];

    /* renamed from: n  reason: collision with root package name */
    public boolean[] f22842n = new boolean[0];

    /* renamed from: p  reason: collision with root package name */
    public final h0 f22844p = new h0();

    public void a(com.google.android.exoplayer2.extractor.l lVar) throws IOException {
        lVar.readFully(this.f22844p.d(), 0, this.f22844p.f());
        this.f22844p.S(0);
        this.f22845q = false;
    }

    public void b(h0 h0Var) {
        h0Var.k(this.f22844p.d(), 0, this.f22844p.f());
        this.f22844p.S(0);
        this.f22845q = false;
    }

    public long c(int i4) {
        return this.f22839k[i4] + this.f22838j[i4];
    }

    public void d(int i4) {
        this.f22844p.O(i4);
        this.f22841m = true;
        this.f22845q = true;
    }

    public void e(int i4, int i10) {
        this.f22833e = i4;
        this.f22834f = i10;
        if (this.f22836h.length < i4) {
            this.f22835g = new long[i4];
            this.f22836h = new int[i4];
        }
        if (this.f22837i.length < i10) {
            int i11 = (i10 * 125) / 100;
            this.f22837i = new int[i11];
            this.f22838j = new int[i11];
            this.f22839k = new long[i11];
            this.f22840l = new boolean[i11];
            this.f22842n = new boolean[i11];
        }
    }

    public void f() {
        this.f22833e = 0;
        this.f22846r = 0L;
        this.f22847s = false;
        this.f22841m = false;
        this.f22845q = false;
        this.f22843o = null;
    }

    public boolean g(int i4) {
        return this.f22841m && this.f22842n[i4];
    }
}

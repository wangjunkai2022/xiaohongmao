package com.google.android.exoplayer2;

import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.b1;
import com.google.android.exoplayer2.h;
import com.google.android.exoplayer2.source.ads.c;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;

/* compiled from: Timeline.java */
/* loaded from: classes2.dex */
public abstract class s2 implements h {

    /* renamed from: b  reason: collision with root package name */
    private static final int f24543b = 0;

    /* renamed from: c  reason: collision with root package name */
    private static final int f24544c = 1;

    /* renamed from: d  reason: collision with root package name */
    private static final int f24545d = 2;

    /* renamed from: a  reason: collision with root package name */
    public static final s2 f24542a = new a();

    /* renamed from: e  reason: collision with root package name */
    public static final h.a<s2> f24546e = r2.f24537a;

    /* compiled from: Timeline.java */
    /* loaded from: classes2.dex */
    class a extends s2 {
        a() {
        }

        @Override // com.google.android.exoplayer2.s2
        public int f(Object obj) {
            return -1;
        }

        @Override // com.google.android.exoplayer2.s2
        public b k(int i4, b bVar, boolean z9) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.google.android.exoplayer2.s2
        public int m() {
            return 0;
        }

        @Override // com.google.android.exoplayer2.s2
        public Object q(int i4) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.google.android.exoplayer2.s2
        public d s(int i4, d dVar, long j4) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.google.android.exoplayer2.s2
        public int u() {
            return 0;
        }
    }

    /* compiled from: Timeline.java */
    /* loaded from: classes2.dex */
    public static final class b implements h {

        /* renamed from: h  reason: collision with root package name */
        private static final int f24547h = 0;

        /* renamed from: i  reason: collision with root package name */
        private static final int f24548i = 1;

        /* renamed from: j  reason: collision with root package name */
        private static final int f24549j = 2;

        /* renamed from: k  reason: collision with root package name */
        private static final int f24550k = 3;

        /* renamed from: l  reason: collision with root package name */
        private static final int f24551l = 4;

        /* renamed from: m  reason: collision with root package name */
        public static final h.a<b> f24552m = t2.f25303a;
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        public Object f24553a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public Object f24554b;

        /* renamed from: c  reason: collision with root package name */
        public int f24555c;

        /* renamed from: d  reason: collision with root package name */
        public long f24556d;

        /* renamed from: e  reason: collision with root package name */
        public long f24557e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f24558f;

        /* renamed from: g  reason: collision with root package name */
        private com.google.android.exoplayer2.source.ads.c f24559g = com.google.android.exoplayer2.source.ads.c.f24696l;

        /* JADX INFO: Access modifiers changed from: private */
        public static b c(Bundle bundle) {
            com.google.android.exoplayer2.source.ads.c cVar;
            int i4 = bundle.getInt(s(0), 0);
            long j4 = bundle.getLong(s(1), i.f23649b);
            long j10 = bundle.getLong(s(2), 0L);
            boolean z9 = bundle.getBoolean(s(3));
            Bundle bundle2 = bundle.getBundle(s(4));
            if (bundle2 != null) {
                cVar = com.google.android.exoplayer2.source.ads.c.f24701q.a(bundle2);
            } else {
                cVar = com.google.android.exoplayer2.source.ads.c.f24696l;
            }
            com.google.android.exoplayer2.source.ads.c cVar2 = cVar;
            b bVar = new b();
            bVar.u(null, null, i4, j4, j10, cVar2, z9);
            return bVar;
        }

        private static String s(int i4) {
            return Integer.toString(i4, 36);
        }

        public int d(int i4) {
            return this.f24559g.f24705d[i4].f24713a;
        }

        public long e(int i4, int i10) {
            c.a aVar = this.f24559g.f24705d[i4];
            return aVar.f24713a != -1 ? aVar.f24716d[i10] : i.f23649b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !b.class.equals(obj.getClass())) {
                return false;
            }
            b bVar = (b) obj;
            return com.google.android.exoplayer2.util.z0.c(this.f24553a, bVar.f24553a) && com.google.android.exoplayer2.util.z0.c(this.f24554b, bVar.f24554b) && this.f24555c == bVar.f24555c && this.f24556d == bVar.f24556d && this.f24557e == bVar.f24557e && this.f24558f == bVar.f24558f && com.google.android.exoplayer2.util.z0.c(this.f24559g, bVar.f24559g);
        }

        public int f() {
            return this.f24559g.f24703b;
        }

        public int g(long j4) {
            return this.f24559g.c(j4, this.f24556d);
        }

        public int h(long j4) {
            return this.f24559g.d(j4, this.f24556d);
        }

        public int hashCode() {
            Object obj = this.f24553a;
            int hashCode = (com.facebook.imageutils.c.f13390e + (obj == null ? 0 : obj.hashCode())) * 31;
            Object obj2 = this.f24554b;
            int hashCode2 = obj2 != null ? obj2.hashCode() : 0;
            long j4 = this.f24556d;
            long j10 = this.f24557e;
            return ((((((((((hashCode + hashCode2) * 31) + this.f24555c) * 31) + ((int) (j4 ^ (j4 >>> 32)))) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + (this.f24558f ? 1 : 0)) * 31) + this.f24559g.hashCode();
        }

        public long i(int i4) {
            return this.f24559g.f24704c[i4];
        }

        public long j() {
            return this.f24559g.f24706e;
        }

        @Nullable
        public Object k() {
            return this.f24559g.f24702a;
        }

        public long l() {
            return i.d(this.f24556d);
        }

        public long m() {
            return this.f24556d;
        }

        public int n(int i4) {
            return this.f24559g.f24705d[i4].e();
        }

        public int o(int i4, int i10) {
            return this.f24559g.f24705d[i4].f(i10);
        }

        public long p() {
            return i.d(this.f24557e);
        }

        public long q() {
            return this.f24557e;
        }

        public boolean r(int i4) {
            return !this.f24559g.f24705d[i4].g();
        }

        public b t(@Nullable Object obj, @Nullable Object obj2, int i4, long j4, long j10) {
            return u(obj, obj2, i4, j4, j10, com.google.android.exoplayer2.source.ads.c.f24696l, false);
        }

        @Override // com.google.android.exoplayer2.h
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putInt(s(0), this.f24555c);
            bundle.putLong(s(1), this.f24556d);
            bundle.putLong(s(2), this.f24557e);
            bundle.putBoolean(s(3), this.f24558f);
            bundle.putBundle(s(4), this.f24559g.toBundle());
            return bundle;
        }

        public b u(@Nullable Object obj, @Nullable Object obj2, int i4, long j4, long j10, com.google.android.exoplayer2.source.ads.c cVar, boolean z9) {
            this.f24553a = obj;
            this.f24554b = obj2;
            this.f24555c = i4;
            this.f24556d = j4;
            this.f24557e = j10;
            this.f24559g = cVar;
            this.f24558f = z9;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Timeline.java */
    /* loaded from: classes2.dex */
    public static final class c extends s2 {

        /* renamed from: f  reason: collision with root package name */
        private final ImmutableList<d> f24560f;

        /* renamed from: g  reason: collision with root package name */
        private final ImmutableList<b> f24561g;

        /* renamed from: h  reason: collision with root package name */
        private final int[] f24562h;

        /* renamed from: i  reason: collision with root package name */
        private final int[] f24563i;

        public c(ImmutableList<d> immutableList, ImmutableList<b> immutableList2, int[] iArr) {
            com.google.android.exoplayer2.util.a.a(immutableList.size() == iArr.length);
            this.f24560f = immutableList;
            this.f24561g = immutableList2;
            this.f24562h = iArr;
            this.f24563i = new int[iArr.length];
            for (int i4 = 0; i4 < iArr.length; i4++) {
                this.f24563i[iArr[i4]] = i4;
            }
        }

        @Override // com.google.android.exoplayer2.s2
        public int e(boolean z9) {
            if (v()) {
                return -1;
            }
            if (z9) {
                return this.f24562h[0];
            }
            return 0;
        }

        @Override // com.google.android.exoplayer2.s2
        public int f(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.exoplayer2.s2
        public int g(boolean z9) {
            if (v()) {
                return -1;
            }
            if (z9) {
                return this.f24562h[u() - 1];
            }
            return u() - 1;
        }

        @Override // com.google.android.exoplayer2.s2
        public int i(int i4, int i10, boolean z9) {
            if (i10 == 1) {
                return i4;
            }
            if (i4 != g(z9)) {
                return z9 ? this.f24562h[this.f24563i[i4] + 1] : i4 + 1;
            } else if (i10 == 2) {
                return e(z9);
            } else {
                return -1;
            }
        }

        @Override // com.google.android.exoplayer2.s2
        public b k(int i4, b bVar, boolean z9) {
            b bVar2 = this.f24561g.get(i4);
            bVar.u(bVar2.f24553a, bVar2.f24554b, bVar2.f24555c, bVar2.f24556d, bVar2.f24557e, bVar2.f24559g, bVar2.f24558f);
            return bVar;
        }

        @Override // com.google.android.exoplayer2.s2
        public int m() {
            return this.f24561g.size();
        }

        @Override // com.google.android.exoplayer2.s2
        public int p(int i4, int i10, boolean z9) {
            if (i10 == 1) {
                return i4;
            }
            if (i4 != e(z9)) {
                return z9 ? this.f24562h[this.f24563i[i4] - 1] : i4 - 1;
            } else if (i10 == 2) {
                return g(z9);
            } else {
                return -1;
            }
        }

        @Override // com.google.android.exoplayer2.s2
        public Object q(int i4) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.exoplayer2.s2
        public d s(int i4, d dVar, long j4) {
            d dVar2 = this.f24560f.get(i4);
            dVar.l(dVar2.f24573a, dVar2.f24575c, dVar2.f24576d, dVar2.f24577e, dVar2.f24578f, dVar2.f24579g, dVar2.f24580h, dVar2.f24581i, dVar2.f24583k, dVar2.f24585m, dVar2.f24586n, dVar2.f24587o, dVar2.f24588p, dVar2.f24589q);
            dVar.f24584l = dVar2.f24584l;
            return dVar;
        }

        @Override // com.google.android.exoplayer2.s2
        public int u() {
            return this.f24560f.size();
        }
    }

    /* compiled from: Timeline.java */
    /* loaded from: classes2.dex */
    public static final class d implements h {
        private static final int A = 7;
        private static final int B = 8;
        private static final int C = 9;
        private static final int D = 10;
        private static final int E = 11;
        private static final int F = 12;
        private static final int G = 13;

        /* renamed from: u  reason: collision with root package name */
        private static final int f24567u = 1;

        /* renamed from: v  reason: collision with root package name */
        private static final int f24568v = 2;

        /* renamed from: w  reason: collision with root package name */
        private static final int f24569w = 3;

        /* renamed from: x  reason: collision with root package name */
        private static final int f24570x = 4;

        /* renamed from: y  reason: collision with root package name */
        private static final int f24571y = 5;

        /* renamed from: z  reason: collision with root package name */
        private static final int f24572z = 6;
        @Nullable
        @Deprecated

        /* renamed from: b  reason: collision with root package name */
        public Object f24574b;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public Object f24576d;

        /* renamed from: e  reason: collision with root package name */
        public long f24577e;

        /* renamed from: f  reason: collision with root package name */
        public long f24578f;

        /* renamed from: g  reason: collision with root package name */
        public long f24579g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f24580h;

        /* renamed from: i  reason: collision with root package name */
        public boolean f24581i;
        @Deprecated

        /* renamed from: j  reason: collision with root package name */
        public boolean f24582j;
        @Nullable

        /* renamed from: k  reason: collision with root package name */
        public b1.f f24583k;

        /* renamed from: l  reason: collision with root package name */
        public boolean f24584l;

        /* renamed from: m  reason: collision with root package name */
        public long f24585m;

        /* renamed from: n  reason: collision with root package name */
        public long f24586n;

        /* renamed from: o  reason: collision with root package name */
        public int f24587o;

        /* renamed from: p  reason: collision with root package name */
        public int f24588p;

        /* renamed from: q  reason: collision with root package name */
        public long f24589q;

        /* renamed from: r  reason: collision with root package name */
        public static final Object f24564r = new Object();

        /* renamed from: s  reason: collision with root package name */
        private static final Object f24565s = new Object();

        /* renamed from: t  reason: collision with root package name */
        private static final b1 f24566t = new b1.c().z("com.google.android.exoplayer2.Timeline").F(Uri.EMPTY).a();
        public static final h.a<d> H = u2.f26077a;

        /* renamed from: a  reason: collision with root package name */
        public Object f24573a = f24564r;

        /* renamed from: c  reason: collision with root package name */
        public b1 f24575c = f24566t;

        /* JADX INFO: Access modifiers changed from: private */
        public static d b(Bundle bundle) {
            Bundle bundle2 = bundle.getBundle(k(1));
            b1 a10 = bundle2 != null ? b1.f21437k.a(bundle2) : null;
            long j4 = bundle.getLong(k(2), i.f23649b);
            long j10 = bundle.getLong(k(3), i.f23649b);
            long j11 = bundle.getLong(k(4), i.f23649b);
            boolean z9 = bundle.getBoolean(k(5), false);
            boolean z10 = bundle.getBoolean(k(6), false);
            Bundle bundle3 = bundle.getBundle(k(7));
            b1.f a11 = bundle3 != null ? b1.f.f21496l.a(bundle3) : null;
            boolean z11 = bundle.getBoolean(k(8), false);
            long j12 = bundle.getLong(k(9), 0L);
            long j13 = bundle.getLong(k(10), i.f23649b);
            int i4 = bundle.getInt(k(11), 0);
            int i10 = bundle.getInt(k(12), 0);
            long j14 = bundle.getLong(k(13), 0L);
            d dVar = new d();
            dVar.l(f24565s, a10, null, j4, j10, j11, z9, z10, a11, j12, j13, i4, i10, j14);
            dVar.f24584l = z11;
            return dVar;
        }

        private static String k(int i4) {
            return Integer.toString(i4, 36);
        }

        public long c() {
            return com.google.android.exoplayer2.util.z0.h0(this.f24579g);
        }

        public long d() {
            return i.d(this.f24585m);
        }

        public long e() {
            return this.f24585m;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !d.class.equals(obj.getClass())) {
                return false;
            }
            d dVar = (d) obj;
            return com.google.android.exoplayer2.util.z0.c(this.f24573a, dVar.f24573a) && com.google.android.exoplayer2.util.z0.c(this.f24575c, dVar.f24575c) && com.google.android.exoplayer2.util.z0.c(this.f24576d, dVar.f24576d) && com.google.android.exoplayer2.util.z0.c(this.f24583k, dVar.f24583k) && this.f24577e == dVar.f24577e && this.f24578f == dVar.f24578f && this.f24579g == dVar.f24579g && this.f24580h == dVar.f24580h && this.f24581i == dVar.f24581i && this.f24584l == dVar.f24584l && this.f24585m == dVar.f24585m && this.f24586n == dVar.f24586n && this.f24587o == dVar.f24587o && this.f24588p == dVar.f24588p && this.f24589q == dVar.f24589q;
        }

        public long f() {
            return i.d(this.f24586n);
        }

        public long g() {
            return this.f24586n;
        }

        public long h() {
            return i.d(this.f24589q);
        }

        public int hashCode() {
            int hashCode = (((com.facebook.imageutils.c.f13390e + this.f24573a.hashCode()) * 31) + this.f24575c.hashCode()) * 31;
            Object obj = this.f24576d;
            int hashCode2 = (hashCode + (obj == null ? 0 : obj.hashCode())) * 31;
            b1.f fVar = this.f24583k;
            int hashCode3 = fVar != null ? fVar.hashCode() : 0;
            long j4 = this.f24577e;
            long j10 = this.f24578f;
            long j11 = this.f24579g;
            long j12 = this.f24585m;
            long j13 = this.f24586n;
            long j14 = this.f24589q;
            return ((((((((((((((((((((((hashCode2 + hashCode3) * 31) + ((int) (j4 ^ (j4 >>> 32)))) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31) + (this.f24580h ? 1 : 0)) * 31) + (this.f24581i ? 1 : 0)) * 31) + (this.f24584l ? 1 : 0)) * 31) + ((int) (j12 ^ (j12 >>> 32)))) * 31) + ((int) (j13 ^ (j13 >>> 32)))) * 31) + this.f24587o) * 31) + this.f24588p) * 31) + ((int) (j14 ^ (j14 >>> 32)));
        }

        public long i() {
            return this.f24589q;
        }

        public boolean j() {
            com.google.android.exoplayer2.util.a.i(this.f24582j == (this.f24583k != null));
            return this.f24583k != null;
        }

        public d l(Object obj, @Nullable b1 b1Var, @Nullable Object obj2, long j4, long j10, long j11, boolean z9, boolean z10, @Nullable b1.f fVar, long j12, long j13, int i4, int i10, long j14) {
            b1.g gVar;
            this.f24573a = obj;
            this.f24575c = b1Var != null ? b1Var : f24566t;
            this.f24574b = (b1Var == null || (gVar = b1Var.f21439b) == null) ? null : gVar.f21509h;
            this.f24576d = obj2;
            this.f24577e = j4;
            this.f24578f = j10;
            this.f24579g = j11;
            this.f24580h = z9;
            this.f24581i = z10;
            this.f24582j = fVar != null;
            this.f24583k = fVar;
            this.f24585m = j12;
            this.f24586n = j13;
            this.f24587o = i4;
            this.f24588p = i10;
            this.f24589q = j14;
            this.f24584l = false;
            return this;
        }

        @Override // com.google.android.exoplayer2.h
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putBundle(k(1), this.f24575c.toBundle());
            bundle.putLong(k(2), this.f24577e);
            bundle.putLong(k(3), this.f24578f);
            bundle.putLong(k(4), this.f24579g);
            bundle.putBoolean(k(5), this.f24580h);
            bundle.putBoolean(k(6), this.f24581i);
            b1.f fVar = this.f24583k;
            if (fVar != null) {
                bundle.putBundle(k(7), fVar.toBundle());
            }
            bundle.putBoolean(k(8), this.f24584l);
            bundle.putLong(k(9), this.f24585m);
            bundle.putLong(k(10), this.f24586n);
            bundle.putInt(k(11), this.f24587o);
            bundle.putInt(k(12), this.f24588p);
            bundle.putLong(k(13), this.f24589q);
            return bundle;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static s2 b(Bundle bundle) {
        ImmutableList c10 = c(d.H, com.google.android.exoplayer2.util.c.a(bundle, x(0)));
        ImmutableList c11 = c(b.f24552m, com.google.android.exoplayer2.util.c.a(bundle, x(1)));
        int[] intArray = bundle.getIntArray(x(2));
        if (intArray == null) {
            intArray = d(c10.size());
        }
        return new c(c10, c11, intArray);
    }

    private static <T extends h> ImmutableList<T> c(h.a<T> aVar, @Nullable IBinder iBinder) {
        if (iBinder == null) {
            return ImmutableList.of();
        }
        ImmutableList.a aVar2 = new ImmutableList.a();
        ImmutableList<Bundle> a10 = g.a(iBinder);
        for (int i4 = 0; i4 < a10.size(); i4++) {
            aVar2.g(aVar.a(a10.get(i4)));
        }
        return aVar2.e();
    }

    private static int[] d(int i4) {
        int[] iArr = new int[i4];
        for (int i10 = 0; i10 < i4; i10++) {
            iArr[i10] = i10;
        }
        return iArr;
    }

    private static String x(int i4) {
        return Integer.toString(i4, 36);
    }

    public int e(boolean z9) {
        return v() ? -1 : 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof s2) {
            s2 s2Var = (s2) obj;
            if (s2Var.u() == u() && s2Var.m() == m()) {
                d dVar = new d();
                b bVar = new b();
                d dVar2 = new d();
                b bVar2 = new b();
                for (int i4 = 0; i4 < u(); i4++) {
                    if (!r(i4, dVar).equals(s2Var.r(i4, dVar2))) {
                        return false;
                    }
                }
                for (int i10 = 0; i10 < m(); i10++) {
                    if (!k(i10, bVar, true).equals(s2Var.k(i10, bVar2, true))) {
                        return false;
                    }
                }
                return true;
            }
            return false;
        }
        return false;
    }

    public abstract int f(Object obj);

    public int g(boolean z9) {
        if (v()) {
            return -1;
        }
        return u() - 1;
    }

    public final int h(int i4, b bVar, d dVar, int i10, boolean z9) {
        int i11 = j(i4, bVar).f24555c;
        if (r(i11, dVar).f24588p == i4) {
            int i12 = i(i11, i10, z9);
            if (i12 == -1) {
                return -1;
            }
            return r(i12, dVar).f24587o;
        }
        return i4 + 1;
    }

    public int hashCode() {
        d dVar = new d();
        b bVar = new b();
        int u9 = com.facebook.imageutils.c.f13390e + u();
        for (int i4 = 0; i4 < u(); i4++) {
            u9 = (u9 * 31) + r(i4, dVar).hashCode();
        }
        int m9 = (u9 * 31) + m();
        for (int i10 = 0; i10 < m(); i10++) {
            m9 = (m9 * 31) + k(i10, bVar, true).hashCode();
        }
        return m9;
    }

    public int i(int i4, int i10, boolean z9) {
        if (i10 == 0) {
            if (i4 == g(z9)) {
                return -1;
            }
            return i4 + 1;
        } else if (i10 != 1) {
            if (i10 == 2) {
                return i4 == g(z9) ? e(z9) : i4 + 1;
            }
            throw new IllegalStateException();
        } else {
            return i4;
        }
    }

    public final b j(int i4, b bVar) {
        return k(i4, bVar, false);
    }

    public abstract b k(int i4, b bVar, boolean z9);

    public b l(Object obj, b bVar) {
        return k(f(obj), bVar, true);
    }

    public abstract int m();

    public final Pair<Object, Long> n(d dVar, b bVar, int i4, long j4) {
        return (Pair) com.google.android.exoplayer2.util.a.g(o(dVar, bVar, i4, j4, 0L));
    }

    @Nullable
    public final Pair<Object, Long> o(d dVar, b bVar, int i4, long j4, long j10) {
        com.google.android.exoplayer2.util.a.c(i4, 0, u());
        s(i4, dVar, j10);
        if (j4 == i.f23649b) {
            j4 = dVar.e();
            if (j4 == i.f23649b) {
                return null;
            }
        }
        int i10 = dVar.f24587o;
        j(i10, bVar);
        while (i10 < dVar.f24588p && bVar.f24557e != j4) {
            int i11 = i10 + 1;
            if (j(i11, bVar).f24557e > j4) {
                break;
            }
            i10 = i11;
        }
        k(i10, bVar, true);
        return Pair.create(com.google.android.exoplayer2.util.a.g(bVar.f24554b), Long.valueOf(j4 - bVar.f24557e));
    }

    public int p(int i4, int i10, boolean z9) {
        if (i10 == 0) {
            if (i4 == e(z9)) {
                return -1;
            }
            return i4 - 1;
        } else if (i10 != 1) {
            if (i10 == 2) {
                return i4 == e(z9) ? g(z9) : i4 - 1;
            }
            throw new IllegalStateException();
        } else {
            return i4;
        }
    }

    public abstract Object q(int i4);

    public final d r(int i4, d dVar) {
        return s(i4, dVar, 0L);
    }

    public abstract d s(int i4, d dVar, long j4);

    @Deprecated
    public final d t(int i4, d dVar, boolean z9) {
        return s(i4, dVar, 0L);
    }

    @Override // com.google.android.exoplayer2.h
    public final Bundle toBundle() {
        ArrayList arrayList = new ArrayList();
        int u9 = u();
        d dVar = new d();
        for (int i4 = 0; i4 < u9; i4++) {
            arrayList.add(s(i4, dVar, 0L).toBundle());
        }
        ArrayList arrayList2 = new ArrayList();
        int m9 = m();
        b bVar = new b();
        for (int i10 = 0; i10 < m9; i10++) {
            arrayList2.add(k(i10, bVar, false).toBundle());
        }
        int[] iArr = new int[u9];
        if (u9 > 0) {
            iArr[0] = e(true);
        }
        for (int i11 = 1; i11 < u9; i11++) {
            iArr[i11] = i(iArr[i11 - 1], 0, true);
        }
        Bundle bundle = new Bundle();
        com.google.android.exoplayer2.util.c.c(bundle, x(0), new g(arrayList));
        com.google.android.exoplayer2.util.c.c(bundle, x(1), new g(arrayList2));
        bundle.putIntArray(x(2), iArr);
        return bundle;
    }

    public abstract int u();

    public final boolean v() {
        return u() == 0;
    }

    public final boolean w(int i4, b bVar, d dVar, int i10, boolean z9) {
        return h(i4, bVar, dVar, i10, z9) == -1;
    }
}

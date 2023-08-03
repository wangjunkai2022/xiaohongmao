package com.mp4parser.iso14496.part15;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.ListIterator;

/* compiled from: HevcDecoderConfigurationRecord.java */
/* loaded from: classes3.dex */
public class d {
    boolean A;

    /* renamed from: a  reason: collision with root package name */
    int f46987a;

    /* renamed from: b  reason: collision with root package name */
    int f46988b;

    /* renamed from: c  reason: collision with root package name */
    boolean f46989c;

    /* renamed from: d  reason: collision with root package name */
    int f46990d;

    /* renamed from: e  reason: collision with root package name */
    long f46991e;

    /* renamed from: f  reason: collision with root package name */
    long f46992f;

    /* renamed from: g  reason: collision with root package name */
    int f46993g;

    /* renamed from: i  reason: collision with root package name */
    int f46995i;

    /* renamed from: k  reason: collision with root package name */
    int f46997k;

    /* renamed from: m  reason: collision with root package name */
    int f46999m;

    /* renamed from: o  reason: collision with root package name */
    int f47001o;

    /* renamed from: q  reason: collision with root package name */
    int f47003q;

    /* renamed from: r  reason: collision with root package name */
    int f47004r;

    /* renamed from: s  reason: collision with root package name */
    int f47005s;

    /* renamed from: t  reason: collision with root package name */
    int f47006t;

    /* renamed from: u  reason: collision with root package name */
    boolean f47007u;

    /* renamed from: v  reason: collision with root package name */
    int f47008v;

    /* renamed from: x  reason: collision with root package name */
    boolean f47010x;

    /* renamed from: y  reason: collision with root package name */
    boolean f47011y;

    /* renamed from: z  reason: collision with root package name */
    boolean f47012z;

    /* renamed from: h  reason: collision with root package name */
    int f46994h = 15;

    /* renamed from: j  reason: collision with root package name */
    int f46996j = 63;

    /* renamed from: l  reason: collision with root package name */
    int f46998l = 63;

    /* renamed from: n  reason: collision with root package name */
    int f47000n = 31;

    /* renamed from: p  reason: collision with root package name */
    int f47002p = 31;

    /* renamed from: w  reason: collision with root package name */
    List<a> f47009w = new ArrayList();

    /* compiled from: HevcDecoderConfigurationRecord.java */
    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public boolean f47013a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f47014b;

        /* renamed from: c  reason: collision with root package name */
        public int f47015c;

        /* renamed from: d  reason: collision with root package name */
        public List<byte[]> f47016d;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f47013a == aVar.f47013a && this.f47015c == aVar.f47015c && this.f47014b == aVar.f47014b) {
                ListIterator<byte[]> listIterator = this.f47016d.listIterator();
                ListIterator<byte[]> listIterator2 = aVar.f47016d.listIterator();
                while (listIterator.hasNext() && listIterator2.hasNext()) {
                    byte[] next = listIterator.next();
                    byte[] next2 = listIterator2.next();
                    if (next == null) {
                        if (next2 != null) {
                            return false;
                        }
                    } else if (!Arrays.equals(next, next2)) {
                        return false;
                    }
                }
                return (listIterator.hasNext() || listIterator2.hasNext()) ? false : true;
            }
            return false;
        }

        public int hashCode() {
            int i4 = (((((this.f47013a ? 1 : 0) * 31) + (this.f47014b ? 1 : 0)) * 31) + this.f47015c) * 31;
            List<byte[]> list = this.f47016d;
            return i4 + (list != null ? list.hashCode() : 0);
        }

        public String toString() {
            return "Array{nal_unit_type=" + this.f47015c + ", reserved=" + this.f47014b + ", array_completeness=" + this.f47013a + ", num_nals=" + this.f47016d.size() + '}';
        }
    }

    public void A(int i4) {
        this.f47003q = i4;
    }

    public void B(int i4) {
        this.f47001o = i4;
    }

    public void C(int i4) {
        this.f46999m = i4;
    }

    public void D(int i4) {
        this.f46987a = i4;
    }

    public void E(int i4) {
        this.f47005s = i4;
    }

    public void F(boolean z9) {
        this.f47010x = z9;
    }

    public void G(long j4) {
        this.f46992f = j4;
    }

    public void H(int i4) {
        this.f46993g = i4;
    }

    public void I(long j4) {
        this.f46991e = j4;
    }

    public void J(int i4) {
        this.f46990d = i4;
    }

    public void K(int i4) {
        this.f46988b = i4;
    }

    public void L(boolean z9) {
        this.f46989c = z9;
    }

    public void M(boolean z9) {
        this.f47012z = z9;
    }

    public void N(int i4) {
        this.f47008v = i4;
    }

    public void O(int i4) {
        this.f46995i = i4;
    }

    public void P(boolean z9) {
        this.f47011y = z9;
    }

    public void Q(int i4) {
        this.f47006t = i4;
    }

    public void R(int i4) {
        this.f46997k = i4;
    }

    public void S(boolean z9) {
        this.A = z9;
    }

    public void T(boolean z9) {
        this.f47007u = z9;
    }

    public void U(ByteBuffer byteBuffer) {
        com.coremedia.iso.i.m(byteBuffer, this.f46987a);
        com.coremedia.iso.i.m(byteBuffer, (this.f46988b << 6) + (this.f46989c ? 32 : 0) + this.f46990d);
        com.coremedia.iso.i.i(byteBuffer, this.f46991e);
        long j4 = this.f46992f;
        if (this.f47010x) {
            j4 |= 140737488355328L;
        }
        if (this.f47011y) {
            j4 |= 70368744177664L;
        }
        if (this.f47012z) {
            j4 |= 35184372088832L;
        }
        if (this.A) {
            j4 |= 17592186044416L;
        }
        com.coremedia.iso.i.k(byteBuffer, j4);
        com.coremedia.iso.i.m(byteBuffer, this.f46993g);
        com.coremedia.iso.i.f(byteBuffer, (this.f46994h << 12) + this.f46995i);
        com.coremedia.iso.i.m(byteBuffer, (this.f46996j << 2) + this.f46997k);
        com.coremedia.iso.i.m(byteBuffer, (this.f46998l << 2) + this.f46999m);
        com.coremedia.iso.i.m(byteBuffer, (this.f47000n << 3) + this.f47001o);
        com.coremedia.iso.i.m(byteBuffer, (this.f47002p << 3) + this.f47003q);
        com.coremedia.iso.i.f(byteBuffer, this.f47004r);
        com.coremedia.iso.i.m(byteBuffer, (this.f47005s << 6) + (this.f47006t << 3) + (this.f47007u ? 4 : 0) + this.f47008v);
        com.coremedia.iso.i.m(byteBuffer, this.f47009w.size());
        for (a aVar : this.f47009w) {
            com.coremedia.iso.i.m(byteBuffer, (aVar.f47013a ? 128 : 0) + (aVar.f47014b ? 64 : 0) + aVar.f47015c);
            com.coremedia.iso.i.f(byteBuffer, aVar.f47016d.size());
            for (byte[] bArr : aVar.f47016d) {
                com.coremedia.iso.i.f(byteBuffer, bArr.length);
                byteBuffer.put(bArr);
            }
        }
    }

    public List<a> a() {
        return this.f47009w;
    }

    public int b() {
        return this.f47004r;
    }

    public int c() {
        return this.f47003q;
    }

    public int d() {
        return this.f47001o;
    }

    public int e() {
        return this.f46999m;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        if (this.f47004r == dVar.f47004r && this.f47003q == dVar.f47003q && this.f47001o == dVar.f47001o && this.f46999m == dVar.f46999m && this.f46987a == dVar.f46987a && this.f47005s == dVar.f47005s && this.f46992f == dVar.f46992f && this.f46993g == dVar.f46993g && this.f46991e == dVar.f46991e && this.f46990d == dVar.f46990d && this.f46988b == dVar.f46988b && this.f46989c == dVar.f46989c && this.f47008v == dVar.f47008v && this.f46995i == dVar.f46995i && this.f47006t == dVar.f47006t && this.f46997k == dVar.f46997k && this.f46994h == dVar.f46994h && this.f46996j == dVar.f46996j && this.f46998l == dVar.f46998l && this.f47000n == dVar.f47000n && this.f47002p == dVar.f47002p && this.f47007u == dVar.f47007u) {
            List<a> list = this.f47009w;
            List<a> list2 = dVar.f47009w;
            return list == null ? list2 == null : list.equals(list2);
        }
        return false;
    }

    public int f() {
        return this.f46987a;
    }

    public int g() {
        return this.f47005s;
    }

    public long h() {
        return this.f46992f;
    }

    public int hashCode() {
        long j4 = this.f46991e;
        long j10 = this.f46992f;
        int i4 = ((((((((((((((((((((((((((((((((((((((((((this.f46987a * 31) + this.f46988b) * 31) + (this.f46989c ? 1 : 0)) * 31) + this.f46990d) * 31) + ((int) (j4 ^ (j4 >>> 32)))) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + this.f46993g) * 31) + this.f46994h) * 31) + this.f46995i) * 31) + this.f46996j) * 31) + this.f46997k) * 31) + this.f46998l) * 31) + this.f46999m) * 31) + this.f47000n) * 31) + this.f47001o) * 31) + this.f47002p) * 31) + this.f47003q) * 31) + this.f47004r) * 31) + this.f47005s) * 31) + this.f47006t) * 31) + (this.f47007u ? 1 : 0)) * 31) + this.f47008v) * 31;
        List<a> list = this.f47009w;
        return i4 + (list != null ? list.hashCode() : 0);
    }

    public int i() {
        return this.f46993g;
    }

    public long j() {
        return this.f46991e;
    }

    public int k() {
        return this.f46990d;
    }

    public int l() {
        return this.f46988b;
    }

    public int m() {
        return this.f47008v;
    }

    public int n() {
        return this.f46995i;
    }

    public int o() {
        return this.f47006t;
    }

    public int p() {
        return this.f46997k;
    }

    public int q() {
        int i4 = 23;
        for (a aVar : this.f47009w) {
            i4 += 3;
            for (byte[] bArr : aVar.f47016d) {
                i4 = i4 + 2 + bArr.length;
            }
        }
        return i4;
    }

    public boolean r() {
        return this.f47010x;
    }

    public boolean s() {
        return this.f46989c;
    }

    public boolean t() {
        return this.f47012z;
    }

    public String toString() {
        String str;
        String str2;
        String str3;
        String str4;
        StringBuilder sb = new StringBuilder("HEVCDecoderConfigurationRecord{configurationVersion=");
        sb.append(this.f46987a);
        sb.append(", general_profile_space=");
        sb.append(this.f46988b);
        sb.append(", general_tier_flag=");
        sb.append(this.f46989c);
        sb.append(", general_profile_idc=");
        sb.append(this.f46990d);
        sb.append(", general_profile_compatibility_flags=");
        sb.append(this.f46991e);
        sb.append(", general_constraint_indicator_flags=");
        sb.append(this.f46992f);
        sb.append(", general_level_idc=");
        sb.append(this.f46993g);
        String str5 = "";
        if (this.f46994h != 15) {
            str = ", reserved1=" + this.f46994h;
        } else {
            str = "";
        }
        sb.append(str);
        sb.append(", min_spatial_segmentation_idc=");
        sb.append(this.f46995i);
        if (this.f46996j != 63) {
            str2 = ", reserved2=" + this.f46996j;
        } else {
            str2 = "";
        }
        sb.append(str2);
        sb.append(", parallelismType=");
        sb.append(this.f46997k);
        if (this.f46998l != 63) {
            str3 = ", reserved3=" + this.f46998l;
        } else {
            str3 = "";
        }
        sb.append(str3);
        sb.append(", chromaFormat=");
        sb.append(this.f46999m);
        if (this.f47000n != 31) {
            str4 = ", reserved4=" + this.f47000n;
        } else {
            str4 = "";
        }
        sb.append(str4);
        sb.append(", bitDepthLumaMinus8=");
        sb.append(this.f47001o);
        if (this.f47002p != 31) {
            str5 = ", reserved5=" + this.f47002p;
        }
        sb.append(str5);
        sb.append(", bitDepthChromaMinus8=");
        sb.append(this.f47003q);
        sb.append(", avgFrameRate=");
        sb.append(this.f47004r);
        sb.append(", constantFrameRate=");
        sb.append(this.f47005s);
        sb.append(", numTemporalLayers=");
        sb.append(this.f47006t);
        sb.append(", temporalIdNested=");
        sb.append(this.f47007u);
        sb.append(", lengthSizeMinusOne=");
        sb.append(this.f47008v);
        sb.append(", arrays=");
        sb.append(this.f47009w);
        sb.append('}');
        return sb.toString();
    }

    public boolean u() {
        return this.f47011y;
    }

    public boolean v() {
        return this.A;
    }

    public boolean w() {
        return this.f47007u;
    }

    public void x(ByteBuffer byteBuffer) {
        this.f46987a = com.coremedia.iso.g.p(byteBuffer);
        int p9 = com.coremedia.iso.g.p(byteBuffer);
        this.f46988b = (p9 & 192) >> 6;
        this.f46989c = (p9 & 32) > 0;
        this.f46990d = p9 & 31;
        this.f46991e = com.coremedia.iso.g.l(byteBuffer);
        long n9 = com.coremedia.iso.g.n(byteBuffer);
        this.f46992f = n9;
        this.f47010x = ((n9 >> 44) & 8) > 0;
        this.f47011y = ((n9 >> 44) & 4) > 0;
        this.f47012z = ((n9 >> 44) & 2) > 0;
        this.A = ((n9 >> 44) & 1) > 0;
        this.f46992f = n9 & 140737488355327L;
        this.f46993g = com.coremedia.iso.g.p(byteBuffer);
        int i4 = com.coremedia.iso.g.i(byteBuffer);
        this.f46994h = (61440 & i4) >> 12;
        this.f46995i = i4 & 4095;
        int p10 = com.coremedia.iso.g.p(byteBuffer);
        this.f46996j = (p10 & 252) >> 2;
        this.f46997k = p10 & 3;
        int p11 = com.coremedia.iso.g.p(byteBuffer);
        this.f46998l = (p11 & 252) >> 2;
        this.f46999m = p11 & 3;
        int p12 = com.coremedia.iso.g.p(byteBuffer);
        this.f47000n = (p12 & 248) >> 3;
        this.f47001o = p12 & 7;
        int p13 = com.coremedia.iso.g.p(byteBuffer);
        this.f47002p = (p13 & 248) >> 3;
        this.f47003q = p13 & 7;
        this.f47004r = com.coremedia.iso.g.i(byteBuffer);
        int p14 = com.coremedia.iso.g.p(byteBuffer);
        this.f47005s = (p14 & 192) >> 6;
        this.f47006t = (p14 & 56) >> 3;
        this.f47007u = (p14 & 4) > 0;
        this.f47008v = p14 & 3;
        int p15 = com.coremedia.iso.g.p(byteBuffer);
        this.f47009w = new ArrayList();
        for (int i10 = 0; i10 < p15; i10++) {
            a aVar = new a();
            int p16 = com.coremedia.iso.g.p(byteBuffer);
            aVar.f47013a = (p16 & 128) > 0;
            aVar.f47014b = (p16 & 64) > 0;
            aVar.f47015c = p16 & 63;
            int i11 = com.coremedia.iso.g.i(byteBuffer);
            aVar.f47016d = new ArrayList();
            for (int i12 = 0; i12 < i11; i12++) {
                byte[] bArr = new byte[com.coremedia.iso.g.i(byteBuffer)];
                byteBuffer.get(bArr);
                aVar.f47016d.add(bArr);
            }
            this.f47009w.add(aVar);
        }
    }

    public void y(List<a> list) {
        this.f47009w = list;
    }

    public void z(int i4) {
        this.f47004r = i4;
    }
}

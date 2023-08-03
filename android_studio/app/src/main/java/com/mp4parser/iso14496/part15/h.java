package com.mp4parser.iso14496.part15;

import java.nio.ByteBuffer;

/* compiled from: TemporalLayerSampleGroup.java */
/* loaded from: classes3.dex */
public class h extends com.googlecode.mp4parser.boxes.mp4.samplegrouping.b {

    /* renamed from: l  reason: collision with root package name */
    public static final String f47034l = "tscl";

    /* renamed from: a  reason: collision with root package name */
    int f47035a;

    /* renamed from: b  reason: collision with root package name */
    int f47036b;

    /* renamed from: c  reason: collision with root package name */
    boolean f47037c;

    /* renamed from: d  reason: collision with root package name */
    int f47038d;

    /* renamed from: e  reason: collision with root package name */
    long f47039e;

    /* renamed from: f  reason: collision with root package name */
    long f47040f;

    /* renamed from: g  reason: collision with root package name */
    int f47041g;

    /* renamed from: h  reason: collision with root package name */
    int f47042h;

    /* renamed from: i  reason: collision with root package name */
    int f47043i;

    /* renamed from: j  reason: collision with root package name */
    int f47044j;

    /* renamed from: k  reason: collision with root package name */
    int f47045k;

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public ByteBuffer a() {
        ByteBuffer allocate = ByteBuffer.allocate(20);
        com.coremedia.iso.i.m(allocate, this.f47035a);
        com.coremedia.iso.i.m(allocate, (this.f47036b << 6) + (this.f47037c ? 32 : 0) + this.f47038d);
        com.coremedia.iso.i.i(allocate, this.f47039e);
        com.coremedia.iso.i.k(allocate, this.f47040f);
        com.coremedia.iso.i.m(allocate, this.f47041g);
        com.coremedia.iso.i.f(allocate, this.f47042h);
        com.coremedia.iso.i.f(allocate, this.f47043i);
        com.coremedia.iso.i.m(allocate, this.f47044j);
        com.coremedia.iso.i.f(allocate, this.f47045k);
        return (ByteBuffer) allocate.rewind();
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public String b() {
        return f47034l;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public void c(ByteBuffer byteBuffer) {
        this.f47035a = com.coremedia.iso.g.p(byteBuffer);
        int p9 = com.coremedia.iso.g.p(byteBuffer);
        this.f47036b = (p9 & 192) >> 6;
        this.f47037c = (p9 & 32) > 0;
        this.f47038d = p9 & 31;
        this.f47039e = com.coremedia.iso.g.l(byteBuffer);
        this.f47040f = com.coremedia.iso.g.n(byteBuffer);
        this.f47041g = com.coremedia.iso.g.p(byteBuffer);
        this.f47042h = com.coremedia.iso.g.i(byteBuffer);
        this.f47043i = com.coremedia.iso.g.i(byteBuffer);
        this.f47044j = com.coremedia.iso.g.p(byteBuffer);
        this.f47045k = com.coremedia.iso.g.i(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public int d() {
        return 20;
    }

    public int e() {
        return this.f47035a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        h hVar = (h) obj;
        return this.f47035a == hVar.f47035a && this.f47043i == hVar.f47043i && this.f47045k == hVar.f47045k && this.f47044j == hVar.f47044j && this.f47042h == hVar.f47042h && this.f47040f == hVar.f47040f && this.f47041g == hVar.f47041g && this.f47039e == hVar.f47039e && this.f47038d == hVar.f47038d && this.f47036b == hVar.f47036b && this.f47037c == hVar.f47037c;
    }

    public int f() {
        return this.f47043i;
    }

    public int g() {
        return this.f47045k;
    }

    public int h() {
        return this.f47044j;
    }

    public int hashCode() {
        long j4 = this.f47039e;
        long j10 = this.f47040f;
        return (((((((((((((((((((this.f47035a * 31) + this.f47036b) * 31) + (this.f47037c ? 1 : 0)) * 31) + this.f47038d) * 31) + ((int) (j4 ^ (j4 >>> 32)))) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + this.f47041g) * 31) + this.f47042h) * 31) + this.f47043i) * 31) + this.f47044j) * 31) + this.f47045k;
    }

    public int i() {
        return this.f47042h;
    }

    public long j() {
        return this.f47040f;
    }

    public int k() {
        return this.f47041g;
    }

    public long l() {
        return this.f47039e;
    }

    public int m() {
        return this.f47038d;
    }

    public int n() {
        return this.f47036b;
    }

    public boolean o() {
        return this.f47037c;
    }

    public void p(int i4) {
        this.f47035a = i4;
    }

    public void q(int i4) {
        this.f47043i = i4;
    }

    public void r(int i4) {
        this.f47045k = i4;
    }

    public void s(int i4) {
        this.f47044j = i4;
    }

    public void t(int i4) {
        this.f47042h = i4;
    }

    public String toString() {
        return "TemporalLayerSampleGroup{temporalLayerId=" + this.f47035a + ", tlprofile_space=" + this.f47036b + ", tltier_flag=" + this.f47037c + ", tlprofile_idc=" + this.f47038d + ", tlprofile_compatibility_flags=" + this.f47039e + ", tlconstraint_indicator_flags=" + this.f47040f + ", tllevel_idc=" + this.f47041g + ", tlMaxBitRate=" + this.f47042h + ", tlAvgBitRate=" + this.f47043i + ", tlConstantFrameRate=" + this.f47044j + ", tlAvgFrameRate=" + this.f47045k + '}';
    }

    public void u(long j4) {
        this.f47040f = j4;
    }

    public void v(int i4) {
        this.f47041g = i4;
    }

    public void w(long j4) {
        this.f47039e = j4;
    }

    public void x(int i4) {
        this.f47038d = i4;
    }

    public void y(int i4) {
        this.f47036b = i4;
    }

    public void z(boolean z9) {
        this.f47037c = z9;
    }
}

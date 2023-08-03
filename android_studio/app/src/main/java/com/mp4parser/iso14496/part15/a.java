package com.mp4parser.iso14496.part15;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.exoplayer2.extractor.ts.h0;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
import org.aspectj.lang.c;

/* compiled from: AvcConfigurationBox.java */
/* loaded from: classes3.dex */
public final class a extends com.googlecode.mp4parser.a {
    private static final /* synthetic */ c.b A = null;
    private static final /* synthetic */ c.b B = null;
    private static final /* synthetic */ c.b C = null;
    private static final /* synthetic */ c.b D = null;
    private static final /* synthetic */ c.b E = null;
    private static final /* synthetic */ c.b F = null;
    private static final /* synthetic */ c.b G = null;
    private static final /* synthetic */ c.b H = null;
    private static final /* synthetic */ c.b I = null;
    private static final /* synthetic */ c.b J = null;
    private static final /* synthetic */ c.b K = null;
    private static final /* synthetic */ c.b L = null;
    private static final /* synthetic */ c.b M = null;
    private static final /* synthetic */ c.b N = null;
    private static final /* synthetic */ c.b O = null;
    private static final /* synthetic */ c.b P = null;
    private static final /* synthetic */ c.b Q = null;
    private static final /* synthetic */ c.b R = null;
    private static final /* synthetic */ c.b S = null;

    /* renamed from: o  reason: collision with root package name */
    public static final String f46944o = "avcC";

    /* renamed from: p  reason: collision with root package name */
    private static final /* synthetic */ c.b f46945p = null;

    /* renamed from: q  reason: collision with root package name */
    private static final /* synthetic */ c.b f46946q = null;

    /* renamed from: r  reason: collision with root package name */
    private static final /* synthetic */ c.b f46947r = null;

    /* renamed from: s  reason: collision with root package name */
    private static final /* synthetic */ c.b f46948s = null;

    /* renamed from: t  reason: collision with root package name */
    private static final /* synthetic */ c.b f46949t = null;

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f46950u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f46951v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f46952w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f46953x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f46954y = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f46955z = null;

    /* renamed from: n  reason: collision with root package name */
    public b f46956n;

    static {
        s();
    }

    public a() {
        super(f46944o);
        this.f46956n = new b();
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("AvcConfigurationBox.java", a.class);
        f46945p = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getConfigurationVersion", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "int"), 44);
        f46946q = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getAvcProfileIndication", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "int"), 48);
        f46955z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setAvcLevelIndication", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "int", "avcLevelIndication", "", "void"), 84);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setLengthSizeMinusOne", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "int", "lengthSizeMinusOne", "", "void"), 88);
        B = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setSequenceParameterSets", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "java.util.List", "sequenceParameterSets", "", "void"), 92);
        C = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setPictureParameterSets", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "java.util.List", "pictureParameterSets", "", "void"), 96);
        D = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getChromaFormat", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "int"), 100);
        E = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setChromaFormat", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "int", "chromaFormat", "", "void"), 104);
        F = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getBitDepthLumaMinus8", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "int"), 108);
        G = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setBitDepthLumaMinus8", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "int", "bitDepthLumaMinus8", "", "void"), 112);
        H = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getBitDepthChromaMinus8", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "int"), 116);
        I = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setBitDepthChromaMinus8", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "int", "bitDepthChromaMinus8", "", "void"), 120);
        f46947r = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getProfileCompatibility", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "int"), 52);
        J = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getSequenceParameterSetExts", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "java.util.List"), 124);
        K = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setSequenceParameterSetExts", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "java.util.List", "sequenceParameterSetExts", "", "void"), 128);
        L = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "hasExts", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", TypedValues.Custom.S_BOOLEAN), 132);
        M = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setHasExts", "com.mp4parser.iso14496.part15.AvcConfigurationBox", TypedValues.Custom.S_BOOLEAN, "hasExts", "", "void"), 136);
        N = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getContentSize", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "long"), 147);
        O = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getContent", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "java.nio.ByteBuffer", "byteBuffer", "", "void"), 153);
        P = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getSPS", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "[Ljava.lang.String;"), 158);
        Q = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getPPS", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "[Ljava.lang.String;"), 162);
        R = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getavcDecoderConfigurationRecord", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "com.mp4parser.iso14496.part15.AvcDecoderConfigurationRecord"), 167);
        S = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "java.lang.String"), h0.K);
        f46948s = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getAvcLevelIndication", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "int"), 56);
        f46949t = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getLengthSizeMinusOne", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "int"), 60);
        f46950u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getSequenceParameterSets", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "java.util.List"), 64);
        f46951v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getPictureParameterSets", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "java.util.List"), 68);
        f46952w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setConfigurationVersion", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "int", "configurationVersion", "", "void"), 72);
        f46953x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setAvcProfileIndication", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "int", "avcProfileIndication", "", "void"), 76);
        f46954y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setProfileCompatibility", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "int", "profileCompatibility", "", "void"), 80);
    }

    public String[] A() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(Q, this, this));
        return this.f46956n.c();
    }

    public List<byte[]> B() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f46951v, this, this));
        return Collections.unmodifiableList(this.f46956n.f46963g);
    }

    public int C() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f46947r, this, this));
        return this.f46956n.f46959c;
    }

    public String[] D() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(P, this, this));
        return this.f46956n.e();
    }

    public List<byte[]> E() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(J, this, this));
        return this.f46956n.f46968l;
    }

    public List<byte[]> F() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f46950u, this, this));
        return Collections.unmodifiableList(this.f46956n.f46962f);
    }

    public b G() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(R, this, this));
        return this.f46956n;
    }

    public boolean H() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(L, this, this));
        return this.f46956n.f46964h;
    }

    public void I(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f46955z, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f46956n.f46960d = i4;
    }

    public void J(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f46953x, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f46956n.f46958b = i4;
    }

    public void K(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(I, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f46956n.f46967k = i4;
    }

    public void L(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(G, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f46956n.f46966j = i4;
    }

    public void M(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(E, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f46956n.f46965i = i4;
    }

    public void N(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f46952w, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f46956n.f46957a = i4;
    }

    public void O(boolean z9) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(M, this, this, org.aspectj.runtime.internal.e.a(z9)));
        this.f46956n.f46964h = z9;
    }

    public void P(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(A, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f46956n.f46961e = i4;
    }

    public void Q(List<byte[]> list) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(C, this, this, list));
        this.f46956n.f46963g = list;
    }

    public void R(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f46954y, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f46956n.f46959c = i4;
    }

    public void S(List<byte[]> list) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(K, this, this, list));
        this.f46956n.f46968l = list;
    }

    public void T(List<byte[]> list) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(B, this, this, list));
        this.f46956n.f46962f = list;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        this.f46956n = new b(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    public void c(ByteBuffer byteBuffer) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(O, this, this, byteBuffer));
        this.f46956n.a(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    public long e() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(N, this, this));
        return this.f46956n.b();
    }

    public int t() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f46948s, this, this));
        return this.f46956n.f46960d;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(S, this, this));
        return "AvcConfigurationBox{avcDecoderConfigurationRecord=" + this.f46956n + '}';
    }

    public int u() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f46946q, this, this));
        return this.f46956n.f46958b;
    }

    public int v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(H, this, this));
        return this.f46956n.f46967k;
    }

    public int w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(F, this, this));
        return this.f46956n.f46966j;
    }

    public int x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(D, this, this));
        return this.f46956n.f46965i;
    }

    public int y() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f46945p, this, this));
        return this.f46956n.f46957a;
    }

    public int z() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f46949t, this, this));
        return this.f46956n.f46961e;
    }
}

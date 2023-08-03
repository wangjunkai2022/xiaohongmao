package com.mp4parser.iso14496.part12;

import com.coremedia.iso.f;
import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import java.util.Arrays;
import org.aspectj.lang.c;
import org.aspectj.runtime.reflect.e;

/* compiled from: SampleAuxiliaryInformationSizesBox.java */
/* loaded from: classes3.dex */
public class c extends com.googlecode.mp4parser.c {
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

    /* renamed from: w  reason: collision with root package name */
    public static final String f46935w = "saiz";

    /* renamed from: x  reason: collision with root package name */
    static final /* synthetic */ boolean f46936x = false;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f46937y = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f46938z = null;

    /* renamed from: r  reason: collision with root package name */
    private short f46939r;

    /* renamed from: s  reason: collision with root package name */
    private short[] f46940s;

    /* renamed from: t  reason: collision with root package name */
    private int f46941t;

    /* renamed from: u  reason: collision with root package name */
    private String f46942u;

    /* renamed from: v  reason: collision with root package name */
    private String f46943v;

    static {
        s();
    }

    public c() {
        super(f46935w);
        this.f46940s = new short[0];
    }

    private static /* synthetic */ void s() {
        e eVar = new e("SampleAuxiliaryInformationSizesBox.java", c.class);
        f46937y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getSize", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "int", "index", "", "short"), 57);
        f46938z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getAuxInfoType", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "", "", "", "java.lang.String"), 107);
        I = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setSampleCount", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "int", "sampleCount", "", "void"), 144);
        J = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "", "", "", "java.lang.String"), 149);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setAuxInfoType", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "java.lang.String", "auxInfoType", "", "void"), 111);
        B = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getAuxInfoTypeParameter", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "", "", "", "java.lang.String"), 115);
        C = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setAuxInfoTypeParameter", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "java.lang.String", "auxInfoTypeParameter", "", "void"), 119);
        D = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getDefaultSampleInfoSize", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "", "", "", "int"), 123);
        E = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setDefaultSampleInfoSize", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "int", "defaultSampleInfoSize", "", "void"), 127);
        F = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getSampleInfoSizes", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "", "", "", "[S"), 132);
        G = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setSampleInfoSizes", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "[S", "sampleInfoSizes", "", "void"), 136);
        H = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getSampleCount", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "", "", "", "int"), 140);
    }

    public short A(int i4) {
        j.b().c(e.w(f46937y, this, this, org.aspectj.runtime.internal.e.k(i4)));
        if (x() == 0) {
            return this.f46940s[i4];
        }
        return this.f46939r;
    }

    public void B(String str) {
        j.b().c(e.w(A, this, this, str));
        this.f46942u = str;
    }

    public void C(String str) {
        j.b().c(e.w(C, this, this, str));
        this.f46943v = str;
    }

    public void D(int i4) {
        j.b().c(e.w(E, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f46939r = (short) i4;
    }

    public void E(int i4) {
        j.b().c(e.w(I, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f46941t = i4;
    }

    public void F(short[] sArr) {
        j.b().c(e.w(G, this, this, sArr));
        this.f46940s = Arrays.copyOf(sArr, sArr.length);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        if ((getFlags() & 1) == 1) {
            this.f46942u = g.b(byteBuffer);
            this.f46943v = g.b(byteBuffer);
        }
        this.f46939r = (short) g.p(byteBuffer);
        int a10 = com.googlecode.mp4parser.util.c.a(g.l(byteBuffer));
        this.f46941t = a10;
        if (this.f46939r == 0) {
            this.f46940s = new short[a10];
            for (int i4 = 0; i4 < this.f46941t; i4++) {
                this.f46940s[i4] = (short) g.p(byteBuffer);
            }
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        if ((getFlags() & 1) == 1) {
            byteBuffer.put(f.J(this.f46942u));
            byteBuffer.put(f.J(this.f46943v));
        }
        i.m(byteBuffer, this.f46939r);
        if (this.f46939r == 0) {
            i.i(byteBuffer, this.f46940s.length);
            for (short s9 : this.f46940s) {
                i.m(byteBuffer, s9);
            }
            return;
        }
        i.i(byteBuffer, this.f46941t);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return ((getFlags() & 1) == 1 ? 12 : 4) + 5 + (this.f46939r == 0 ? this.f46940s.length : 0);
    }

    public String toString() {
        j.b().c(e.v(J, this, this));
        return "SampleAuxiliaryInformationSizesBox{defaultSampleInfoSize=" + ((int) this.f46939r) + ", sampleCount=" + this.f46941t + ", auxInfoType='" + this.f46942u + "', auxInfoTypeParameter='" + this.f46943v + "'}";
    }

    public String v() {
        j.b().c(e.v(f46938z, this, this));
        return this.f46942u;
    }

    public String w() {
        j.b().c(e.v(B, this, this));
        return this.f46943v;
    }

    public int x() {
        j.b().c(e.v(D, this, this));
        return this.f46939r;
    }

    public int y() {
        j.b().c(e.v(H, this, this));
        return this.f46941t;
    }

    public short[] z() {
        j.b().c(e.v(F, this, this));
        short[] sArr = this.f46940s;
        return Arrays.copyOf(sArr, sArr.length);
    }
}

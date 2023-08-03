package com.mp4parser.iso14496.part15;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.mp4parser.iso14496.part15.d;
import java.nio.ByteBuffer;
import java.util.List;
import org.aspectj.lang.c;

/* compiled from: HevcConfigurationBox.java */
/* loaded from: classes3.dex */
public class c extends com.googlecode.mp4parser.a {
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

    /* renamed from: o  reason: collision with root package name */
    public static final String f46974o = "hvcC";

    /* renamed from: p  reason: collision with root package name */
    private static final /* synthetic */ c.b f46975p = null;

    /* renamed from: q  reason: collision with root package name */
    private static final /* synthetic */ c.b f46976q = null;

    /* renamed from: r  reason: collision with root package name */
    private static final /* synthetic */ c.b f46977r = null;

    /* renamed from: s  reason: collision with root package name */
    private static final /* synthetic */ c.b f46978s = null;

    /* renamed from: t  reason: collision with root package name */
    private static final /* synthetic */ c.b f46979t = null;

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f46980u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f46981v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f46982w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f46983x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f46984y = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f46985z = null;

    /* renamed from: n  reason: collision with root package name */
    private d f46986n;

    static {
        s();
    }

    public c() {
        super(f46974o);
        this.f46986n = new d();
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("HevcConfigurationBox.java", c.class);
        f46975p = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getHevcDecoderConfigurationRecord", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "com.mp4parser.iso14496.part15.HevcDecoderConfigurationRecord"), 36);
        f46976q = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setHevcDecoderConfigurationRecord", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "com.mp4parser.iso14496.part15.HevcDecoderConfigurationRecord", "hevcDecoderConfigurationRecord", "", "void"), 40);
        f46985z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getGeneral_level_idc", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 88);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getMin_spatial_segmentation_idc", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 92);
        B = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getParallelismType", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 96);
        C = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getChromaFormat", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 100);
        D = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getBitDepthLumaMinus8", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 104);
        E = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getBitDepthChromaMinus8", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 108);
        F = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getAvgFrameRate", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 112);
        G = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getNumTemporalLayers", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 116);
        H = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getLengthSizeMinusOne", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 120);
        I = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "isTemporalIdNested", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", TypedValues.Custom.S_BOOLEAN), 124);
        f46977r = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "equals", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "java.lang.Object", "o", "", TypedValues.Custom.S_BOOLEAN), 45);
        J = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getConstantFrameRate", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 128);
        K = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getArrays", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "java.util.List"), 132);
        f46978s = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "hashCode", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 58);
        f46979t = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getConfigurationVersion", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 63);
        f46980u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getGeneral_profile_space", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 67);
        f46981v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "isGeneral_tier_flag", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", TypedValues.Custom.S_BOOLEAN), 71);
        f46982w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getGeneral_profile_idc", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 76);
        f46983x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getGeneral_profile_compatibility_flags", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "long"), 80);
        f46984y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getGeneral_constraint_indicator_flags", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "long"), 84);
    }

    public long A() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f46984y, this, this));
        return this.f46986n.f46992f;
    }

    public int B() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f46985z, this, this));
        return this.f46986n.f46993g;
    }

    public long C() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f46983x, this, this));
        return this.f46986n.f46991e;
    }

    public int D() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f46982w, this, this));
        return this.f46986n.f46990d;
    }

    public int E() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f46980u, this, this));
        return this.f46986n.f46988b;
    }

    public d F() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f46975p, this, this));
        return this.f46986n;
    }

    public int G() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(H, this, this));
        return this.f46986n.f47008v;
    }

    public int H() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(A, this, this));
        return this.f46986n.f46995i;
    }

    public int I() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(G, this, this));
        return this.f46986n.f47006t;
    }

    public int J() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(B, this, this));
        return this.f46986n.f46997k;
    }

    public boolean K() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f46981v, this, this));
        return this.f46986n.f46989c;
    }

    public boolean L() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(I, this, this));
        return this.f46986n.f47007u;
    }

    public void M(d dVar) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f46976q, this, this, dVar));
        this.f46986n = dVar;
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        this.f46986n.x(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        this.f46986n.U(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return this.f46986n.q();
    }

    public boolean equals(Object obj) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f46977r, this, this, obj));
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        d dVar = this.f46986n;
        d dVar2 = ((c) obj).f46986n;
        return dVar == null ? dVar2 == null : dVar.equals(dVar2);
    }

    public int hashCode() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f46978s, this, this));
        d dVar = this.f46986n;
        if (dVar != null) {
            return dVar.hashCode();
        }
        return 0;
    }

    public List<d.a> t() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(K, this, this));
        return this.f46986n.f47009w;
    }

    public int u() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(F, this, this));
        return this.f46986n.f47004r;
    }

    public int v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(E, this, this));
        return this.f46986n.f47003q;
    }

    public int w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(D, this, this));
        return this.f46986n.f47001o;
    }

    public int x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(C, this, this));
        return this.f46986n.f46999m;
    }

    public int y() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f46979t, this, this));
        return this.f46986n.f46987a;
    }

    public int z() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(J, this, this));
        return this.f46986n.f47005s;
    }
}

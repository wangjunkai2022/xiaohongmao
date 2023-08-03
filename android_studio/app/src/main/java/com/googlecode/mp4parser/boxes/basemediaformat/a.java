package com.googlecode.mp4parser.boxes.basemediaformat;

import com.googlecode.mp4parser.j;
import com.mp4parser.iso14496.part15.b;
import java.nio.ByteBuffer;
import java.util.List;
import org.aspectj.lang.c;
import org.aspectj.runtime.reflect.e;

/* compiled from: AvcNalUnitStorageBox.java */
/* loaded from: classes2.dex */
public class a extends com.googlecode.mp4parser.a {

    /* renamed from: o  reason: collision with root package name */
    public static final String f36585o = "avcn";

    /* renamed from: p  reason: collision with root package name */
    private static final /* synthetic */ c.b f36586p = null;

    /* renamed from: q  reason: collision with root package name */
    private static final /* synthetic */ c.b f36587q = null;

    /* renamed from: r  reason: collision with root package name */
    private static final /* synthetic */ c.b f36588r = null;

    /* renamed from: s  reason: collision with root package name */
    private static final /* synthetic */ c.b f36589s = null;

    /* renamed from: t  reason: collision with root package name */
    private static final /* synthetic */ c.b f36590t = null;

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f36591u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f36592v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f36593w = null;

    /* renamed from: n  reason: collision with root package name */
    b f36594n;

    static {
        s();
    }

    public a() {
        super(f36585o);
    }

    private static /* synthetic */ void s() {
        e eVar = new e("AvcNalUnitStorageBox.java", a.class);
        f36586p = eVar.H(c.f91018a, eVar.E("1", "getAvcDecoderConfigurationRecord", "com.googlecode.mp4parser.boxes.basemediaformat.AvcNalUnitStorageBox", "", "", "", "com.mp4parser.iso14496.part15.AvcDecoderConfigurationRecord"), 44);
        f36587q = eVar.H(c.f91018a, eVar.E("1", "getLengthSizeMinusOne", "com.googlecode.mp4parser.boxes.basemediaformat.AvcNalUnitStorageBox", "", "", "", "int"), 49);
        f36588r = eVar.H(c.f91018a, eVar.E("1", "getSPS", "com.googlecode.mp4parser.boxes.basemediaformat.AvcNalUnitStorageBox", "", "", "", "[Ljava.lang.String;"), 53);
        f36589s = eVar.H(c.f91018a, eVar.E("1", "getPPS", "com.googlecode.mp4parser.boxes.basemediaformat.AvcNalUnitStorageBox", "", "", "", "[Ljava.lang.String;"), 57);
        f36590t = eVar.H(c.f91018a, eVar.E("1", "getSequenceParameterSetsAsStrings", "com.googlecode.mp4parser.boxes.basemediaformat.AvcNalUnitStorageBox", "", "", "", "java.util.List"), 61);
        f36591u = eVar.H(c.f91018a, eVar.E("1", "getSequenceParameterSetExtsAsStrings", "com.googlecode.mp4parser.boxes.basemediaformat.AvcNalUnitStorageBox", "", "", "", "java.util.List"), 65);
        f36592v = eVar.H(c.f91018a, eVar.E("1", "getPictureParameterSetsAsStrings", "com.googlecode.mp4parser.boxes.basemediaformat.AvcNalUnitStorageBox", "", "", "", "java.util.List"), 69);
        f36593w = eVar.H(c.f91018a, eVar.E("1", "toString", "com.googlecode.mp4parser.boxes.basemediaformat.AvcNalUnitStorageBox", "", "", "", "java.lang.String"), 89);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        this.f36594n = new b(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        this.f36594n.a(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return this.f36594n.b();
    }

    public b t() {
        j.b().c(e.v(f36586p, this, this));
        return this.f36594n;
    }

    public String toString() {
        j.b().c(e.v(f36593w, this, this));
        return "AvcNalUnitStorageBox{SPS=" + this.f36594n.g() + ",PPS=" + this.f36594n.d() + ",lengthSize=" + (this.f36594n.f46961e + 1) + '}';
    }

    public int u() {
        j.b().c(e.v(f36587q, this, this));
        return this.f36594n.f46961e;
    }

    public String[] v() {
        j.b().c(e.v(f36589s, this, this));
        return this.f36594n.c();
    }

    public List<String> w() {
        j.b().c(e.v(f36592v, this, this));
        return this.f36594n.d();
    }

    public String[] x() {
        j.b().c(e.v(f36588r, this, this));
        return this.f36594n.e();
    }

    public List<String> y() {
        j.b().c(e.v(f36591u, this, this));
        return this.f36594n.f();
    }

    public List<String> z() {
        j.b().c(e.v(f36590t, this, this));
        return this.f36594n.g();
    }

    public a(com.mp4parser.iso14496.part15.a aVar) {
        super(f36585o);
        this.f36594n = aVar.G();
    }
}

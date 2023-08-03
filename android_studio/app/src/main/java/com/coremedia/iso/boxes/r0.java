package com.coremedia.iso.boxes;

import com.google.mlkit.common.MlKitException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import org.aspectj.lang.c;

/* compiled from: SampleDependencyTypeBox.java */
/* loaded from: classes.dex */
public class r0 extends com.googlecode.mp4parser.c {

    /* renamed from: s  reason: collision with root package name */
    public static final String f10299s = "sdtp";

    /* renamed from: t  reason: collision with root package name */
    private static final /* synthetic */ c.b f10300t = null;

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f10301u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f10302v = null;

    /* renamed from: r  reason: collision with root package name */
    private List<a> f10303r;

    /* compiled from: SampleDependencyTypeBox.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private int f10304a;

        public a(int i4) {
            this.f10304a = i4;
        }

        public int b() {
            return (this.f10304a >> 6) & 3;
        }

        public int c() {
            return (this.f10304a >> 4) & 3;
        }

        public int d() {
            return this.f10304a & 3;
        }

        public int e() {
            return (this.f10304a >> 2) & 3;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.f10304a == ((a) obj).f10304a;
        }

        public void f(int i4) {
            this.f10304a = ((i4 & 3) << 6) | (this.f10304a & 63);
        }

        public void g(int i4) {
            this.f10304a = ((i4 & 3) << 4) | (this.f10304a & MlKitException.CODE_SCANNER_GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD);
        }

        public void h(int i4) {
            this.f10304a = (i4 & 3) | (this.f10304a & 252);
        }

        public int hashCode() {
            return this.f10304a;
        }

        public void i(int i4) {
            this.f10304a = ((i4 & 3) << 2) | (this.f10304a & 243);
        }

        public String toString() {
            return "Entry{reserved=" + b() + ", sampleDependsOn=" + c() + ", sampleIsDependentOn=" + e() + ", sampleHasRedundancy=" + d() + '}';
        }
    }

    static {
        s();
    }

    public r0() {
        super(f10299s);
        this.f10303r = new ArrayList();
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("SampleDependencyTypeBox.java", r0.class);
        f10300t = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getEntries", "com.coremedia.iso.boxes.SampleDependencyTypeBox", "", "", "", "java.util.List"), 139);
        f10301u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setEntries", "com.coremedia.iso.boxes.SampleDependencyTypeBox", "java.util.List", "entries", "", "void"), 143);
        f10302v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.SampleDependencyTypeBox", "", "", "", "java.lang.String"), 148);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        while (byteBuffer.remaining() > 0) {
            this.f10303r.add(new a(com.coremedia.iso.g.p(byteBuffer)));
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        for (a aVar : this.f10303r) {
            com.coremedia.iso.i.m(byteBuffer, aVar.f10304a);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return this.f10303r.size() + 4;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10302v, this, this));
        return "SampleDependencyTypeBox{entries=" + this.f10303r + '}';
    }

    public List<a> v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10300t, this, this));
        return this.f10303r;
    }

    public void w(List<a> list) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10301u, this, this, list));
        this.f10303r = list;
    }
}

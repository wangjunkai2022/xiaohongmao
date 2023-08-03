package com.mp4parser.iso14496.part12;

import com.coremedia.iso.f;
import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import org.aspectj.lang.c;
import org.aspectj.runtime.reflect.e;

/* compiled from: SampleAuxiliaryInformationOffsetsBox.java */
/* loaded from: classes3.dex */
public class b extends com.googlecode.mp4parser.c {
    private static final /* synthetic */ c.b A = null;

    /* renamed from: u  reason: collision with root package name */
    public static final String f46926u = "saio";

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f46927v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f46928w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f46929x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f46930y = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f46931z = null;

    /* renamed from: r  reason: collision with root package name */
    private long[] f46932r;

    /* renamed from: s  reason: collision with root package name */
    private String f46933s;

    /* renamed from: t  reason: collision with root package name */
    private String f46934t;

    static {
        s();
    }

    public b() {
        super(f46926u);
        this.f46932r = new long[0];
    }

    private static /* synthetic */ void s() {
        e eVar = new e("SampleAuxiliaryInformationOffsetsBox.java", b.class);
        f46927v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getAuxInfoType", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationOffsetsBox", "", "", "", "java.lang.String"), 107);
        f46928w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setAuxInfoType", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationOffsetsBox", "java.lang.String", "auxInfoType", "", "void"), 111);
        f46929x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getAuxInfoTypeParameter", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationOffsetsBox", "", "", "", "java.lang.String"), 115);
        f46930y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setAuxInfoTypeParameter", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationOffsetsBox", "java.lang.String", "auxInfoTypeParameter", "", "void"), 119);
        f46931z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getOffsets", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationOffsetsBox", "", "", "", "[J"), 123);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setOffsets", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationOffsetsBox", "[J", "offsets", "", "void"), 127);
    }

    public void A(long[] jArr) {
        j.b().c(e.w(A, this, this, jArr));
        this.f46932r = jArr;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        if ((getFlags() & 1) == 1) {
            this.f46933s = g.b(byteBuffer);
            this.f46934t = g.b(byteBuffer);
        }
        int a10 = com.googlecode.mp4parser.util.c.a(g.l(byteBuffer));
        this.f46932r = new long[a10];
        for (int i4 = 0; i4 < a10; i4++) {
            if (getVersion() == 0) {
                this.f46932r[i4] = g.l(byteBuffer);
            } else {
                this.f46932r[i4] = g.o(byteBuffer);
            }
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        if ((getFlags() & 1) == 1) {
            byteBuffer.put(f.J(this.f46933s));
            byteBuffer.put(f.J(this.f46934t));
        }
        i.i(byteBuffer, this.f46932r.length);
        for (long j4 : this.f46932r) {
            Long valueOf = Long.valueOf(j4);
            if (getVersion() == 0) {
                i.i(byteBuffer, valueOf.longValue());
            } else {
                i.l(byteBuffer, valueOf.longValue());
            }
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return (getVersion() == 0 ? this.f46932r.length * 4 : this.f46932r.length * 8) + 8 + ((getFlags() & 1) != 1 ? 0 : 8);
    }

    public String v() {
        j.b().c(e.v(f46927v, this, this));
        return this.f46933s;
    }

    public String w() {
        j.b().c(e.v(f46929x, this, this));
        return this.f46934t;
    }

    public long[] x() {
        j.b().c(e.v(f46931z, this, this));
        return this.f46932r;
    }

    public void y(String str) {
        j.b().c(e.w(f46928w, this, this, str));
        this.f46933s = str;
    }

    public void z(String str) {
        j.b().c(e.w(f46930y, this, this, str));
        this.f46934t = str;
    }
}

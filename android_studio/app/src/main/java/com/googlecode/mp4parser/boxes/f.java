package com.googlecode.mp4parser.boxes;

import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: MLPSpecificBox.java */
/* loaded from: classes2.dex */
public class f extends com.googlecode.mp4parser.a {

    /* renamed from: r  reason: collision with root package name */
    public static final String f36695r = "dmlp";

    /* renamed from: s  reason: collision with root package name */
    private static final /* synthetic */ c.b f36696s = null;

    /* renamed from: t  reason: collision with root package name */
    private static final /* synthetic */ c.b f36697t = null;

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f36698u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f36699v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f36700w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f36701x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f36702y = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f36703z = null;

    /* renamed from: n  reason: collision with root package name */
    int f36704n;

    /* renamed from: o  reason: collision with root package name */
    int f36705o;

    /* renamed from: p  reason: collision with root package name */
    int f36706p;

    /* renamed from: q  reason: collision with root package name */
    int f36707q;

    static {
        s();
    }

    public f() {
        super(f36695r);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("MLPSpecificBox.java", f.class);
        f36696s = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getFormat_info", "com.googlecode.mp4parser.boxes.MLPSpecificBox", "", "", "", "int"), 49);
        f36697t = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setFormat_info", "com.googlecode.mp4parser.boxes.MLPSpecificBox", "int", "format_info", "", "void"), 53);
        f36698u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getPeak_data_rate", "com.googlecode.mp4parser.boxes.MLPSpecificBox", "", "", "", "int"), 57);
        f36699v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setPeak_data_rate", "com.googlecode.mp4parser.boxes.MLPSpecificBox", "int", "peak_data_rate", "", "void"), 61);
        f36700w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getReserved", "com.googlecode.mp4parser.boxes.MLPSpecificBox", "", "", "", "int"), 65);
        f36701x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setReserved", "com.googlecode.mp4parser.boxes.MLPSpecificBox", "int", "reserved", "", "void"), 69);
        f36702y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getReserved2", "com.googlecode.mp4parser.boxes.MLPSpecificBox", "", "", "", "int"), 73);
        f36703z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setReserved2", "com.googlecode.mp4parser.boxes.MLPSpecificBox", "int", "reserved2", "", "void"), 77);
    }

    public void A(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f36703z, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36707q = i4;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c cVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c(byteBuffer);
        this.f36704n = cVar.c(32);
        this.f36705o = cVar.c(15);
        this.f36706p = cVar.c(1);
        this.f36707q = cVar.c(32);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.d dVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.d(byteBuffer);
        dVar.a(this.f36704n, 32);
        dVar.a(this.f36705o, 15);
        dVar.a(this.f36706p, 1);
        dVar.a(this.f36707q, 32);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return 10L;
    }

    public int t() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f36696s, this, this));
        return this.f36704n;
    }

    public int u() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f36698u, this, this));
        return this.f36705o;
    }

    public int v() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f36700w, this, this));
        return this.f36706p;
    }

    public int w() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f36702y, this, this));
        return this.f36707q;
    }

    public void x(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f36697t, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36704n = i4;
    }

    public void y(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f36699v, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36705o = i4;
    }

    public void z(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f36701x, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36706p = i4;
    }
}

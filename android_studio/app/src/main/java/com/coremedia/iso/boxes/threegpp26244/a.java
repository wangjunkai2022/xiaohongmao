package com.coremedia.iso.boxes.threegpp26244;

import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.coremedia.iso.l;
import com.googlecode.mp4parser.c;
import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import org.aspectj.lang.c;
import org.aspectj.runtime.reflect.e;

/* compiled from: LocationInformationBox.java */
/* loaded from: classes.dex */
public class a extends c {
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

    /* renamed from: z  reason: collision with root package name */
    public static final String f10397z = "loci";

    /* renamed from: r  reason: collision with root package name */
    private String f10398r;

    /* renamed from: s  reason: collision with root package name */
    private String f10399s;

    /* renamed from: t  reason: collision with root package name */
    private int f10400t;

    /* renamed from: u  reason: collision with root package name */
    private double f10401u;

    /* renamed from: v  reason: collision with root package name */
    private double f10402v;

    /* renamed from: w  reason: collision with root package name */
    private double f10403w;

    /* renamed from: x  reason: collision with root package name */
    private String f10404x;

    /* renamed from: y  reason: collision with root package name */
    private String f10405y;

    static {
        s();
    }

    public a() {
        super(f10397z);
        this.f10399s = "";
        this.f10404x = "";
        this.f10405y = "";
    }

    private static /* synthetic */ void s() {
        e eVar = new e("LocationInformationBox.java", a.class);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getLanguage", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "", "", "", "java.lang.String"), 30);
        B = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setLanguage", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "java.lang.String", "language", "", "void"), 34);
        K = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getAltitude", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "", "", "", "double"), 70);
        L = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setAltitude", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "double", "altitude", "", "void"), 74);
        M = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getAstronomicalBody", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "", "", "", "java.lang.String"), 78);
        N = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setAstronomicalBody", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "java.lang.String", "astronomicalBody", "", "void"), 82);
        O = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getAdditionalNotes", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "", "", "", "java.lang.String"), 86);
        P = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setAdditionalNotes", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "java.lang.String", "additionalNotes", "", "void"), 90);
        C = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getName", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "", "", "", "java.lang.String"), 38);
        D = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setName", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "java.lang.String", "name", "", "void"), 42);
        E = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getRole", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "", "", "", "int"), 46);
        F = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setRole", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "int", "role", "", "void"), 50);
        G = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getLongitude", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "", "", "", "double"), 54);
        H = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setLongitude", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "double", "longitude", "", "void"), 58);
        I = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getLatitude", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "", "", "", "double"), 62);
        J = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setLatitude", "com.coremedia.iso.boxes.threegpp26244.LocationInformationBox", "double", "latitude", "", "void"), 66);
    }

    public double A() {
        j.b().c(e.v(G, this, this));
        return this.f10401u;
    }

    public String B() {
        j.b().c(e.v(C, this, this));
        return this.f10399s;
    }

    public int C() {
        j.b().c(e.v(E, this, this));
        return this.f10400t;
    }

    public void D(String str) {
        j.b().c(e.w(P, this, this, str));
        this.f10405y = str;
    }

    public void E(double d4) {
        j.b().c(e.w(L, this, this, org.aspectj.runtime.internal.e.g(d4)));
        this.f10403w = d4;
    }

    public void F(String str) {
        j.b().c(e.w(N, this, this, str));
        this.f10404x = str;
    }

    public void G(String str) {
        j.b().c(e.w(B, this, this, str));
        this.f10398r = str;
    }

    public void H(double d4) {
        j.b().c(e.w(J, this, this, org.aspectj.runtime.internal.e.g(d4)));
        this.f10402v = d4;
    }

    public void I(double d4) {
        j.b().c(e.w(H, this, this, org.aspectj.runtime.internal.e.g(d4)));
        this.f10401u = d4;
    }

    public void J(String str) {
        j.b().c(e.w(D, this, this, str));
        this.f10399s = str;
    }

    public void K(int i4) {
        j.b().c(e.w(F, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f10400t = i4;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f10398r = g.f(byteBuffer);
        this.f10399s = g.g(byteBuffer);
        this.f10400t = g.p(byteBuffer);
        this.f10401u = g.d(byteBuffer);
        this.f10402v = g.d(byteBuffer);
        this.f10403w = g.d(byteBuffer);
        this.f10404x = g.g(byteBuffer);
        this.f10405y = g.g(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        i.d(byteBuffer, this.f10398r);
        byteBuffer.put(l.b(this.f10399s));
        byteBuffer.put((byte) 0);
        i.m(byteBuffer, this.f10400t);
        i.b(byteBuffer, this.f10401u);
        i.b(byteBuffer, this.f10402v);
        i.b(byteBuffer, this.f10403w);
        byteBuffer.put(l.b(this.f10404x));
        byteBuffer.put((byte) 0);
        byteBuffer.put(l.b(this.f10405y));
        byteBuffer.put((byte) 0);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return l.b(this.f10399s).length + 22 + l.b(this.f10404x).length + l.b(this.f10405y).length;
    }

    public String v() {
        j.b().c(e.v(O, this, this));
        return this.f10405y;
    }

    public double w() {
        j.b().c(e.v(K, this, this));
        return this.f10403w;
    }

    public String x() {
        j.b().c(e.v(M, this, this));
        return this.f10404x;
    }

    public String y() {
        j.b().c(e.v(A, this, this));
        return this.f10398r;
    }

    public double z() {
        j.b().c(e.v(I, this, this));
        return this.f10402v;
    }
}

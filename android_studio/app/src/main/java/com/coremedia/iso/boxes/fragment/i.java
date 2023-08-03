package com.coremedia.iso.boxes.fragment;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: TrackExtendsBox.java */
/* loaded from: classes.dex */
public class i extends com.googlecode.mp4parser.c {
    private static final /* synthetic */ c.b A = null;
    private static final /* synthetic */ c.b B = null;
    private static final /* synthetic */ c.b C = null;
    private static final /* synthetic */ c.b D = null;
    private static final /* synthetic */ c.b E = null;
    private static final /* synthetic */ c.b F = null;
    private static final /* synthetic */ c.b G = null;
    private static final /* synthetic */ c.b H = null;

    /* renamed from: w  reason: collision with root package name */
    public static final String f10065w = "trex";

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f10066x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f10067y = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f10068z = null;

    /* renamed from: r  reason: collision with root package name */
    private long f10069r;

    /* renamed from: s  reason: collision with root package name */
    private long f10070s;

    /* renamed from: t  reason: collision with root package name */
    private long f10071t;

    /* renamed from: u  reason: collision with root package name */
    private long f10072u;

    /* renamed from: v  reason: collision with root package name */
    private g f10073v;

    static {
        s();
    }

    public i() {
        super(f10065w);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("TrackExtendsBox.java", i.class);
        f10066x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getTrackId", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "", "", "", "long"), 72);
        f10067y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getDefaultSampleDescriptionIndex", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "", "", "", "long"), 76);
        H = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setDefaultSampleFlags", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "com.coremedia.iso.boxes.fragment.SampleFlags", "defaultSampleFlags", "", "void"), 112);
        f10068z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getDefaultSampleDuration", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "", "", "", "long"), 80);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getDefaultSampleSize", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "", "", "", "long"), 84);
        B = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getDefaultSampleFlags", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "", "", "", "com.coremedia.iso.boxes.fragment.SampleFlags"), 88);
        C = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getDefaultSampleFlagsStr", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "", "", "", "java.lang.String"), 92);
        D = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setTrackId", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "long", "trackId", "", "void"), 96);
        E = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setDefaultSampleDescriptionIndex", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "long", "defaultSampleDescriptionIndex", "", "void"), 100);
        F = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setDefaultSampleDuration", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "long", "defaultSampleDuration", "", "void"), 104);
        G = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setDefaultSampleSize", "com.coremedia.iso.boxes.fragment.TrackExtendsBox", "long", "defaultSampleSize", "", "void"), 108);
    }

    public long A() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10066x, this, this));
        return this.f10069r;
    }

    public void B(long j4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(E, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f10070s = j4;
    }

    public void C(long j4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(F, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f10071t = j4;
    }

    public void D(g gVar) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(H, this, this, gVar));
        this.f10073v = gVar;
    }

    public void E(long j4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(G, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f10072u = j4;
    }

    public void F(long j4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(D, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f10069r = j4;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f10069r = com.coremedia.iso.g.l(byteBuffer);
        this.f10070s = com.coremedia.iso.g.l(byteBuffer);
        this.f10071t = com.coremedia.iso.g.l(byteBuffer);
        this.f10072u = com.coremedia.iso.g.l(byteBuffer);
        this.f10073v = new g(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.i(byteBuffer, this.f10069r);
        com.coremedia.iso.i.i(byteBuffer, this.f10070s);
        com.coremedia.iso.i.i(byteBuffer, this.f10071t);
        com.coremedia.iso.i.i(byteBuffer, this.f10072u);
        this.f10073v.a(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return 24L;
    }

    public long v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10067y, this, this));
        return this.f10070s;
    }

    public long w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10068z, this, this));
        return this.f10071t;
    }

    public g x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(B, this, this));
        return this.f10073v;
    }

    public String y() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(C, this, this));
        return this.f10073v.toString();
    }

    public long z() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(A, this, this));
        return this.f10072u;
    }
}

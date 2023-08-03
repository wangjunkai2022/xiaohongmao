package com.mp4parser.iso23009.part1;

import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.coremedia.iso.l;
import com.googlecode.mp4parser.c;
import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import org.aspectj.lang.c;
import org.aspectj.runtime.reflect.e;

/* compiled from: EventMessageBox.java */
/* loaded from: classes3.dex */
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

    /* renamed from: y  reason: collision with root package name */
    public static final String f47138y = "emsg";

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f47139z = null;

    /* renamed from: r  reason: collision with root package name */
    String f47140r;

    /* renamed from: s  reason: collision with root package name */
    String f47141s;

    /* renamed from: t  reason: collision with root package name */
    long f47142t;

    /* renamed from: u  reason: collision with root package name */
    long f47143u;

    /* renamed from: v  reason: collision with root package name */
    long f47144v;

    /* renamed from: w  reason: collision with root package name */
    long f47145w;

    /* renamed from: x  reason: collision with root package name */
    byte[] f47146x;

    static {
        s();
    }

    public a() {
        super(f47138y);
    }

    private static /* synthetic */ void s() {
        e eVar = new e("EventMessageBox.java", a.class);
        f47139z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getSchemeIdUri", "com.mp4parser.iso23009.part1.EventMessageBox", "", "", "", "java.lang.String"), 59);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setSchemeIdUri", "com.mp4parser.iso23009.part1.EventMessageBox", "java.lang.String", "schemeIdUri", "", "void"), 63);
        J = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getId", "com.mp4parser.iso23009.part1.EventMessageBox", "", "", "", "long"), 99);
        K = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setId", "com.mp4parser.iso23009.part1.EventMessageBox", "long", "id", "", "void"), 103);
        L = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getMessageData", "com.mp4parser.iso23009.part1.EventMessageBox", "", "", "", "[B"), 107);
        M = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setMessageData", "com.mp4parser.iso23009.part1.EventMessageBox", "[B", "messageData", "", "void"), 111);
        B = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getValue", "com.mp4parser.iso23009.part1.EventMessageBox", "", "", "", "java.lang.String"), 67);
        C = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setValue", "com.mp4parser.iso23009.part1.EventMessageBox", "java.lang.String", "value", "", "void"), 71);
        D = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getTimescale", "com.mp4parser.iso23009.part1.EventMessageBox", "", "", "", "long"), 75);
        E = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setTimescale", "com.mp4parser.iso23009.part1.EventMessageBox", "long", "timescale", "", "void"), 79);
        F = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getPresentationTimeDelta", "com.mp4parser.iso23009.part1.EventMessageBox", "", "", "", "long"), 83);
        G = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setPresentationTimeDelta", "com.mp4parser.iso23009.part1.EventMessageBox", "long", "presentationTimeDelta", "", "void"), 87);
        H = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getEventDuration", "com.mp4parser.iso23009.part1.EventMessageBox", "", "", "", "long"), 91);
        I = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setEventDuration", "com.mp4parser.iso23009.part1.EventMessageBox", "long", "eventDuration", "", "void"), 95);
    }

    public long A() {
        j.b().c(e.v(D, this, this));
        return this.f47142t;
    }

    public String B() {
        j.b().c(e.v(B, this, this));
        return this.f47141s;
    }

    public void C(long j4) {
        j.b().c(e.w(I, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f47144v = j4;
    }

    public void D(long j4) {
        j.b().c(e.w(K, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f47145w = j4;
    }

    public void E(byte[] bArr) {
        j.b().c(e.w(M, this, this, bArr));
        this.f47146x = bArr;
    }

    public void F(long j4) {
        j.b().c(e.w(G, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f47143u = j4;
    }

    public void G(String str) {
        j.b().c(e.w(A, this, this, str));
        this.f47140r = str;
    }

    public void H(long j4) {
        j.b().c(e.w(E, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f47142t = j4;
    }

    public void I(String str) {
        j.b().c(e.w(C, this, this, str));
        this.f47141s = str;
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f47140r = g.g(byteBuffer);
        this.f47141s = g.g(byteBuffer);
        this.f47142t = g.l(byteBuffer);
        this.f47143u = g.l(byteBuffer);
        this.f47144v = g.l(byteBuffer);
        this.f47145w = g.l(byteBuffer);
        byte[] bArr = new byte[byteBuffer.remaining()];
        this.f47146x = bArr;
        byteBuffer.get(bArr);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        i.n(byteBuffer, this.f47140r);
        i.n(byteBuffer, this.f47141s);
        i.i(byteBuffer, this.f47142t);
        i.i(byteBuffer, this.f47143u);
        i.i(byteBuffer, this.f47144v);
        i.i(byteBuffer, this.f47145w);
        byteBuffer.put(this.f47146x);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return l.c(this.f47140r) + 22 + l.c(this.f47141s) + this.f47146x.length;
    }

    public long v() {
        j.b().c(e.v(H, this, this));
        return this.f47144v;
    }

    public long w() {
        j.b().c(e.v(J, this, this));
        return this.f47145w;
    }

    public byte[] x() {
        j.b().c(e.v(L, this, this));
        return this.f47146x;
    }

    public long y() {
        j.b().c(e.v(F, this, this));
        return this.f47143u;
    }

    public String z() {
        j.b().c(e.v(f47139z, this, this));
        return this.f47140r;
    }
}

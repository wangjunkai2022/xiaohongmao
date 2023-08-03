package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

/* compiled from: ESDescriptor.java */
@g(tags = {3})
/* loaded from: classes2.dex */
public class h extends b {

    /* renamed from: r  reason: collision with root package name */
    private static Logger f36808r = Logger.getLogger(h.class.getName());

    /* renamed from: e  reason: collision with root package name */
    int f36809e;

    /* renamed from: f  reason: collision with root package name */
    int f36810f;

    /* renamed from: g  reason: collision with root package name */
    int f36811g;

    /* renamed from: h  reason: collision with root package name */
    int f36812h;

    /* renamed from: i  reason: collision with root package name */
    int f36813i;

    /* renamed from: k  reason: collision with root package name */
    String f36815k;

    /* renamed from: l  reason: collision with root package name */
    int f36816l;

    /* renamed from: m  reason: collision with root package name */
    int f36817m;

    /* renamed from: n  reason: collision with root package name */
    int f36818n;

    /* renamed from: o  reason: collision with root package name */
    e f36819o;

    /* renamed from: p  reason: collision with root package name */
    o f36820p;

    /* renamed from: j  reason: collision with root package name */
    int f36814j = 0;

    /* renamed from: q  reason: collision with root package name */
    List<b> f36821q = new ArrayList();

    public void A(int i4) {
        this.f36810f = i4;
    }

    public void B(int i4) {
        this.f36813i = i4;
    }

    public void C(int i4) {
        this.f36811g = i4;
    }

    public void D(int i4) {
        this.f36814j = i4;
    }

    public void E(String str) {
        this.f36815k = str;
    }

    public void F(int i4) {
        this.f36818n = i4;
    }

    public void G(int i4) {
        this.f36812h = i4;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        h hVar = (h) obj;
        if (this.f36811g == hVar.f36811g && this.f36814j == hVar.f36814j && this.f36817m == hVar.f36817m && this.f36809e == hVar.f36809e && this.f36818n == hVar.f36818n && this.f36812h == hVar.f36812h && this.f36816l == hVar.f36816l && this.f36810f == hVar.f36810f && this.f36813i == hVar.f36813i) {
            String str = this.f36815k;
            if (str == null ? hVar.f36815k == null : str.equals(hVar.f36815k)) {
                e eVar = this.f36819o;
                if (eVar == null ? hVar.f36819o == null : eVar.equals(hVar.f36819o)) {
                    List<b> list = this.f36821q;
                    if (list == null ? hVar.f36821q == null : list.equals(hVar.f36821q)) {
                        o oVar = this.f36820p;
                        o oVar2 = hVar.f36820p;
                        return oVar == null ? oVar2 == null : oVar.equals(oVar2);
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b
    public void f(ByteBuffer byteBuffer) throws IOException {
        this.f36809e = com.coremedia.iso.g.i(byteBuffer);
        int p9 = com.coremedia.iso.g.p(byteBuffer);
        int i4 = p9 >>> 7;
        this.f36810f = i4;
        this.f36811g = (p9 >>> 6) & 1;
        this.f36812h = (p9 >>> 5) & 1;
        this.f36813i = p9 & 31;
        if (i4 == 1) {
            this.f36817m = com.coremedia.iso.g.i(byteBuffer);
        }
        if (this.f36811g == 1) {
            int p10 = com.coremedia.iso.g.p(byteBuffer);
            this.f36814j = p10;
            this.f36815k = com.coremedia.iso.g.h(byteBuffer, p10);
        }
        if (this.f36812h == 1) {
            this.f36818n = com.coremedia.iso.g.i(byteBuffer);
        }
        int b10 = b() + 1 + 2 + 1 + (this.f36810f == 1 ? 2 : 0) + (this.f36811g == 1 ? this.f36814j + 1 : 0) + (this.f36812h == 1 ? 2 : 0);
        int position = byteBuffer.position();
        if (a() > b10 + 2) {
            b a10 = m.a(-1, byteBuffer);
            long position2 = byteBuffer.position() - position;
            Logger logger = f36808r;
            StringBuilder sb = new StringBuilder();
            sb.append(a10);
            sb.append(" - ESDescriptor1 read: ");
            sb.append(position2);
            sb.append(", size: ");
            sb.append(a10 != null ? Integer.valueOf(a10.a()) : null);
            logger.finer(sb.toString());
            if (a10 != null) {
                int a11 = a10.a();
                byteBuffer.position(position + a11);
                b10 += a11;
            } else {
                b10 = (int) (b10 + position2);
            }
            if (a10 instanceof e) {
                this.f36819o = (e) a10;
            }
        }
        int position3 = byteBuffer.position();
        if (a() > b10 + 2) {
            b a12 = m.a(-1, byteBuffer);
            long position4 = byteBuffer.position() - position3;
            Logger logger2 = f36808r;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(a12);
            sb2.append(" - ESDescriptor2 read: ");
            sb2.append(position4);
            sb2.append(", size: ");
            sb2.append(a12 != null ? Integer.valueOf(a12.a()) : null);
            logger2.finer(sb2.toString());
            if (a12 != null) {
                int a13 = a12.a();
                byteBuffer.position(position3 + a13);
                b10 += a13;
            } else {
                b10 = (int) (b10 + position4);
            }
            if (a12 instanceof o) {
                this.f36820p = (o) a12;
            }
        } else {
            f36808r.warning("SLConfigDescriptor is missing!");
        }
        while (a() - b10 > 2) {
            int position5 = byteBuffer.position();
            b a14 = m.a(-1, byteBuffer);
            long position6 = byteBuffer.position() - position5;
            Logger logger3 = f36808r;
            StringBuilder sb3 = new StringBuilder();
            sb3.append(a14);
            sb3.append(" - ESDescriptor3 read: ");
            sb3.append(position6);
            sb3.append(", size: ");
            sb3.append(a14 != null ? Integer.valueOf(a14.a()) : null);
            logger3.finer(sb3.toString());
            if (a14 != null) {
                int a15 = a14.a();
                byteBuffer.position(position5 + a15);
                b10 += a15;
            } else {
                b10 = (int) (b10 + position6);
            }
            this.f36821q.add(a14);
        }
    }

    public e g() {
        return this.f36819o;
    }

    public int h() {
        return this.f36817m;
    }

    public int hashCode() {
        int i4 = ((((((((((this.f36809e * 31) + this.f36810f) * 31) + this.f36811g) * 31) + this.f36812h) * 31) + this.f36813i) * 31) + this.f36814j) * 31;
        String str = this.f36815k;
        int hashCode = (((((((i4 + (str != null ? str.hashCode() : 0)) * 31) + this.f36816l) * 31) + this.f36817m) * 31) + this.f36818n) * 31;
        e eVar = this.f36819o;
        int hashCode2 = (hashCode + (eVar != null ? eVar.hashCode() : 0)) * 31;
        o oVar = this.f36820p;
        int hashCode3 = (hashCode2 + (oVar != null ? oVar.hashCode() : 0)) * 31;
        List<b> list = this.f36821q;
        return hashCode3 + (list != null ? list.hashCode() : 0);
    }

    public int i() {
        return this.f36809e;
    }

    public List<b> j() {
        return this.f36821q;
    }

    public int k() {
        return this.f36816l;
    }

    public o l() {
        return this.f36820p;
    }

    public int m() {
        return this.f36810f;
    }

    public int n() {
        return this.f36813i;
    }

    public int o() {
        return this.f36811g;
    }

    public int p() {
        return this.f36814j;
    }

    public String q() {
        return this.f36815k;
    }

    public int r() {
        return this.f36818n;
    }

    public int s() {
        return this.f36812h;
    }

    public ByteBuffer t() {
        ByteBuffer allocate = ByteBuffer.allocate(u());
        com.coremedia.iso.i.m(allocate, 3);
        com.coremedia.iso.i.m(allocate, u() - 2);
        com.coremedia.iso.i.f(allocate, this.f36809e);
        com.coremedia.iso.i.m(allocate, (this.f36810f << 7) | (this.f36811g << 6) | (this.f36812h << 5) | (this.f36813i & 31));
        if (this.f36810f > 0) {
            com.coremedia.iso.i.f(allocate, this.f36817m);
        }
        if (this.f36811g > 0) {
            com.coremedia.iso.i.m(allocate, this.f36814j);
            com.coremedia.iso.i.n(allocate, this.f36815k);
        }
        if (this.f36812h > 0) {
            com.coremedia.iso.i.f(allocate, this.f36818n);
        }
        ByteBuffer p9 = this.f36819o.p();
        ByteBuffer h4 = this.f36820p.h();
        allocate.put(p9.array());
        allocate.put(h4.array());
        return allocate;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b
    public String toString() {
        return "ESDescriptor{esId=" + this.f36809e + ", streamDependenceFlag=" + this.f36810f + ", URLFlag=" + this.f36811g + ", oCRstreamFlag=" + this.f36812h + ", streamPriority=" + this.f36813i + ", URLLength=" + this.f36814j + ", URLString='" + this.f36815k + "', remoteODFlag=" + this.f36816l + ", dependsOnEsId=" + this.f36817m + ", oCREsId=" + this.f36818n + ", decoderConfigDescriptor=" + this.f36819o + ", slConfigDescriptor=" + this.f36820p + '}';
    }

    public int u() {
        int i4 = this.f36810f > 0 ? 7 : 5;
        if (this.f36811g > 0) {
            i4 += this.f36814j + 1;
        }
        if (this.f36812h > 0) {
            i4 += 2;
        }
        return i4 + this.f36819o.q() + this.f36820p.i();
    }

    public void v(e eVar) {
        this.f36819o = eVar;
    }

    public void w(int i4) {
        this.f36817m = i4;
    }

    public void x(int i4) {
        this.f36809e = i4;
    }

    public void y(int i4) {
        this.f36816l = i4;
    }

    public void z(o oVar) {
        this.f36820p = oVar;
    }
}

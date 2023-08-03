package com.googlecode.mp4parser.boxes.piff;

import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import org.aspectj.lang.c;

/* compiled from: TfrfBox.java */
/* loaded from: classes2.dex */
public class d extends com.googlecode.mp4parser.c {

    /* renamed from: s  reason: collision with root package name */
    private static final /* synthetic */ c.b f36888s = null;

    /* renamed from: t  reason: collision with root package name */
    private static final /* synthetic */ c.b f36889t = null;

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f36890u = null;

    /* renamed from: r  reason: collision with root package name */
    public List<a> f36891r;

    /* compiled from: TfrfBox.java */
    /* loaded from: classes2.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        long f36892a;

        /* renamed from: b  reason: collision with root package name */
        long f36893b;

        public a() {
        }

        public long a() {
            return this.f36893b;
        }

        public long b() {
            return this.f36892a;
        }

        public String toString() {
            return "Entry{fragmentAbsoluteTime=" + this.f36892a + ", fragmentAbsoluteDuration=" + this.f36893b + '}';
        }
    }

    static {
        s();
    }

    public d() {
        super("uuid");
        this.f36891r = new ArrayList();
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("TfrfBox.java", d.class);
        f36888s = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getFragmentCount", "com.googlecode.mp4parser.boxes.piff.TfrfBox", "", "", "", "long"), 91);
        f36889t = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getEntries", "com.googlecode.mp4parser.boxes.piff.TfrfBox", "", "", "", "java.util.List"), 95);
        f36890u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.googlecode.mp4parser.boxes.piff.TfrfBox", "", "", "", "java.lang.String"), 100);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        int p9 = g.p(byteBuffer);
        for (int i4 = 0; i4 < p9; i4++) {
            a aVar = new a();
            if (getVersion() == 1) {
                aVar.f36892a = g.o(byteBuffer);
                aVar.f36893b = g.o(byteBuffer);
            } else {
                aVar.f36892a = g.l(byteBuffer);
                aVar.f36893b = g.l(byteBuffer);
            }
            this.f36891r.add(aVar);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        i.m(byteBuffer, this.f36891r.size());
        for (a aVar : this.f36891r) {
            if (getVersion() == 1) {
                i.l(byteBuffer, aVar.f36892a);
                i.l(byteBuffer, aVar.f36893b);
            } else {
                i.i(byteBuffer, aVar.f36892a);
                i.i(byteBuffer, aVar.f36893b);
            }
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return (this.f36891r.size() * (getVersion() == 1 ? 16 : 8)) + 5;
    }

    @Override // com.googlecode.mp4parser.a
    public byte[] h() {
        return new byte[]{-44, Byte.MIN_VALUE, 126, -14, -54, 57, 70, -107, -114, 84, 38, -53, -98, 70, -89, -97};
    }

    public String toString() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f36890u, this, this));
        return "TfrfBox{entries=" + this.f36891r + '}';
    }

    public List<a> v() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f36889t, this, this));
        return this.f36891r;
    }

    public long w() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f36888s, this, this));
        return this.f36891r.size();
    }
}

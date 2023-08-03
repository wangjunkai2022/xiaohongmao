package com.coremedia.iso.boxes.dece;

import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.googlecode.mp4parser.c;
import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import org.aspectj.lang.c;
import org.aspectj.runtime.reflect.e;

/* compiled from: TrickPlayBox.java */
/* loaded from: classes.dex */
public class a extends c {

    /* renamed from: s  reason: collision with root package name */
    public static final String f10000s = "trik";

    /* renamed from: t  reason: collision with root package name */
    private static final /* synthetic */ c.b f10001t = null;

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f10002u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f10003v = null;

    /* renamed from: r  reason: collision with root package name */
    private List<C0075a> f10004r;

    /* compiled from: TrickPlayBox.java */
    /* renamed from: com.coremedia.iso.boxes.dece.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0075a {

        /* renamed from: a  reason: collision with root package name */
        private int f10005a;

        public C0075a() {
        }

        public int b() {
            return this.f10005a & 63;
        }

        public int c() {
            return (this.f10005a >> 6) & 3;
        }

        public void d(int i4) {
            this.f10005a = (i4 & 63) | this.f10005a;
        }

        public void e(int i4) {
            this.f10005a = ((i4 & 3) << 6) | (this.f10005a & 31);
        }

        public String toString() {
            return "Entry{picType=" + c() + ",dependencyLevel=" + b() + '}';
        }

        public C0075a(int i4) {
            this.f10005a = i4;
        }
    }

    static {
        s();
    }

    public a() {
        super(f10000s);
        this.f10004r = new ArrayList();
    }

    private static /* synthetic */ void s() {
        e eVar = new e("TrickPlayBox.java", a.class);
        f10001t = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setEntries", "com.coremedia.iso.boxes.dece.TrickPlayBox", "java.util.List", "entries", "", "void"), 32);
        f10002u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getEntries", "com.coremedia.iso.boxes.dece.TrickPlayBox", "", "", "", "java.util.List"), 36);
        f10003v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.dece.TrickPlayBox", "", "", "", "java.lang.String"), 103);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        while (byteBuffer.remaining() > 0) {
            this.f10004r.add(new C0075a(g.p(byteBuffer)));
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        for (C0075a c0075a : this.f10004r) {
            i.m(byteBuffer, c0075a.f10005a);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return this.f10004r.size() + 4;
    }

    public String toString() {
        j.b().c(e.v(f10003v, this, this));
        return "TrickPlayBox{entries=" + this.f10004r + '}';
    }

    public List<C0075a> v() {
        j.b().c(e.v(f10002u, this, this));
        return this.f10004r;
    }

    public void w(List<C0075a> list) {
        j.b().c(e.w(f10001t, this, this, list));
        this.f10004r = list;
    }
}

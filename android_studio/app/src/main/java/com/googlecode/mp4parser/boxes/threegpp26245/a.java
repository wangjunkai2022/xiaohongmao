package com.googlecode.mp4parser.boxes.threegpp26245;

import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.coremedia.iso.l;
import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import java.util.LinkedList;
import java.util.List;
import org.aspectj.lang.c;
import org.aspectj.runtime.reflect.e;

/* compiled from: FontTableBox.java */
/* loaded from: classes2.dex */
public class a extends com.googlecode.mp4parser.a {

    /* renamed from: o  reason: collision with root package name */
    public static final String f36923o = "ftab";

    /* renamed from: p  reason: collision with root package name */
    private static final /* synthetic */ c.b f36924p = null;

    /* renamed from: q  reason: collision with root package name */
    private static final /* synthetic */ c.b f36925q = null;

    /* renamed from: n  reason: collision with root package name */
    List<C0291a> f36926n;

    /* compiled from: FontTableBox.java */
    /* renamed from: com.googlecode.mp4parser.boxes.threegpp26245.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0291a {

        /* renamed from: a  reason: collision with root package name */
        int f36927a;

        /* renamed from: b  reason: collision with root package name */
        String f36928b;

        public C0291a() {
        }

        public void a(ByteBuffer byteBuffer) {
            i.f(byteBuffer, this.f36927a);
            i.m(byteBuffer, this.f36928b.length());
            byteBuffer.put(l.b(this.f36928b));
        }

        public int b() {
            return l.c(this.f36928b) + 3;
        }

        public void c(ByteBuffer byteBuffer) {
            this.f36927a = g.i(byteBuffer);
            this.f36928b = g.h(byteBuffer, g.p(byteBuffer));
        }

        public String toString() {
            return "FontRecord{fontId=" + this.f36927a + ", fontname='" + this.f36928b + "'}";
        }

        public C0291a(int i4, String str) {
            this.f36927a = i4;
            this.f36928b = str;
        }
    }

    static {
        s();
    }

    public a() {
        super(f36923o);
        this.f36926n = new LinkedList();
    }

    private static /* synthetic */ void s() {
        e eVar = new e("FontTableBox.java", a.class);
        f36924p = eVar.H(c.f91018a, eVar.E("1", "getEntries", "com.googlecode.mp4parser.boxes.threegpp26245.FontTableBox", "", "", "", "java.util.List"), 52);
        f36925q = eVar.H(c.f91018a, eVar.E("1", "setEntries", "com.googlecode.mp4parser.boxes.threegpp26245.FontTableBox", "java.util.List", "entries", "", "void"), 56);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        int i4 = g.i(byteBuffer);
        for (int i10 = 0; i10 < i4; i10++) {
            C0291a c0291a = new C0291a();
            c0291a.c(byteBuffer);
            this.f36926n.add(c0291a);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        i.f(byteBuffer, this.f36926n.size());
        for (C0291a c0291a : this.f36926n) {
            c0291a.a(byteBuffer);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        int i4 = 2;
        for (C0291a c0291a : this.f36926n) {
            i4 += c0291a.b();
        }
        return i4;
    }

    public List<C0291a> t() {
        j.b().c(e.v(f36924p, this, this));
        return this.f36926n;
    }

    public void u(List<C0291a> list) {
        j.b().c(e.w(f36925q, this, this, list));
        this.f36926n = list;
    }
}

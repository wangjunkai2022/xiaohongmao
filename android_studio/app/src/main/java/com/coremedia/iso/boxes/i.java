package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.aspectj.lang.c;

/* compiled from: CompositionTimeToSample.java */
/* loaded from: classes.dex */
public class i extends com.googlecode.mp4parser.c {

    /* renamed from: s  reason: collision with root package name */
    public static final String f10155s = "ctts";

    /* renamed from: t  reason: collision with root package name */
    static final /* synthetic */ boolean f10156t = false;

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f10157u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f10158v = null;

    /* renamed from: r  reason: collision with root package name */
    List<a> f10159r;

    /* compiled from: CompositionTimeToSample.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        int f10160a;

        /* renamed from: b  reason: collision with root package name */
        int f10161b;

        public a(int i4, int i10) {
            this.f10160a = i4;
            this.f10161b = i10;
        }

        public int a() {
            return this.f10160a;
        }

        public int b() {
            return this.f10161b;
        }

        public void c(int i4) {
            this.f10160a = i4;
        }

        public void d(int i4) {
            this.f10161b = i4;
        }

        public String toString() {
            return "Entry{count=" + this.f10160a + ", offset=" + this.f10161b + '}';
        }
    }

    static {
        s();
    }

    public i() {
        super(f10155s);
        this.f10159r = Collections.emptyList();
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("CompositionTimeToSample.java", i.class);
        f10157u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getEntries", "com.coremedia.iso.boxes.CompositionTimeToSample", "", "", "", "java.util.List"), 57);
        f10158v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setEntries", "com.coremedia.iso.boxes.CompositionTimeToSample", "java.util.List", "entries", "", "void"), 61);
    }

    public static int[] v(List<a> list) {
        long j4 = 0;
        for (a aVar : list) {
            j4 += aVar.a();
        }
        int[] iArr = new int[(int) j4];
        int i4 = 0;
        for (a aVar2 : list) {
            int i10 = 0;
            while (i10 < aVar2.a()) {
                iArr[i4] = aVar2.b();
                i10++;
                i4++;
            }
        }
        return iArr;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        int a10 = com.googlecode.mp4parser.util.c.a(com.coremedia.iso.g.l(byteBuffer));
        this.f10159r = new ArrayList(a10);
        for (int i4 = 0; i4 < a10; i4++) {
            this.f10159r.add(new a(com.googlecode.mp4parser.util.c.a(com.coremedia.iso.g.l(byteBuffer)), byteBuffer.getInt()));
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.i(byteBuffer, this.f10159r.size());
        for (a aVar : this.f10159r) {
            com.coremedia.iso.i.i(byteBuffer, aVar.a());
            byteBuffer.putInt(aVar.b());
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return (this.f10159r.size() * 8) + 8;
    }

    public List<a> w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10157u, this, this));
        return this.f10159r;
    }

    public void x(List<a> list) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10158v, this, this, list));
        this.f10159r = list;
    }
}

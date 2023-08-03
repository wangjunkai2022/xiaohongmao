package com.coremedia.iso.boxes;

import java.lang.ref.SoftReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import org.aspectj.lang.c;

/* compiled from: TimeToSampleBox.java */
/* loaded from: classes.dex */
public class d1 extends com.googlecode.mp4parser.c {

    /* renamed from: s  reason: collision with root package name */
    public static final String f9991s = "stts";

    /* renamed from: t  reason: collision with root package name */
    static Map<List<a>, SoftReference<long[]>> f9992t;

    /* renamed from: u  reason: collision with root package name */
    static final /* synthetic */ boolean f9993u = false;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f9994v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f9995w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f9996x = null;

    /* renamed from: r  reason: collision with root package name */
    List<a> f9997r;

    /* compiled from: TimeToSampleBox.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        long f9998a;

        /* renamed from: b  reason: collision with root package name */
        long f9999b;

        public a(long j4, long j10) {
            this.f9998a = j4;
            this.f9999b = j10;
        }

        public long a() {
            return this.f9998a;
        }

        public long b() {
            return this.f9999b;
        }

        public void c(long j4) {
            this.f9998a = j4;
        }

        public void d(long j4) {
            this.f9999b = j4;
        }

        public String toString() {
            return "Entry{count=" + this.f9998a + ", delta=" + this.f9999b + '}';
        }
    }

    static {
        s();
        f9992t = new WeakHashMap();
    }

    public d1() {
        super(f9991s);
        this.f9997r = Collections.emptyList();
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("TimeToSampleBox.java", d1.class);
        f9994v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getEntries", "com.coremedia.iso.boxes.TimeToSampleBox", "", "", "", "java.util.List"), 79);
        f9995w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setEntries", "com.coremedia.iso.boxes.TimeToSampleBox", "java.util.List", "entries", "", "void"), 83);
        f9996x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.TimeToSampleBox", "", "", "", "java.lang.String"), 87);
    }

    public static synchronized long[] v(List<a> list) {
        long[] jArr;
        synchronized (d1.class) {
            SoftReference<long[]> softReference = f9992t.get(list);
            if (softReference == null || (jArr = softReference.get()) == null) {
                long j4 = 0;
                for (a aVar : list) {
                    j4 += aVar.a();
                }
                long[] jArr2 = new long[(int) j4];
                int i4 = 0;
                for (a aVar2 : list) {
                    int i10 = 0;
                    while (i10 < aVar2.a()) {
                        jArr2[i4] = aVar2.b();
                        i10++;
                        i4++;
                    }
                }
                f9992t.put(list, new SoftReference<>(jArr2));
                return jArr2;
            }
            return jArr;
        }
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        int a10 = com.googlecode.mp4parser.util.c.a(com.coremedia.iso.g.l(byteBuffer));
        this.f9997r = new ArrayList(a10);
        for (int i4 = 0; i4 < a10; i4++) {
            this.f9997r.add(new a(com.coremedia.iso.g.l(byteBuffer), com.coremedia.iso.g.l(byteBuffer)));
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.i(byteBuffer, this.f9997r.size());
        for (a aVar : this.f9997r) {
            com.coremedia.iso.i.i(byteBuffer, aVar.a());
            com.coremedia.iso.i.i(byteBuffer, aVar.b());
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return (this.f9997r.size() * 8) + 8;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f9996x, this, this));
        return "TimeToSampleBox[entryCount=" + this.f9997r.size() + "]";
    }

    public List<a> w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f9994v, this, this));
        return this.f9997r;
    }

    public void x(List<a> list) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f9995w, this, this, list));
        this.f9997r = list;
    }
}

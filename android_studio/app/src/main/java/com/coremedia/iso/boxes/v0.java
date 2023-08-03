package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.aspectj.lang.c;

/* compiled from: SampleToChunkBox.java */
/* loaded from: classes.dex */
public class v0 extends com.googlecode.mp4parser.c {

    /* renamed from: s  reason: collision with root package name */
    public static final String f10413s = "stsc";

    /* renamed from: t  reason: collision with root package name */
    private static final /* synthetic */ c.b f10414t = null;

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f10415u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f10416v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f10417w = null;

    /* renamed from: r  reason: collision with root package name */
    List<a> f10418r;

    /* compiled from: SampleToChunkBox.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        long f10419a;

        /* renamed from: b  reason: collision with root package name */
        long f10420b;

        /* renamed from: c  reason: collision with root package name */
        long f10421c;

        public a(long j4, long j10, long j11) {
            this.f10419a = j4;
            this.f10420b = j10;
            this.f10421c = j11;
        }

        public long a() {
            return this.f10419a;
        }

        public long b() {
            return this.f10421c;
        }

        public long c() {
            return this.f10420b;
        }

        public void d(long j4) {
            this.f10419a = j4;
        }

        public void e(long j4) {
            this.f10421c = j4;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f10419a == aVar.f10419a && this.f10421c == aVar.f10421c && this.f10420b == aVar.f10420b;
        }

        public void f(long j4) {
            this.f10420b = j4;
        }

        public int hashCode() {
            long j4 = this.f10419a;
            long j10 = this.f10420b;
            long j11 = this.f10421c;
            return (((((int) (j4 ^ (j4 >>> 32))) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + ((int) (j11 ^ (j11 >>> 32)));
        }

        public String toString() {
            return "Entry{firstChunk=" + this.f10419a + ", samplesPerChunk=" + this.f10420b + ", sampleDescriptionIndex=" + this.f10421c + '}';
        }
    }

    static {
        s();
    }

    public v0() {
        super(f10413s);
        this.f10418r = Collections.emptyList();
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("SampleToChunkBox.java", v0.class);
        f10414t = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getEntries", "com.coremedia.iso.boxes.SampleToChunkBox", "", "", "", "java.util.List"), 47);
        f10415u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setEntries", "com.coremedia.iso.boxes.SampleToChunkBox", "java.util.List", "entries", "", "void"), 51);
        f10416v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.SampleToChunkBox", "", "", "", "java.lang.String"), 84);
        f10417w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "blowup", "com.coremedia.iso.boxes.SampleToChunkBox", "int", "chunkCount", "", "[J"), 95);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        int a10 = com.googlecode.mp4parser.util.c.a(com.coremedia.iso.g.l(byteBuffer));
        this.f10418r = new ArrayList(a10);
        for (int i4 = 0; i4 < a10; i4++) {
            this.f10418r.add(new a(com.coremedia.iso.g.l(byteBuffer), com.coremedia.iso.g.l(byteBuffer), com.coremedia.iso.g.l(byteBuffer)));
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.i(byteBuffer, this.f10418r.size());
        for (a aVar : this.f10418r) {
            com.coremedia.iso.i.i(byteBuffer, aVar.a());
            com.coremedia.iso.i.i(byteBuffer, aVar.c());
            com.coremedia.iso.i.i(byteBuffer, aVar.b());
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return (this.f10418r.size() * 12) + 8;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10416v, this, this));
        return "SampleToChunkBox[entryCount=" + this.f10418r.size() + "]";
    }

    public long[] v(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10417w, this, this, org.aspectj.runtime.internal.e.k(i4)));
        long[] jArr = new long[i4];
        LinkedList linkedList = new LinkedList(this.f10418r);
        Collections.reverse(linkedList);
        Iterator it = linkedList.iterator();
        a aVar = (a) it.next();
        while (i4 > 1) {
            jArr[i4 - 1] = aVar.c();
            if (i4 == aVar.a()) {
                aVar = (a) it.next();
            }
            i4--;
        }
        jArr[0] = aVar.c();
        return jArr;
    }

    public List<a> w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10414t, this, this));
        return this.f10418r;
    }

    public void x(List<a> list) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10415u, this, this, list));
        this.f10418r = list;
    }
}

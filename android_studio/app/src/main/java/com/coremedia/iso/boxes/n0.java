package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import org.aspectj.lang.c;

/* compiled from: ProgressiveDownloadInformationBox.java */
/* loaded from: classes.dex */
public class n0 extends com.googlecode.mp4parser.c {

    /* renamed from: s  reason: collision with root package name */
    public static final String f10252s = "pdin";

    /* renamed from: t  reason: collision with root package name */
    private static final /* synthetic */ c.b f10253t = null;

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f10254u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f10255v = null;

    /* renamed from: r  reason: collision with root package name */
    List<a> f10256r;

    /* compiled from: ProgressiveDownloadInformationBox.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        long f10257a;

        /* renamed from: b  reason: collision with root package name */
        long f10258b;

        public a(long j4, long j10) {
            this.f10257a = j4;
            this.f10258b = j10;
        }

        public long a() {
            return this.f10258b;
        }

        public long b() {
            return this.f10257a;
        }

        public void c(long j4) {
            this.f10258b = j4;
        }

        public void d(long j4) {
            this.f10257a = j4;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f10258b == aVar.f10258b && this.f10257a == aVar.f10257a;
        }

        public int hashCode() {
            long j4 = this.f10257a;
            long j10 = this.f10258b;
            return (((int) (j4 ^ (j4 >>> 32))) * 31) + ((int) (j10 ^ (j10 >>> 32)));
        }

        public String toString() {
            return "Entry{rate=" + this.f10257a + ", initialDelay=" + this.f10258b + '}';
        }
    }

    static {
        s();
    }

    public n0() {
        super(f10252s);
        this.f10256r = Collections.emptyList();
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("ProgressiveDownloadInformationBox.java", n0.class);
        f10253t = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getEntries", "com.coremedia.iso.boxes.ProgressiveDownloadInformationBox", "", "", "", "java.util.List"), 38);
        f10254u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setEntries", "com.coremedia.iso.boxes.ProgressiveDownloadInformationBox", "java.util.List", "entries", "", "void"), 42);
        f10255v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.ProgressiveDownloadInformationBox", "", "", "", "java.lang.String"), 112);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f10256r = new LinkedList();
        while (byteBuffer.remaining() >= 8) {
            this.f10256r.add(new a(com.coremedia.iso.g.l(byteBuffer), com.coremedia.iso.g.l(byteBuffer)));
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        for (a aVar : this.f10256r) {
            com.coremedia.iso.i.i(byteBuffer, aVar.b());
            com.coremedia.iso.i.i(byteBuffer, aVar.a());
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return (this.f10256r.size() * 8) + 4;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10255v, this, this));
        return "ProgressiveDownloadInfoBox{entries=" + this.f10256r + '}';
    }

    public List<a> v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10253t, this, this));
        return this.f10256r;
    }

    public void w(List<a> list) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10254u, this, this, list));
        this.f10256r = list;
    }
}

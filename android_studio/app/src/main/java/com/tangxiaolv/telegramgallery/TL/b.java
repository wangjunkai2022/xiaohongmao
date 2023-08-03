package com.tangxiaolv.telegramgallery.TL;

import com.google.android.exoplayer2.util.a0;
import java.util.ArrayList;

/* compiled from: Document.java */
/* loaded from: classes3.dex */
public class b extends m {

    /* renamed from: c  reason: collision with root package name */
    public long f56248c;

    /* renamed from: d  reason: collision with root package name */
    public long f56249d;

    /* renamed from: e  reason: collision with root package name */
    public int f56250e;

    /* renamed from: f  reason: collision with root package name */
    public int f56251f;

    /* renamed from: g  reason: collision with root package name */
    public String f56252g;

    /* renamed from: h  reason: collision with root package name */
    public String f56253h;

    /* renamed from: i  reason: collision with root package name */
    public int f56254i;

    /* renamed from: j  reason: collision with root package name */
    public l f56255j;

    /* renamed from: k  reason: collision with root package name */
    public int f56256k;

    /* renamed from: l  reason: collision with root package name */
    public byte[] f56257l;

    /* renamed from: m  reason: collision with root package name */
    public byte[] f56258m;

    /* renamed from: n  reason: collision with root package name */
    public String f56259n;

    /* renamed from: o  reason: collision with root package name */
    public ArrayList<com.tangxiaolv.telegramgallery.TL.c> f56260o = new ArrayList<>();

    /* compiled from: Document.java */
    /* loaded from: classes3.dex */
    public static class a extends b {

        /* renamed from: p  reason: collision with root package name */
        public static int f56261p = -106717361;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void d(com.tangxiaolv.telegramgallery.TL.a aVar, boolean z9) {
            this.f56248c = aVar.j(z9);
            this.f56249d = aVar.j(z9);
            this.f56251f = aVar.i(z9);
            this.f56253h = aVar.k(z9);
            this.f56254i = aVar.i(z9);
            this.f56255j = l.f(aVar, aVar.i(z9), z9);
            this.f56256k = aVar.i(z9);
            int i4 = aVar.i(z9);
            if (i4 != 481674261) {
                if (z9) {
                    throw new RuntimeException(String.format("wrong Vector magic, got %x", Integer.valueOf(i4)));
                }
                return;
            }
            int i10 = aVar.i(z9);
            for (int i11 = 0; i11 < i10; i11++) {
                com.tangxiaolv.telegramgallery.TL.c f10 = com.tangxiaolv.telegramgallery.TL.c.f(aVar, aVar.i(z9), z9);
                if (f10 == null) {
                    return;
                }
                this.f56260o.add(f10);
            }
        }

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56261p);
            aVar.w(this.f56248c);
            aVar.w(this.f56249d);
            aVar.v(this.f56251f);
            aVar.x(this.f56253h);
            aVar.v(this.f56254i);
            this.f56255j.e(aVar);
            aVar.v(this.f56256k);
            aVar.v(481674261);
            int size = this.f56260o.size();
            aVar.v(size);
            for (int i4 = 0; i4 < size; i4++) {
                this.f56260o.get(i4).e(aVar);
            }
        }
    }

    /* compiled from: Document.java */
    /* renamed from: com.tangxiaolv.telegramgallery.TL.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0482b extends b {

        /* renamed from: p  reason: collision with root package name */
        public static int f56262p = 922273905;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void d(com.tangxiaolv.telegramgallery.TL.a aVar, boolean z9) {
            this.f56248c = aVar.j(z9);
        }

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56262p);
            aVar.w(this.f56248c);
        }
    }

    /* compiled from: Document.java */
    /* loaded from: classes3.dex */
    public static class c extends b {

        /* renamed from: p  reason: collision with root package name */
        public static int f56263p = 1431655768;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void d(com.tangxiaolv.telegramgallery.TL.a aVar, boolean z9) {
            this.f56248c = aVar.j(z9);
            this.f56249d = aVar.j(z9);
            this.f56251f = aVar.i(z9);
            int a10 = aVar.a();
            try {
                this.f56253h = aVar.k(true);
            } catch (Exception unused) {
                this.f56253h = a0.f27434b0;
                if (aVar instanceof j) {
                    ((j) aVar).F(a10);
                }
            }
            this.f56254i = aVar.i(z9);
            this.f56255j = l.f(aVar, aVar.i(z9), z9);
            this.f56256k = aVar.i(z9);
            int i4 = aVar.i(z9);
            if (i4 != 481674261) {
                if (z9) {
                    throw new RuntimeException(String.format("wrong Vector magic, got %x", Integer.valueOf(i4)));
                }
                return;
            }
            int i10 = aVar.i(z9);
            for (int i11 = 0; i11 < i10; i11++) {
                com.tangxiaolv.telegramgallery.TL.c f10 = com.tangxiaolv.telegramgallery.TL.c.f(aVar, aVar.i(z9), z9);
                if (f10 == null) {
                    return;
                }
                this.f56260o.add(f10);
            }
            this.f56257l = aVar.d(z9);
            this.f56258m = aVar.d(z9);
        }

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56263p);
            aVar.w(this.f56248c);
            aVar.w(this.f56249d);
            aVar.v(this.f56251f);
            aVar.x(this.f56253h);
            aVar.v(this.f56254i);
            this.f56255j.e(aVar);
            aVar.v(this.f56256k);
            aVar.v(481674261);
            int size = this.f56260o.size();
            aVar.v(size);
            for (int i4 = 0; i4 < size; i4++) {
                this.f56260o.get(i4).e(aVar);
            }
            aVar.p(this.f56257l);
            aVar.p(this.f56258m);
        }
    }

    /* compiled from: Document.java */
    /* loaded from: classes3.dex */
    public static class d extends a {

        /* renamed from: q  reason: collision with root package name */
        public static int f56264q = 1431655766;

        @Override // com.tangxiaolv.telegramgallery.TL.b.a, com.tangxiaolv.telegramgallery.TL.m
        public void d(com.tangxiaolv.telegramgallery.TL.a aVar, boolean z9) {
            this.f56248c = aVar.j(z9);
            this.f56249d = aVar.j(z9);
            this.f56250e = aVar.i(z9);
            this.f56251f = aVar.i(z9);
            this.f56252g = aVar.k(z9);
            this.f56253h = aVar.k(z9);
            this.f56254i = aVar.i(z9);
            this.f56255j = l.f(aVar, aVar.i(z9), z9);
            this.f56256k = aVar.i(z9);
            this.f56257l = aVar.d(z9);
            this.f56258m = aVar.d(z9);
        }

        @Override // com.tangxiaolv.telegramgallery.TL.b.a, com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56264q);
            aVar.w(this.f56248c);
            aVar.w(this.f56249d);
            aVar.v(this.f56250e);
            aVar.v(this.f56251f);
            aVar.x(this.f56252g);
            aVar.x(this.f56253h);
            aVar.v(this.f56254i);
            this.f56255j.e(aVar);
            aVar.v(this.f56256k);
            aVar.p(this.f56257l);
            aVar.p(this.f56258m);
        }
    }

    /* compiled from: Document.java */
    /* loaded from: classes3.dex */
    public static class e extends a {

        /* renamed from: q  reason: collision with root package name */
        public static int f56265q = -1627626714;

        @Override // com.tangxiaolv.telegramgallery.TL.b.a, com.tangxiaolv.telegramgallery.TL.m
        public void d(com.tangxiaolv.telegramgallery.TL.a aVar, boolean z9) {
            this.f56248c = aVar.j(z9);
            this.f56249d = aVar.j(z9);
            this.f56250e = aVar.i(z9);
            this.f56251f = aVar.i(z9);
            this.f56252g = aVar.k(z9);
            this.f56253h = aVar.k(z9);
            this.f56254i = aVar.i(z9);
            this.f56255j = l.f(aVar, aVar.i(z9), z9);
            this.f56256k = aVar.i(z9);
        }

        @Override // com.tangxiaolv.telegramgallery.TL.b.a, com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56265q);
            aVar.w(this.f56248c);
            aVar.w(this.f56249d);
            aVar.v(this.f56250e);
            aVar.v(this.f56251f);
            aVar.x(this.f56252g);
            aVar.x(this.f56253h);
            aVar.v(this.f56254i);
            this.f56255j.e(aVar);
            aVar.v(this.f56256k);
        }
    }

    public static b f(com.tangxiaolv.telegramgallery.TL.a aVar, int i4, boolean z9) {
        b eVar;
        switch (i4) {
            case -1627626714:
                eVar = new e();
                break;
            case -106717361:
                eVar = new a();
                break;
            case 922273905:
                eVar = new C0482b();
                break;
            case 1431655766:
                eVar = new d();
                break;
            case 1431655768:
                eVar = new c();
                break;
            default:
                eVar = null;
                break;
        }
        if (eVar == null && z9) {
            throw new RuntimeException(String.format("can't parse magic %x in Document", Integer.valueOf(i4)));
        }
        if (eVar != null) {
            eVar.d(aVar, z9);
        }
        return eVar;
    }
}

package com.tangxiaolv.telegramgallery.TL;

import java.util.ArrayList;

/* compiled from: Photo.java */
/* loaded from: classes3.dex */
public class k extends m {

    /* renamed from: c  reason: collision with root package name */
    public long f56335c;

    /* renamed from: d  reason: collision with root package name */
    public long f56336d;

    /* renamed from: e  reason: collision with root package name */
    public int f56337e;

    /* renamed from: f  reason: collision with root package name */
    public int f56338f;

    /* renamed from: g  reason: collision with root package name */
    public String f56339g;

    /* renamed from: h  reason: collision with root package name */
    public e f56340h;

    /* renamed from: i  reason: collision with root package name */
    public ArrayList<l> f56341i = new ArrayList<>();

    /* compiled from: Photo.java */
    /* loaded from: classes3.dex */
    public static class a extends k {

        /* renamed from: j  reason: collision with root package name */
        public static int f56342j = -840088834;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void d(com.tangxiaolv.telegramgallery.TL.a aVar, boolean z9) {
            this.f56335c = aVar.j(z9);
            this.f56336d = aVar.j(z9);
            this.f56338f = aVar.i(z9);
            int i4 = aVar.i(z9);
            if (i4 != 481674261) {
                if (z9) {
                    throw new RuntimeException(String.format("wrong Vector magic, got %x", Integer.valueOf(i4)));
                }
                return;
            }
            int i10 = aVar.i(z9);
            for (int i11 = 0; i11 < i10; i11++) {
                l f10 = l.f(aVar, aVar.i(z9), z9);
                if (f10 == null) {
                    return;
                }
                this.f56341i.add(f10);
            }
        }

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56342j);
            aVar.w(this.f56335c);
            aVar.w(this.f56336d);
            aVar.v(this.f56338f);
            aVar.v(481674261);
            int size = this.f56341i.size();
            aVar.v(size);
            for (int i4 = 0; i4 < size; i4++) {
                this.f56341i.get(i4).e(aVar);
            }
        }
    }

    /* compiled from: Photo.java */
    /* loaded from: classes3.dex */
    public static class b extends k {

        /* renamed from: j  reason: collision with root package name */
        public static int f56343j = 590459437;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void d(com.tangxiaolv.telegramgallery.TL.a aVar, boolean z9) {
            this.f56335c = aVar.j(z9);
        }

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56343j);
            aVar.w(this.f56335c);
        }
    }

    /* compiled from: Photo.java */
    /* loaded from: classes3.dex */
    public static class c extends a {

        /* renamed from: k  reason: collision with root package name */
        public static int f56344k = -1014792074;

        @Override // com.tangxiaolv.telegramgallery.TL.k.a, com.tangxiaolv.telegramgallery.TL.m
        public void d(com.tangxiaolv.telegramgallery.TL.a aVar, boolean z9) {
            this.f56335c = aVar.j(z9);
            this.f56336d = aVar.j(z9);
            this.f56337e = aVar.i(z9);
            this.f56338f = aVar.i(z9);
            this.f56340h = e.f(aVar, aVar.i(z9), z9);
            int i4 = aVar.i(z9);
            if (i4 != 481674261) {
                if (z9) {
                    throw new RuntimeException(String.format("wrong Vector magic, got %x", Integer.valueOf(i4)));
                }
                return;
            }
            int i10 = aVar.i(z9);
            for (int i11 = 0; i11 < i10; i11++) {
                l f10 = l.f(aVar, aVar.i(z9), z9);
                if (f10 == null) {
                    return;
                }
                this.f56341i.add(f10);
            }
        }

        @Override // com.tangxiaolv.telegramgallery.TL.k.a, com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56344k);
            aVar.w(this.f56335c);
            aVar.w(this.f56336d);
            aVar.v(this.f56337e);
            aVar.v(this.f56338f);
            this.f56340h.e(aVar);
            aVar.v(481674261);
            int size = this.f56341i.size();
            aVar.v(size);
            for (int i4 = 0; i4 < size; i4++) {
                this.f56341i.get(i4).e(aVar);
            }
        }
    }

    /* compiled from: Photo.java */
    /* loaded from: classes3.dex */
    public static class d extends a {

        /* renamed from: k  reason: collision with root package name */
        public static int f56345k = 582313809;

        @Override // com.tangxiaolv.telegramgallery.TL.k.a, com.tangxiaolv.telegramgallery.TL.m
        public void d(com.tangxiaolv.telegramgallery.TL.a aVar, boolean z9) {
            this.f56335c = aVar.j(z9);
            this.f56336d = aVar.j(z9);
            this.f56337e = aVar.i(z9);
            this.f56338f = aVar.i(z9);
            this.f56339g = aVar.k(z9);
            this.f56340h = e.f(aVar, aVar.i(z9), z9);
            int i4 = aVar.i(z9);
            if (i4 != 481674261) {
                if (z9) {
                    throw new RuntimeException(String.format("wrong Vector magic, got %x", Integer.valueOf(i4)));
                }
                return;
            }
            int i10 = aVar.i(z9);
            for (int i11 = 0; i11 < i10; i11++) {
                l f10 = l.f(aVar, aVar.i(z9), z9);
                if (f10 == null) {
                    return;
                }
                this.f56341i.add(f10);
            }
        }

        @Override // com.tangxiaolv.telegramgallery.TL.k.a, com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56345k);
            aVar.w(this.f56335c);
            aVar.w(this.f56336d);
            aVar.v(this.f56337e);
            aVar.v(this.f56338f);
            aVar.x(this.f56339g);
            this.f56340h.e(aVar);
            aVar.v(481674261);
            int size = this.f56341i.size();
            aVar.v(size);
            for (int i4 = 0; i4 < size; i4++) {
                this.f56341i.get(i4).e(aVar);
            }
        }
    }

    public static k f(com.tangxiaolv.telegramgallery.TL.a aVar, int i4, boolean z9) {
        k cVar;
        switch (i4) {
            case -1014792074:
                cVar = new c();
                break;
            case -840088834:
                cVar = new a();
                break;
            case 582313809:
                cVar = new d();
                break;
            case 590459437:
                cVar = new b();
                break;
            default:
                cVar = null;
                break;
        }
        if (cVar == null && z9) {
            throw new RuntimeException(String.format("can't parse magic %x in Photo", Integer.valueOf(i4)));
        }
        if (cVar != null) {
            cVar.d(aVar, z9);
        }
        return cVar;
    }
}

package com.tangxiaolv.telegramgallery.TL;

import io.sentry.protocol.y;

/* compiled from: PhotoSize.java */
/* loaded from: classes3.dex */
public class l extends m {

    /* renamed from: c  reason: collision with root package name */
    public String f56346c;

    /* renamed from: d  reason: collision with root package name */
    public d f56347d;

    /* renamed from: e  reason: collision with root package name */
    public int f56348e;

    /* renamed from: f  reason: collision with root package name */
    public int f56349f;

    /* renamed from: g  reason: collision with root package name */
    public int f56350g;

    /* renamed from: h  reason: collision with root package name */
    public byte[] f56351h;

    /* renamed from: i  reason: collision with root package name */
    public String f56352i;

    /* compiled from: PhotoSize.java */
    /* loaded from: classes3.dex */
    public static class a extends l {

        /* renamed from: j  reason: collision with root package name */
        public static int f56353j = -374917894;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void d(com.tangxiaolv.telegramgallery.TL.a aVar, boolean z9) {
            this.f56346c = aVar.k(z9);
            this.f56347d = d.f(aVar, aVar.i(z9), z9);
            this.f56348e = aVar.i(z9);
            this.f56349f = aVar.i(z9);
            this.f56351h = aVar.d(z9);
        }

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56353j);
            aVar.x(this.f56346c);
            this.f56347d.e(aVar);
            aVar.v(this.f56348e);
            aVar.v(this.f56349f);
            aVar.p(this.f56351h);
        }
    }

    /* compiled from: PhotoSize.java */
    /* loaded from: classes3.dex */
    public static class b extends l {

        /* renamed from: j  reason: collision with root package name */
        public static int f56354j = 2009052699;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void d(com.tangxiaolv.telegramgallery.TL.a aVar, boolean z9) {
            this.f56346c = aVar.k(z9);
            this.f56347d = d.f(aVar, aVar.i(z9), z9);
            this.f56348e = aVar.i(z9);
            this.f56349f = aVar.i(z9);
            this.f56350g = aVar.i(z9);
        }

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56354j);
            aVar.x(this.f56346c);
            this.f56347d.e(aVar);
            aVar.v(this.f56348e);
            aVar.v(this.f56349f);
            aVar.v(this.f56350g);
        }
    }

    /* compiled from: PhotoSize.java */
    /* loaded from: classes3.dex */
    public static class c extends l {

        /* renamed from: j  reason: collision with root package name */
        public static int f56355j = 236446268;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void d(com.tangxiaolv.telegramgallery.TL.a aVar, boolean z9) {
            int a10 = aVar.a();
            try {
                String k10 = aVar.k(true);
                this.f56346c = k10;
                if (k10.length() > 1 || !(this.f56346c.equals("") || this.f56346c.equals("s") || this.f56346c.equals(y.b.f83919g) || this.f56346c.equals("m") || this.f56346c.equals(y.b.f83920h) || this.f56346c.equals("w"))) {
                    this.f56346c = "s";
                    if (aVar instanceof j) {
                        ((j) aVar).F(a10);
                    }
                }
            } catch (Exception unused) {
                this.f56346c = "s";
                if (aVar instanceof j) {
                    ((j) aVar).F(a10);
                }
            }
        }

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56355j);
            aVar.x(this.f56346c);
        }
    }

    public static l f(com.tangxiaolv.telegramgallery.TL.a aVar, int i4, boolean z9) {
        l aVar2;
        if (i4 == -374917894) {
            aVar2 = new a();
        } else if (i4 != 236446268) {
            aVar2 = i4 != 2009052699 ? null : new b();
        } else {
            aVar2 = new c();
        }
        if (aVar2 == null && z9) {
            throw new RuntimeException(String.format("can't parse magic %x in PhotoSize", Integer.valueOf(i4)));
        }
        if (aVar2 != null) {
            aVar2.d(aVar, z9);
        }
        return aVar2;
    }
}

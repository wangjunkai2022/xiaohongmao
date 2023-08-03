package com.tangxiaolv.telegramgallery.TL;

/* compiled from: InputFileLocation.java */
/* loaded from: classes3.dex */
public class h extends m {

    /* renamed from: c  reason: collision with root package name */
    public long f56315c;

    /* renamed from: d  reason: collision with root package name */
    public long f56316d;

    /* renamed from: e  reason: collision with root package name */
    public long f56317e;

    /* renamed from: f  reason: collision with root package name */
    public int f56318f;

    /* renamed from: g  reason: collision with root package name */
    public long f56319g;

    /* compiled from: InputFileLocation.java */
    /* loaded from: classes3.dex */
    public static class a extends h {

        /* renamed from: h  reason: collision with root package name */
        public static int f56320h = 1313188841;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void d(com.tangxiaolv.telegramgallery.TL.a aVar, boolean z9) {
            this.f56315c = aVar.j(z9);
            this.f56316d = aVar.j(z9);
        }

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56320h);
            aVar.w(this.f56315c);
            aVar.w(this.f56316d);
        }
    }

    /* compiled from: InputFileLocation.java */
    /* loaded from: classes3.dex */
    public static class b extends h {

        /* renamed from: h  reason: collision with root package name */
        public static int f56321h = -182231723;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void d(com.tangxiaolv.telegramgallery.TL.a aVar, boolean z9) {
            this.f56315c = aVar.j(z9);
            this.f56316d = aVar.j(z9);
        }

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56321h);
            aVar.w(this.f56315c);
            aVar.w(this.f56316d);
        }
    }

    /* compiled from: InputFileLocation.java */
    /* loaded from: classes3.dex */
    public static class c extends h {

        /* renamed from: h  reason: collision with root package name */
        public static int f56322h = 342061462;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void d(com.tangxiaolv.telegramgallery.TL.a aVar, boolean z9) {
            this.f56317e = aVar.j(z9);
            this.f56318f = aVar.i(z9);
            this.f56319g = aVar.j(z9);
        }

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56322h);
            aVar.w(this.f56317e);
            aVar.v(this.f56318f);
            aVar.w(this.f56319g);
        }
    }

    public static h f(com.tangxiaolv.telegramgallery.TL.a aVar, int i4, boolean z9) {
        h bVar;
        if (i4 == -182231723) {
            bVar = new b();
        } else if (i4 != 342061462) {
            bVar = i4 != 1313188841 ? null : new a();
        } else {
            bVar = new c();
        }
        if (bVar == null && z9) {
            throw new RuntimeException(String.format("can't parse magic %x in InputFileLocation", Integer.valueOf(i4)));
        }
        if (bVar != null) {
            bVar.d(aVar, z9);
        }
        return bVar;
    }
}

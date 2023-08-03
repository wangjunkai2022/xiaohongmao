package com.tangxiaolv.telegramgallery.TL;

/* compiled from: InputEncryptedFile.java */
/* loaded from: classes3.dex */
public class f extends m {

    /* renamed from: c  reason: collision with root package name */
    public long f56300c;

    /* renamed from: d  reason: collision with root package name */
    public long f56301d;

    /* renamed from: e  reason: collision with root package name */
    public int f56302e;

    /* renamed from: f  reason: collision with root package name */
    public int f56303f;

    /* renamed from: g  reason: collision with root package name */
    public String f56304g;

    /* compiled from: InputEncryptedFile.java */
    /* loaded from: classes3.dex */
    public static class a extends f {

        /* renamed from: h  reason: collision with root package name */
        public static int f56305h = 1511503333;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void d(com.tangxiaolv.telegramgallery.TL.a aVar, boolean z9) {
            this.f56300c = aVar.j(z9);
            this.f56301d = aVar.j(z9);
        }

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56305h);
            aVar.w(this.f56300c);
            aVar.w(this.f56301d);
        }
    }

    /* compiled from: InputEncryptedFile.java */
    /* loaded from: classes3.dex */
    public static class b extends f {

        /* renamed from: h  reason: collision with root package name */
        public static int f56306h = 767652808;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void d(com.tangxiaolv.telegramgallery.TL.a aVar, boolean z9) {
            this.f56300c = aVar.j(z9);
            this.f56302e = aVar.i(z9);
            this.f56303f = aVar.i(z9);
        }

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56306h);
            aVar.w(this.f56300c);
            aVar.v(this.f56302e);
            aVar.v(this.f56303f);
        }
    }

    /* compiled from: InputEncryptedFile.java */
    /* loaded from: classes3.dex */
    public static class c extends f {

        /* renamed from: h  reason: collision with root package name */
        public static int f56307h = 406307684;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56307h);
        }
    }

    /* compiled from: InputEncryptedFile.java */
    /* loaded from: classes3.dex */
    public static class d extends f {

        /* renamed from: h  reason: collision with root package name */
        public static int f56308h = 1690108678;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void d(com.tangxiaolv.telegramgallery.TL.a aVar, boolean z9) {
            this.f56300c = aVar.j(z9);
            this.f56302e = aVar.i(z9);
            this.f56304g = aVar.k(z9);
            this.f56303f = aVar.i(z9);
        }

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56308h);
            aVar.w(this.f56300c);
            aVar.v(this.f56302e);
            aVar.x(this.f56304g);
            aVar.v(this.f56303f);
        }
    }

    public static f f(com.tangxiaolv.telegramgallery.TL.a aVar, int i4, boolean z9) {
        f cVar;
        switch (i4) {
            case 406307684:
                cVar = new c();
                break;
            case 767652808:
                cVar = new b();
                break;
            case 1511503333:
                cVar = new a();
                break;
            case 1690108678:
                cVar = new d();
                break;
            default:
                cVar = null;
                break;
        }
        if (cVar == null && z9) {
            throw new RuntimeException(String.format("can't parse magic %x in InputEncryptedFile", Integer.valueOf(i4)));
        }
        if (cVar != null) {
            cVar.d(aVar, z9);
        }
        return cVar;
    }
}

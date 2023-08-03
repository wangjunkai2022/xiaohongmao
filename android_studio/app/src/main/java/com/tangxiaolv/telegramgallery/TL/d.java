package com.tangxiaolv.telegramgallery.TL;

/* compiled from: FileLocation.java */
/* loaded from: classes3.dex */
public class d extends m {

    /* renamed from: c  reason: collision with root package name */
    public int f56287c;

    /* renamed from: d  reason: collision with root package name */
    public long f56288d;

    /* renamed from: e  reason: collision with root package name */
    public int f56289e;

    /* renamed from: f  reason: collision with root package name */
    public long f56290f;

    /* renamed from: g  reason: collision with root package name */
    public byte[] f56291g;

    /* renamed from: h  reason: collision with root package name */
    public byte[] f56292h;

    /* compiled from: FileLocation.java */
    /* loaded from: classes3.dex */
    public static class a extends d {

        /* renamed from: i  reason: collision with root package name */
        public static int f56293i = 1431655764;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void d(com.tangxiaolv.telegramgallery.TL.a aVar, boolean z9) {
            this.f56287c = aVar.i(z9);
            this.f56288d = aVar.j(z9);
            this.f56289e = aVar.i(z9);
            this.f56290f = aVar.j(z9);
            this.f56291g = aVar.d(z9);
            this.f56292h = aVar.d(z9);
        }

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56293i);
            aVar.v(this.f56287c);
            aVar.w(this.f56288d);
            aVar.v(this.f56289e);
            aVar.w(this.f56290f);
            aVar.p(this.f56291g);
            aVar.p(this.f56292h);
        }
    }

    /* compiled from: FileLocation.java */
    /* loaded from: classes3.dex */
    public static class b extends d {

        /* renamed from: i  reason: collision with root package name */
        public static int f56294i = 1406570614;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void d(com.tangxiaolv.telegramgallery.TL.a aVar, boolean z9) {
            this.f56287c = aVar.i(z9);
            this.f56288d = aVar.j(z9);
            this.f56289e = aVar.i(z9);
            this.f56290f = aVar.j(z9);
        }

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56294i);
            aVar.v(this.f56287c);
            aVar.w(this.f56288d);
            aVar.v(this.f56289e);
            aVar.w(this.f56290f);
        }
    }

    /* compiled from: FileLocation.java */
    /* loaded from: classes3.dex */
    public static class c extends d {

        /* renamed from: i  reason: collision with root package name */
        public static int f56295i = 2086234950;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void d(com.tangxiaolv.telegramgallery.TL.a aVar, boolean z9) {
            this.f56288d = aVar.j(z9);
            this.f56289e = aVar.i(z9);
            this.f56290f = aVar.j(z9);
        }

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56295i);
            aVar.w(this.f56288d);
            aVar.v(this.f56289e);
            aVar.w(this.f56290f);
        }
    }

    public static d f(com.tangxiaolv.telegramgallery.TL.a aVar, int i4, boolean z9) {
        d bVar;
        if (i4 == 1406570614) {
            bVar = new b();
        } else if (i4 != 1431655764) {
            bVar = i4 != 2086234950 ? null : new c();
        } else {
            bVar = new a();
        }
        if (bVar == null && z9) {
            throw new RuntimeException(String.format("can't parse magic %x in FileLocation", Integer.valueOf(i4)));
        }
        if (bVar != null) {
            bVar.d(aVar, z9);
        }
        return bVar;
    }
}

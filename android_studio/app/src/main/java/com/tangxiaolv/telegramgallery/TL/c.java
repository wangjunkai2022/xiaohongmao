package com.tangxiaolv.telegramgallery.TL;

/* compiled from: DocumentAttribute.java */
/* loaded from: classes3.dex */
public class c extends m {

    /* renamed from: c  reason: collision with root package name */
    public int f56266c;

    /* renamed from: d  reason: collision with root package name */
    public int f56267d;

    /* renamed from: e  reason: collision with root package name */
    public int f56268e;

    /* renamed from: f  reason: collision with root package name */
    public String f56269f;

    /* renamed from: g  reason: collision with root package name */
    public com.tangxiaolv.telegramgallery.TL.i f56270g;

    /* renamed from: h  reason: collision with root package name */
    public int f56271h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f56272i;

    /* renamed from: j  reason: collision with root package name */
    public String f56273j;

    /* renamed from: k  reason: collision with root package name */
    public String f56274k;

    /* renamed from: l  reason: collision with root package name */
    public byte[] f56275l;

    /* renamed from: m  reason: collision with root package name */
    public String f56276m;

    /* compiled from: DocumentAttribute.java */
    /* loaded from: classes3.dex */
    public static class a extends c {

        /* renamed from: n  reason: collision with root package name */
        public static int f56277n = 297109817;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56277n);
        }
    }

    /* compiled from: DocumentAttribute.java */
    /* loaded from: classes3.dex */
    public static class b extends c {

        /* renamed from: n  reason: collision with root package name */
        public static int f56278n = -1739392570;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void d(com.tangxiaolv.telegramgallery.TL.a aVar, boolean z9) {
            int i4 = aVar.i(z9);
            this.f56271h = i4;
            this.f56272i = (i4 & 1024) != 0;
            this.f56268e = aVar.i(z9);
            if ((this.f56271h & 1) != 0) {
                this.f56273j = aVar.k(z9);
            }
            if ((this.f56271h & 2) != 0) {
                this.f56274k = aVar.k(z9);
            }
            if ((this.f56271h & 4) != 0) {
                this.f56275l = aVar.d(z9);
            }
        }

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56278n);
            int i4 = this.f56272i ? this.f56271h | 1024 : this.f56271h & (-1025);
            this.f56271h = i4;
            aVar.v(i4);
            aVar.v(this.f56268e);
            if ((this.f56271h & 1) != 0) {
                aVar.x(this.f56273j);
            }
            if ((this.f56271h & 2) != 0) {
                aVar.x(this.f56274k);
            }
            if ((this.f56271h & 4) != 0) {
                aVar.p(this.f56275l);
            }
        }
    }

    /* compiled from: DocumentAttribute.java */
    /* renamed from: com.tangxiaolv.telegramgallery.TL.c$c  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0483c extends b {

        /* renamed from: o  reason: collision with root package name */
        public static int f56279o = -556656416;

        @Override // com.tangxiaolv.telegramgallery.TL.c.b, com.tangxiaolv.telegramgallery.TL.m
        public void d(com.tangxiaolv.telegramgallery.TL.a aVar, boolean z9) {
            this.f56268e = aVar.i(z9);
            this.f56273j = aVar.k(z9);
            this.f56274k = aVar.k(z9);
        }

        @Override // com.tangxiaolv.telegramgallery.TL.c.b, com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56279o);
            aVar.v(this.f56268e);
            aVar.x(this.f56273j);
            aVar.x(this.f56274k);
        }
    }

    /* compiled from: DocumentAttribute.java */
    /* loaded from: classes3.dex */
    public static class d extends b {

        /* renamed from: o  reason: collision with root package name */
        public static int f56280o = 85215461;

        @Override // com.tangxiaolv.telegramgallery.TL.c.b, com.tangxiaolv.telegramgallery.TL.m
        public void d(com.tangxiaolv.telegramgallery.TL.a aVar, boolean z9) {
            this.f56268e = aVar.i(z9);
        }

        @Override // com.tangxiaolv.telegramgallery.TL.c.b, com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56280o);
            aVar.v(this.f56268e);
        }
    }

    /* compiled from: DocumentAttribute.java */
    /* loaded from: classes3.dex */
    public static class e extends c {

        /* renamed from: n  reason: collision with root package name */
        public static int f56281n = 358154344;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void d(com.tangxiaolv.telegramgallery.TL.a aVar, boolean z9) {
            this.f56276m = aVar.k(z9);
        }

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56281n);
            aVar.x(this.f56276m);
        }
    }

    /* compiled from: DocumentAttribute.java */
    /* loaded from: classes3.dex */
    public static class f extends c {

        /* renamed from: n  reason: collision with root package name */
        public static int f56282n = 1815593308;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void d(com.tangxiaolv.telegramgallery.TL.a aVar, boolean z9) {
            this.f56266c = aVar.i(z9);
            this.f56267d = aVar.i(z9);
        }

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56282n);
            aVar.v(this.f56266c);
            aVar.v(this.f56267d);
        }
    }

    /* compiled from: DocumentAttribute.java */
    /* loaded from: classes3.dex */
    public static class g extends c {

        /* renamed from: n  reason: collision with root package name */
        public static int f56283n = 978674434;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void d(com.tangxiaolv.telegramgallery.TL.a aVar, boolean z9) {
            this.f56269f = aVar.k(z9);
            this.f56270g = com.tangxiaolv.telegramgallery.TL.i.f(aVar, aVar.i(z9), z9);
        }

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56283n);
            aVar.x(this.f56269f);
            this.f56270g.e(aVar);
        }
    }

    /* compiled from: DocumentAttribute.java */
    /* loaded from: classes3.dex */
    public static class h extends g {

        /* renamed from: o  reason: collision with root package name */
        public static int f56284o = -1723033470;

        @Override // com.tangxiaolv.telegramgallery.TL.c.g, com.tangxiaolv.telegramgallery.TL.m
        public void d(com.tangxiaolv.telegramgallery.TL.a aVar, boolean z9) {
            this.f56269f = aVar.k(z9);
        }

        @Override // com.tangxiaolv.telegramgallery.TL.c.g, com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56284o);
            aVar.x(this.f56269f);
        }
    }

    /* compiled from: DocumentAttribute.java */
    /* loaded from: classes3.dex */
    public static class i extends g {

        /* renamed from: o  reason: collision with root package name */
        public static int f56285o = -83208409;

        @Override // com.tangxiaolv.telegramgallery.TL.c.g, com.tangxiaolv.telegramgallery.TL.m
        public void d(com.tangxiaolv.telegramgallery.TL.a aVar, boolean z9) {
        }

        @Override // com.tangxiaolv.telegramgallery.TL.c.g, com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56285o);
        }
    }

    /* compiled from: DocumentAttribute.java */
    /* loaded from: classes3.dex */
    public static class j extends c {

        /* renamed from: n  reason: collision with root package name */
        public static int f56286n = 1494273227;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void d(com.tangxiaolv.telegramgallery.TL.a aVar, boolean z9) {
            this.f56268e = aVar.i(z9);
            this.f56266c = aVar.i(z9);
            this.f56267d = aVar.i(z9);
        }

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56286n);
            aVar.v(this.f56268e);
            aVar.v(this.f56266c);
            aVar.v(this.f56267d);
        }
    }

    public static c f(com.tangxiaolv.telegramgallery.TL.a aVar, int i4, boolean z9) {
        c bVar;
        switch (i4) {
            case -1739392570:
                bVar = new b();
                break;
            case -1723033470:
                bVar = new h();
                break;
            case -556656416:
                bVar = new C0483c();
                break;
            case -83208409:
                bVar = new i();
                break;
            case 85215461:
                bVar = new d();
                break;
            case 297109817:
                bVar = new a();
                break;
            case 358154344:
                bVar = new e();
                break;
            case 978674434:
                bVar = new g();
                break;
            case 1494273227:
                bVar = new j();
                break;
            case 1815593308:
                bVar = new f();
                break;
            default:
                bVar = null;
                break;
        }
        if (bVar == null && z9) {
            throw new RuntimeException(String.format("can't parse magic %x in DocumentAttribute", Integer.valueOf(i4)));
        }
        if (bVar != null) {
            bVar.d(aVar, z9);
        }
        return bVar;
    }
}

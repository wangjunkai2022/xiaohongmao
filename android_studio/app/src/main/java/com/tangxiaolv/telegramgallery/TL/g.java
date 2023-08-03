package com.tangxiaolv.telegramgallery.TL;

/* compiled from: InputFile.java */
/* loaded from: classes3.dex */
public class g extends m {

    /* renamed from: c  reason: collision with root package name */
    public long f56309c;

    /* renamed from: d  reason: collision with root package name */
    public int f56310d;

    /* renamed from: e  reason: collision with root package name */
    public String f56311e;

    /* renamed from: f  reason: collision with root package name */
    public String f56312f;

    /* compiled from: InputFile.java */
    /* loaded from: classes3.dex */
    public static class a extends g {

        /* renamed from: g  reason: collision with root package name */
        public static int f56313g = -181407105;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void d(com.tangxiaolv.telegramgallery.TL.a aVar, boolean z9) {
            this.f56309c = aVar.j(z9);
            this.f56310d = aVar.i(z9);
            this.f56311e = aVar.k(z9);
            this.f56312f = aVar.k(z9);
        }

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56313g);
            aVar.w(this.f56309c);
            aVar.v(this.f56310d);
            aVar.x(this.f56311e);
            aVar.x(this.f56312f);
        }
    }

    /* compiled from: InputFile.java */
    /* loaded from: classes3.dex */
    public static class b extends g {

        /* renamed from: g  reason: collision with root package name */
        public static int f56314g = -95482955;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void d(com.tangxiaolv.telegramgallery.TL.a aVar, boolean z9) {
            this.f56309c = aVar.j(z9);
            this.f56310d = aVar.i(z9);
            this.f56311e = aVar.k(z9);
        }

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56314g);
            aVar.w(this.f56309c);
            aVar.v(this.f56310d);
            aVar.x(this.f56311e);
        }
    }

    public static g f(com.tangxiaolv.telegramgallery.TL.a aVar, int i4, boolean z9) {
        g aVar2;
        if (i4 != -181407105) {
            aVar2 = i4 != -95482955 ? null : new b();
        } else {
            aVar2 = new a();
        }
        if (aVar2 == null && z9) {
            throw new RuntimeException(String.format("can't parse magic %x in InputFile", Integer.valueOf(i4)));
        }
        if (aVar2 != null) {
            aVar2.d(aVar, z9);
        }
        return aVar2;
    }
}

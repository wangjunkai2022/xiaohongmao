package com.tangxiaolv.telegramgallery.TL;

/* compiled from: InputStickerSet.java */
/* loaded from: classes3.dex */
public class i extends m {

    /* renamed from: c  reason: collision with root package name */
    public long f56323c;

    /* renamed from: d  reason: collision with root package name */
    public long f56324d;

    /* renamed from: e  reason: collision with root package name */
    public String f56325e;

    /* compiled from: InputStickerSet.java */
    /* loaded from: classes3.dex */
    public static class a extends i {

        /* renamed from: f  reason: collision with root package name */
        public static int f56326f = -4838507;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56326f);
        }
    }

    /* compiled from: InputStickerSet.java */
    /* loaded from: classes3.dex */
    public static class b extends i {

        /* renamed from: f  reason: collision with root package name */
        public static int f56327f = -1645763991;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void d(com.tangxiaolv.telegramgallery.TL.a aVar, boolean z9) {
            this.f56323c = aVar.j(z9);
            this.f56324d = aVar.j(z9);
        }

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56327f);
            aVar.w(this.f56323c);
            aVar.w(this.f56324d);
        }
    }

    /* compiled from: InputStickerSet.java */
    /* loaded from: classes3.dex */
    public static class c extends i {

        /* renamed from: f  reason: collision with root package name */
        public static int f56328f = -2044933984;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void d(com.tangxiaolv.telegramgallery.TL.a aVar, boolean z9) {
            this.f56325e = aVar.k(z9);
        }

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56328f);
            aVar.x(this.f56325e);
        }
    }

    public static i f(com.tangxiaolv.telegramgallery.TL.a aVar, int i4, boolean z9) {
        i cVar;
        if (i4 == -2044933984) {
            cVar = new c();
        } else if (i4 != -1645763991) {
            cVar = i4 != -4838507 ? null : new a();
        } else {
            cVar = new b();
        }
        if (cVar == null && z9) {
            throw new RuntimeException(String.format("can't parse magic %x in InputStickerSet", Integer.valueOf(i4)));
        }
        if (cVar != null) {
            cVar.d(aVar, z9);
        }
        return cVar;
    }
}

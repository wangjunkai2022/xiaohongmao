package com.tangxiaolv.telegramgallery.TL;

/* compiled from: GeoPoint.java */
/* loaded from: classes3.dex */
public class e extends m {

    /* renamed from: c  reason: collision with root package name */
    public double f56296c;

    /* renamed from: d  reason: collision with root package name */
    public double f56297d;

    /* compiled from: GeoPoint.java */
    /* loaded from: classes3.dex */
    public static class a extends e {

        /* renamed from: e  reason: collision with root package name */
        public static int f56298e = 541710092;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void d(com.tangxiaolv.telegramgallery.TL.a aVar, boolean z9) {
            this.f56296c = aVar.h(z9);
            this.f56297d = aVar.h(z9);
        }

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56298e);
            aVar.u(this.f56296c);
            aVar.u(this.f56297d);
        }
    }

    /* compiled from: GeoPoint.java */
    /* loaded from: classes3.dex */
    public static class b extends e {

        /* renamed from: e  reason: collision with root package name */
        public static int f56299e = 286776671;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56299e);
        }
    }

    public static e f(com.tangxiaolv.telegramgallery.TL.a aVar, int i4, boolean z9) {
        e bVar;
        if (i4 != 286776671) {
            bVar = i4 != 541710092 ? null : new a();
        } else {
            bVar = new b();
        }
        if (bVar == null && z9) {
            throw new RuntimeException(String.format("can't parse magic %x in GeoPoint", Integer.valueOf(i4)));
        }
        if (bVar != null) {
            bVar.d(aVar, z9);
        }
        return bVar;
    }
}

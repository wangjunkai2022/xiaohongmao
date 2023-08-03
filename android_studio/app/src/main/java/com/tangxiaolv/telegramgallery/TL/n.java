package com.tangxiaolv.telegramgallery.TL;

/* compiled from: TL_upload_file.java */
/* loaded from: classes3.dex */
public class n extends m {

    /* renamed from: f  reason: collision with root package name */
    public static int f56358f = 157948117;

    /* renamed from: c  reason: collision with root package name */
    public o f56359c;

    /* renamed from: d  reason: collision with root package name */
    public int f56360d;

    /* renamed from: e  reason: collision with root package name */
    public j f56361e;

    public static n f(a aVar, int i4, boolean z9) {
        if (f56358f != i4) {
            if (z9) {
                throw new RuntimeException(String.format("can't parse magic %x in TL_upload_file", Integer.valueOf(i4)));
            }
            return null;
        }
        n nVar = new n();
        nVar.d(aVar, z9);
        return nVar;
    }

    @Override // com.tangxiaolv.telegramgallery.TL.m
    public void b() {
        j jVar;
        if (this.f56357a || (jVar = this.f56361e) == null) {
            return;
        }
        jVar.H();
        this.f56361e = null;
    }

    @Override // com.tangxiaolv.telegramgallery.TL.m
    public void d(a aVar, boolean z9) {
        this.f56359c = o.f(aVar, aVar.i(z9), z9);
        this.f56360d = aVar.i(z9);
        this.f56361e = aVar.e(z9);
    }
}

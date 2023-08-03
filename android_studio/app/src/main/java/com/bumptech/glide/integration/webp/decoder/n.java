package com.bumptech.glide.integration.webp.decoder;

import android.content.Context;
import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.u;
import java.security.MessageDigest;

/* compiled from: WebpDrawableTransformation.java */
/* loaded from: classes.dex */
public class n implements com.bumptech.glide.load.i<k> {

    /* renamed from: c  reason: collision with root package name */
    private final com.bumptech.glide.load.i<Bitmap> f8446c;

    public n(com.bumptech.glide.load.i<Bitmap> iVar) {
        this.f8446c = (com.bumptech.glide.load.i) com.bumptech.glide.util.m.d(iVar);
    }

    @Override // com.bumptech.glide.load.i
    public u<k> a(Context context, u<k> uVar, int i4, int i10) {
        k kVar = uVar.get();
        u<Bitmap> gVar = new com.bumptech.glide.load.resource.bitmap.g(kVar.e(), com.bumptech.glide.c.e(context).h());
        u<Bitmap> a10 = this.f8446c.a(context, gVar, i4, i10);
        if (!gVar.equals(a10)) {
            gVar.recycle();
        }
        kVar.q(this.f8446c, a10.get());
        return uVar;
    }

    @Override // com.bumptech.glide.load.c
    public void b(MessageDigest messageDigest) {
        this.f8446c.b(messageDigest);
    }

    @Override // com.bumptech.glide.load.c
    public boolean equals(Object obj) {
        if (obj instanceof n) {
            return this.f8446c.equals(((n) obj).f8446c);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.c
    public int hashCode() {
        return this.f8446c.hashCode();
    }
}

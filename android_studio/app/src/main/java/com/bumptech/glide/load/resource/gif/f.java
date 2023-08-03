package com.bumptech.glide.load.resource.gif;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.u;
import com.bumptech.glide.util.m;
import java.security.MessageDigest;

/* compiled from: GifDrawableTransformation.java */
/* loaded from: classes.dex */
public class f implements com.bumptech.glide.load.i<c> {

    /* renamed from: c  reason: collision with root package name */
    private final com.bumptech.glide.load.i<Bitmap> f9379c;

    public f(com.bumptech.glide.load.i<Bitmap> iVar) {
        this.f9379c = (com.bumptech.glide.load.i) m.d(iVar);
    }

    @Override // com.bumptech.glide.load.i
    @NonNull
    public u<c> a(@NonNull Context context, @NonNull u<c> uVar, int i4, int i10) {
        c cVar = uVar.get();
        u<Bitmap> gVar = new com.bumptech.glide.load.resource.bitmap.g(cVar.e(), com.bumptech.glide.c.e(context).h());
        u<Bitmap> a10 = this.f9379c.a(context, gVar, i4, i10);
        if (!gVar.equals(a10)) {
            gVar.recycle();
        }
        cVar.o(this.f9379c, a10.get());
        return uVar;
    }

    @Override // com.bumptech.glide.load.c
    public void b(@NonNull MessageDigest messageDigest) {
        this.f9379c.b(messageDigest);
    }

    @Override // com.bumptech.glide.load.c
    public boolean equals(Object obj) {
        if (obj instanceof f) {
            return this.f9379c.equals(((f) obj).f9379c);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.c
    public int hashCode() {
        return this.f9379c.hashCode();
    }
}

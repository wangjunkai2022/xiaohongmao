package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import java.security.MessageDigest;

/* compiled from: DrawableTransformation.java */
/* loaded from: classes.dex */
public class q implements com.bumptech.glide.load.i<Drawable> {

    /* renamed from: c  reason: collision with root package name */
    private final com.bumptech.glide.load.i<Bitmap> f9280c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f9281d;

    public q(com.bumptech.glide.load.i<Bitmap> iVar, boolean z9) {
        this.f9280c = iVar;
        this.f9281d = z9;
    }

    private com.bumptech.glide.load.engine.u<Drawable> d(Context context, com.bumptech.glide.load.engine.u<Bitmap> uVar) {
        return x.c(context.getResources(), uVar);
    }

    @Override // com.bumptech.glide.load.i
    @NonNull
    public com.bumptech.glide.load.engine.u<Drawable> a(@NonNull Context context, @NonNull com.bumptech.glide.load.engine.u<Drawable> uVar, int i4, int i10) {
        com.bumptech.glide.load.engine.bitmap_recycle.e h4 = com.bumptech.glide.c.e(context).h();
        Drawable drawable = uVar.get();
        com.bumptech.glide.load.engine.u<Bitmap> a10 = p.a(h4, drawable, i4, i10);
        if (a10 == null) {
            if (this.f9281d) {
                throw new IllegalArgumentException("Unable to convert " + drawable + " to a Bitmap");
            }
            return uVar;
        }
        com.bumptech.glide.load.engine.u<Bitmap> a11 = this.f9280c.a(context, a10, i4, i10);
        if (a11.equals(a10)) {
            a11.recycle();
            return uVar;
        }
        return d(context, a11);
    }

    @Override // com.bumptech.glide.load.c
    public void b(@NonNull MessageDigest messageDigest) {
        this.f9280c.b(messageDigest);
    }

    public com.bumptech.glide.load.i<BitmapDrawable> c() {
        return this;
    }

    @Override // com.bumptech.glide.load.c
    public boolean equals(Object obj) {
        if (obj instanceof q) {
            return this.f9280c.equals(((q) obj).f9280c);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.c
    public int hashCode() {
        return this.f9280c.hashCode();
    }
}

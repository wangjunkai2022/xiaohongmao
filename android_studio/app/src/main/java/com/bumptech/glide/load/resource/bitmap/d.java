package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import java.security.MessageDigest;

/* compiled from: BitmapDrawableTransformation.java */
@Deprecated
/* loaded from: classes.dex */
public class d implements com.bumptech.glide.load.i<BitmapDrawable> {

    /* renamed from: c  reason: collision with root package name */
    private final com.bumptech.glide.load.i<Drawable> f9211c;

    public d(com.bumptech.glide.load.i<Bitmap> iVar) {
        this.f9211c = (com.bumptech.glide.load.i) com.bumptech.glide.util.m.d(new q(iVar, false));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static com.bumptech.glide.load.engine.u<BitmapDrawable> c(com.bumptech.glide.load.engine.u<Drawable> uVar) {
        if (uVar.get() instanceof BitmapDrawable) {
            return uVar;
        }
        throw new IllegalArgumentException("Wrapped transformation unexpectedly returned a non BitmapDrawable resource: " + uVar.get());
    }

    private static com.bumptech.glide.load.engine.u<Drawable> d(com.bumptech.glide.load.engine.u<BitmapDrawable> uVar) {
        return uVar;
    }

    @Override // com.bumptech.glide.load.i
    @NonNull
    public com.bumptech.glide.load.engine.u<BitmapDrawable> a(@NonNull Context context, @NonNull com.bumptech.glide.load.engine.u<BitmapDrawable> uVar, int i4, int i10) {
        return c(this.f9211c.a(context, d(uVar), i4, i10));
    }

    @Override // com.bumptech.glide.load.c
    public void b(@NonNull MessageDigest messageDigest) {
        this.f9211c.b(messageDigest);
    }

    @Override // com.bumptech.glide.load.c
    public boolean equals(Object obj) {
        if (obj instanceof d) {
            return this.f9211c.equals(((d) obj).f9211c);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.c
    public int hashCode() {
        return this.f9211c.hashCode();
    }
}

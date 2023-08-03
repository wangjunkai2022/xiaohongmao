package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: LazyBitmapDrawableResource.java */
/* loaded from: classes.dex */
public final class x implements com.bumptech.glide.load.engine.u<BitmapDrawable>, com.bumptech.glide.load.engine.q {

    /* renamed from: a  reason: collision with root package name */
    private final Resources f9324a;

    /* renamed from: b  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.u<Bitmap> f9325b;

    private x(@NonNull Resources resources, @NonNull com.bumptech.glide.load.engine.u<Bitmap> uVar) {
        this.f9324a = (Resources) com.bumptech.glide.util.m.d(resources);
        this.f9325b = (com.bumptech.glide.load.engine.u) com.bumptech.glide.util.m.d(uVar);
    }

    @Nullable
    public static com.bumptech.glide.load.engine.u<BitmapDrawable> c(@NonNull Resources resources, @Nullable com.bumptech.glide.load.engine.u<Bitmap> uVar) {
        if (uVar == null) {
            return null;
        }
        return new x(resources, uVar);
    }

    @Deprecated
    public static x d(Context context, Bitmap bitmap) {
        return (x) c(context.getResources(), g.c(bitmap, com.bumptech.glide.c.e(context).h()));
    }

    @Deprecated
    public static x e(Resources resources, com.bumptech.glide.load.engine.bitmap_recycle.e eVar, Bitmap bitmap) {
        return (x) c(resources, g.c(bitmap, eVar));
    }

    @Override // com.bumptech.glide.load.engine.u
    @NonNull
    public Class<BitmapDrawable> a() {
        return BitmapDrawable.class;
    }

    @Override // com.bumptech.glide.load.engine.u
    @NonNull
    /* renamed from: b */
    public BitmapDrawable get() {
        return new BitmapDrawable(this.f9324a, this.f9325b.get());
    }

    @Override // com.bumptech.glide.load.engine.u
    public int getSize() {
        return this.f9325b.getSize();
    }

    @Override // com.bumptech.glide.load.engine.q
    public void initialize() {
        com.bumptech.glide.load.engine.u<Bitmap> uVar = this.f9325b;
        if (uVar instanceof com.bumptech.glide.load.engine.q) {
            ((com.bumptech.glide.load.engine.q) uVar).initialize();
        }
    }

    @Override // com.bumptech.glide.load.engine.u
    public void recycle() {
        this.f9325b.recycle();
    }
}

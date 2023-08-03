package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: BitmapResource.java */
/* loaded from: classes.dex */
public class g implements com.bumptech.glide.load.engine.u<Bitmap>, com.bumptech.glide.load.engine.q {

    /* renamed from: a  reason: collision with root package name */
    private final Bitmap f9236a;

    /* renamed from: b  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.bitmap_recycle.e f9237b;

    public g(@NonNull Bitmap bitmap, @NonNull com.bumptech.glide.load.engine.bitmap_recycle.e eVar) {
        this.f9236a = (Bitmap) com.bumptech.glide.util.m.e(bitmap, "Bitmap must not be null");
        this.f9237b = (com.bumptech.glide.load.engine.bitmap_recycle.e) com.bumptech.glide.util.m.e(eVar, "BitmapPool must not be null");
    }

    @Nullable
    public static g c(@Nullable Bitmap bitmap, @NonNull com.bumptech.glide.load.engine.bitmap_recycle.e eVar) {
        if (bitmap == null) {
            return null;
        }
        return new g(bitmap, eVar);
    }

    @Override // com.bumptech.glide.load.engine.u
    @NonNull
    public Class<Bitmap> a() {
        return Bitmap.class;
    }

    @Override // com.bumptech.glide.load.engine.u
    @NonNull
    /* renamed from: b */
    public Bitmap get() {
        return this.f9236a;
    }

    @Override // com.bumptech.glide.load.engine.u
    public int getSize() {
        return com.bumptech.glide.util.o.h(this.f9236a);
    }

    @Override // com.bumptech.glide.load.engine.q
    public void initialize() {
        this.f9236a.prepareToDraw();
    }

    @Override // com.bumptech.glide.load.engine.u
    public void recycle() {
        this.f9237b.d(this.f9236a);
    }
}

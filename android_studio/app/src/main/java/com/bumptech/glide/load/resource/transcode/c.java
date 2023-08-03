package com.bumptech.glide.load.resource.transcode;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.u;

/* compiled from: DrawableBytesTranscoder.java */
/* loaded from: classes.dex */
public final class c implements e<Drawable, byte[]> {

    /* renamed from: a  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.bitmap_recycle.e f9416a;

    /* renamed from: b  reason: collision with root package name */
    private final e<Bitmap, byte[]> f9417b;

    /* renamed from: c  reason: collision with root package name */
    private final e<com.bumptech.glide.load.resource.gif.c, byte[]> f9418c;

    public c(@NonNull com.bumptech.glide.load.engine.bitmap_recycle.e eVar, @NonNull e<Bitmap, byte[]> eVar2, @NonNull e<com.bumptech.glide.load.resource.gif.c, byte[]> eVar3) {
        this.f9416a = eVar;
        this.f9417b = eVar2;
        this.f9418c = eVar3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    private static u<com.bumptech.glide.load.resource.gif.c> b(@NonNull u<Drawable> uVar) {
        return uVar;
    }

    @Override // com.bumptech.glide.load.resource.transcode.e
    @Nullable
    public u<byte[]> a(@NonNull u<Drawable> uVar, @NonNull com.bumptech.glide.load.f fVar) {
        Drawable drawable = uVar.get();
        if (drawable instanceof BitmapDrawable) {
            return this.f9417b.a(com.bumptech.glide.load.resource.bitmap.g.c(((BitmapDrawable) drawable).getBitmap(), this.f9416a), fVar);
        }
        if (drawable instanceof com.bumptech.glide.load.resource.gif.c) {
            return this.f9418c.a(b(uVar), fVar);
        }
        return null;
    }
}

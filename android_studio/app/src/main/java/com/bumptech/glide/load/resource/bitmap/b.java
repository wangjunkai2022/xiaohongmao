package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.EncodeStrategy;
import java.io.File;

/* compiled from: BitmapDrawableEncoder.java */
/* loaded from: classes.dex */
public class b implements com.bumptech.glide.load.h<BitmapDrawable> {

    /* renamed from: a  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.bitmap_recycle.e f9202a;

    /* renamed from: b  reason: collision with root package name */
    private final com.bumptech.glide.load.h<Bitmap> f9203b;

    public b(com.bumptech.glide.load.engine.bitmap_recycle.e eVar, com.bumptech.glide.load.h<Bitmap> hVar) {
        this.f9202a = eVar;
        this.f9203b = hVar;
    }

    @Override // com.bumptech.glide.load.h
    @NonNull
    public EncodeStrategy b(@NonNull com.bumptech.glide.load.f fVar) {
        return this.f9203b.b(fVar);
    }

    @Override // com.bumptech.glide.load.a
    /* renamed from: c */
    public boolean a(@NonNull com.bumptech.glide.load.engine.u<BitmapDrawable> uVar, @NonNull File file, @NonNull com.bumptech.glide.load.f fVar) {
        return this.f9203b.a(new g(uVar.get().getBitmap(), this.f9202a), file, fVar);
    }
}

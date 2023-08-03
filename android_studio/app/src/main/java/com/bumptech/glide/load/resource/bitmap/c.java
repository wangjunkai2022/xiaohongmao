package com.bumptech.glide.load.resource.bitmap;

import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;

/* compiled from: BitmapDrawableResource.java */
/* loaded from: classes.dex */
public class c extends com.bumptech.glide.load.resource.drawable.c<BitmapDrawable> implements com.bumptech.glide.load.engine.q {

    /* renamed from: b  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.bitmap_recycle.e f9207b;

    public c(BitmapDrawable bitmapDrawable, com.bumptech.glide.load.engine.bitmap_recycle.e eVar) {
        super(bitmapDrawable);
        this.f9207b = eVar;
    }

    @Override // com.bumptech.glide.load.engine.u
    @NonNull
    public Class<BitmapDrawable> a() {
        return BitmapDrawable.class;
    }

    @Override // com.bumptech.glide.load.engine.u
    public int getSize() {
        return com.bumptech.glide.util.o.h(((BitmapDrawable) this.f9343a).getBitmap());
    }

    @Override // com.bumptech.glide.load.resource.drawable.c, com.bumptech.glide.load.engine.q
    public void initialize() {
        ((BitmapDrawable) this.f9343a).getBitmap().prepareToDraw();
    }

    @Override // com.bumptech.glide.load.engine.u
    public void recycle() {
        this.f9207b.d(((BitmapDrawable) this.f9343a).getBitmap());
    }
}

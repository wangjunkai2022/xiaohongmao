package com.bumptech.glide.load.resource.gif;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.u;

/* compiled from: GifFrameResourceDecoder.java */
/* loaded from: classes.dex */
public final class h implements com.bumptech.glide.load.g<com.bumptech.glide.gifdecoder.a, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.bitmap_recycle.e f9406a;

    public h(com.bumptech.glide.load.engine.bitmap_recycle.e eVar) {
        this.f9406a = eVar;
    }

    @Override // com.bumptech.glide.load.g
    /* renamed from: c */
    public u<Bitmap> b(@NonNull com.bumptech.glide.gifdecoder.a aVar, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar) {
        return com.bumptech.glide.load.resource.bitmap.g.c(aVar.e(), this.f9406a);
    }

    @Override // com.bumptech.glide.load.g
    /* renamed from: d */
    public boolean a(@NonNull com.bumptech.glide.gifdecoder.a aVar, @NonNull com.bumptech.glide.load.f fVar) {
        return true;
    }
}

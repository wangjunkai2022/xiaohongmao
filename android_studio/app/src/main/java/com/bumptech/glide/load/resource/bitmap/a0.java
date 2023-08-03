package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: ResourceBitmapDecoder.java */
/* loaded from: classes.dex */
public class a0 implements com.bumptech.glide.load.g<Uri, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final com.bumptech.glide.load.resource.drawable.f f9200a;

    /* renamed from: b  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.bitmap_recycle.e f9201b;

    public a0(com.bumptech.glide.load.resource.drawable.f fVar, com.bumptech.glide.load.engine.bitmap_recycle.e eVar) {
        this.f9200a = fVar;
        this.f9201b = eVar;
    }

    @Override // com.bumptech.glide.load.g
    @Nullable
    /* renamed from: c */
    public com.bumptech.glide.load.engine.u<Bitmap> b(@NonNull Uri uri, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar) {
        com.bumptech.glide.load.engine.u<Drawable> b10 = this.f9200a.b(uri, i4, i10, fVar);
        if (b10 == null) {
            return null;
        }
        return p.a(this.f9201b, b10.get(), i4, i10);
    }

    @Override // com.bumptech.glide.load.g
    /* renamed from: d */
    public boolean a(@NonNull Uri uri, @NonNull com.bumptech.glide.load.f fVar) {
        return com.facebook.common.util.f.f11058h.equals(uri.getScheme());
    }
}

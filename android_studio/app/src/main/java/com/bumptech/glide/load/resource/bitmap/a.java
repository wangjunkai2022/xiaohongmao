package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;
import java.io.IOException;

/* compiled from: BitmapDrawableDecoder.java */
/* loaded from: classes.dex */
public class a<DataType> implements com.bumptech.glide.load.g<DataType, BitmapDrawable> {

    /* renamed from: a  reason: collision with root package name */
    private final com.bumptech.glide.load.g<DataType, Bitmap> f9198a;

    /* renamed from: b  reason: collision with root package name */
    private final Resources f9199b;

    public a(Context context, com.bumptech.glide.load.g<DataType, Bitmap> gVar) {
        this(context.getResources(), gVar);
    }

    @Override // com.bumptech.glide.load.g
    public boolean a(@NonNull DataType datatype, @NonNull com.bumptech.glide.load.f fVar) throws IOException {
        return this.f9198a.a(datatype, fVar);
    }

    @Override // com.bumptech.glide.load.g
    public com.bumptech.glide.load.engine.u<BitmapDrawable> b(@NonNull DataType datatype, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar) throws IOException {
        return x.c(this.f9199b, this.f9198a.b(datatype, i4, i10, fVar));
    }

    @Deprecated
    public a(Resources resources, com.bumptech.glide.load.engine.bitmap_recycle.e eVar, com.bumptech.glide.load.g<DataType, Bitmap> gVar) {
        this(resources, gVar);
    }

    public a(@NonNull Resources resources, @NonNull com.bumptech.glide.load.g<DataType, Bitmap> gVar) {
        this.f9199b = (Resources) com.bumptech.glide.util.m.d(resources);
        this.f9198a = (com.bumptech.glide.load.g) com.bumptech.glide.util.m.d(gVar);
    }
}

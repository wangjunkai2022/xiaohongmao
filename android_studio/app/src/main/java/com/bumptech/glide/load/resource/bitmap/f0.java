package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;

/* compiled from: UnitBitmapDecoder.java */
/* loaded from: classes.dex */
public final class f0 implements com.bumptech.glide.load.g<Bitmap, Bitmap> {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: UnitBitmapDecoder.java */
    /* loaded from: classes.dex */
    public static final class a implements com.bumptech.glide.load.engine.u<Bitmap> {

        /* renamed from: a  reason: collision with root package name */
        private final Bitmap f9235a;

        a(@NonNull Bitmap bitmap) {
            this.f9235a = bitmap;
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
            return this.f9235a;
        }

        @Override // com.bumptech.glide.load.engine.u
        public int getSize() {
            return com.bumptech.glide.util.o.h(this.f9235a);
        }

        @Override // com.bumptech.glide.load.engine.u
        public void recycle() {
        }
    }

    @Override // com.bumptech.glide.load.g
    /* renamed from: c */
    public com.bumptech.glide.load.engine.u<Bitmap> b(@NonNull Bitmap bitmap, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar) {
        return new a(bitmap);
    }

    @Override // com.bumptech.glide.load.g
    /* renamed from: d */
    public boolean a(@NonNull Bitmap bitmap, @NonNull com.bumptech.glide.load.f fVar) {
        return true;
    }
}

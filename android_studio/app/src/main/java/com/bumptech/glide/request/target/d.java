package com.bumptech.glide.request.target;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;

/* compiled from: BitmapThumbnailImageViewTarget.java */
/* loaded from: classes.dex */
public class d extends q<Bitmap> {
    public d(ImageView imageView) {
        super(imageView);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bumptech.glide.request.target.q
    /* renamed from: y */
    public Drawable x(Bitmap bitmap) {
        return new BitmapDrawable(((ImageView) this.f9647b).getResources(), bitmap);
    }

    @Deprecated
    public d(ImageView imageView, boolean z9) {
        super(imageView, z9);
    }
}

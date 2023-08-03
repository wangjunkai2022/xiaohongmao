package com.bumptech.glide.request.target;

import android.graphics.Bitmap;
import android.widget.ImageView;

/* compiled from: BitmapImageViewTarget.java */
/* loaded from: classes.dex */
public class c extends j<Bitmap> {
    public c(ImageView imageView) {
        super(imageView);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bumptech.glide.request.target.j
    /* renamed from: x */
    public void v(Bitmap bitmap) {
        ((ImageView) this.f9647b).setImageBitmap(bitmap);
    }

    @Deprecated
    public c(ImageView imageView, boolean z9) {
        super(imageView, z9);
    }
}

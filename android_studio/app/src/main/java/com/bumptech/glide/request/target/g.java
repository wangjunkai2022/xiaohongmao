package com.bumptech.glide.request.target;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.annotation.Nullable;

/* compiled from: DrawableImageViewTarget.java */
/* loaded from: classes.dex */
public class g extends j<Drawable> {
    public g(ImageView imageView) {
        super(imageView);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bumptech.glide.request.target.j
    /* renamed from: x */
    public void v(@Nullable Drawable drawable) {
        ((ImageView) this.f9647b).setImageDrawable(drawable);
    }

    @Deprecated
    public g(ImageView imageView, boolean z9) {
        super(imageView, z9);
    }
}

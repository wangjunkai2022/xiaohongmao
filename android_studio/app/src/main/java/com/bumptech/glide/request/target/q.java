package com.bumptech.glide.request.target;

import android.graphics.drawable.Drawable;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.Nullable;

/* compiled from: ThumbnailImageViewTarget.java */
/* loaded from: classes.dex */
public abstract class q<T> extends j<T> {
    public q(ImageView imageView) {
        super(imageView);
    }

    @Override // com.bumptech.glide.request.target.j
    protected void v(@Nullable T t9) {
        ViewGroup.LayoutParams layoutParams = ((ImageView) this.f9647b).getLayoutParams();
        Drawable x9 = x(t9);
        if (layoutParams != null && layoutParams.width > 0 && layoutParams.height > 0) {
            x9 = new i(x9, layoutParams.width, layoutParams.height);
        }
        ((ImageView) this.f9647b).setImageDrawable(x9);
    }

    protected abstract Drawable x(T t9);

    @Deprecated
    public q(ImageView imageView, boolean z9) {
        super(imageView, z9);
    }
}

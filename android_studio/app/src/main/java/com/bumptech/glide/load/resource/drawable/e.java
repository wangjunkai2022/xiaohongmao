package com.bumptech.glide.load.resource.drawable;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.u;

/* compiled from: NonOwnedDrawableResource.java */
/* loaded from: classes.dex */
final class e extends c<Drawable> {
    private e(Drawable drawable) {
        super(drawable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static u<Drawable> c(@Nullable Drawable drawable) {
        if (drawable != null) {
            return new e(drawable);
        }
        return null;
    }

    @Override // com.bumptech.glide.load.engine.u
    @NonNull
    public Class<Drawable> a() {
        return this.f9343a.getClass();
    }

    @Override // com.bumptech.glide.load.engine.u
    public int getSize() {
        return Math.max(1, this.f9343a.getIntrinsicWidth() * this.f9343a.getIntrinsicHeight() * 4);
    }

    @Override // com.bumptech.glide.load.engine.u
    public void recycle() {
    }
}

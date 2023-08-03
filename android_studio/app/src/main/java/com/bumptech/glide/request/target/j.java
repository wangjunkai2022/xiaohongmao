package com.bumptech.glide.request.target;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.request.transition.f;

/* compiled from: ImageViewTarget.java */
/* loaded from: classes.dex */
public abstract class j<Z> extends r<ImageView, Z> implements f.a {
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private Animatable f9632j;

    public j(ImageView imageView) {
        super(imageView);
    }

    private void t(@Nullable Z z9) {
        if (z9 instanceof Animatable) {
            Animatable animatable = (Animatable) z9;
            this.f9632j = animatable;
            animatable.start();
            return;
        }
        this.f9632j = null;
    }

    private void w(@Nullable Z z9) {
        v(z9);
        t(z9);
    }

    @Override // com.bumptech.glide.request.transition.f.a
    public void b(Drawable drawable) {
        ((ImageView) this.f9647b).setImageDrawable(drawable);
    }

    @Override // com.bumptech.glide.request.transition.f.a
    @Nullable
    public Drawable c() {
        return ((ImageView) this.f9647b).getDrawable();
    }

    @Override // com.bumptech.glide.request.target.r, com.bumptech.glide.request.target.b, com.bumptech.glide.request.target.p
    public void j(@Nullable Drawable drawable) {
        super.j(drawable);
        w(null);
        b(drawable);
    }

    @Override // com.bumptech.glide.request.target.r, com.bumptech.glide.request.target.b, com.bumptech.glide.request.target.p
    public void k(@Nullable Drawable drawable) {
        super.k(drawable);
        Animatable animatable = this.f9632j;
        if (animatable != null) {
            animatable.stop();
        }
        w(null);
        b(drawable);
    }

    @Override // com.bumptech.glide.request.target.b, com.bumptech.glide.manager.m
    public void onStart() {
        Animatable animatable = this.f9632j;
        if (animatable != null) {
            animatable.start();
        }
    }

    @Override // com.bumptech.glide.request.target.b, com.bumptech.glide.manager.m
    public void onStop() {
        Animatable animatable = this.f9632j;
        if (animatable != null) {
            animatable.stop();
        }
    }

    @Override // com.bumptech.glide.request.target.p
    public void q(@NonNull Z z9, @Nullable com.bumptech.glide.request.transition.f<? super Z> fVar) {
        if (fVar != null && fVar.a(z9, this)) {
            t(z9);
        } else {
            w(z9);
        }
    }

    @Override // com.bumptech.glide.request.target.b, com.bumptech.glide.request.target.p
    public void s(@Nullable Drawable drawable) {
        super.s(drawable);
        w(null);
        b(drawable);
    }

    protected abstract void v(@Nullable Z z9);

    @Deprecated
    public j(ImageView imageView, boolean z9) {
        super(imageView, z9);
    }
}

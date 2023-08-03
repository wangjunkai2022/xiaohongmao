package com.bumptech.glide.load.resource.drawable;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.q;
import com.bumptech.glide.load.engine.u;
import com.bumptech.glide.util.m;

/* compiled from: DrawableResource.java */
/* loaded from: classes.dex */
public abstract class c<T extends Drawable> implements u<T>, q {

    /* renamed from: a  reason: collision with root package name */
    protected final T f9343a;

    public c(T t9) {
        this.f9343a = (T) m.d(t9);
    }

    @Override // com.bumptech.glide.load.engine.u
    @NonNull
    /* renamed from: b */
    public final T get() {
        Drawable.ConstantState constantState = this.f9343a.getConstantState();
        if (constantState == null) {
            return this.f9343a;
        }
        return (T) constantState.newDrawable();
    }

    public void initialize() {
        T t9 = this.f9343a;
        if (t9 instanceof BitmapDrawable) {
            ((BitmapDrawable) t9).getBitmap().prepareToDraw();
        } else if (t9 instanceof com.bumptech.glide.load.resource.gif.c) {
            ((com.bumptech.glide.load.resource.gif.c) t9).e().prepareToDraw();
        }
    }
}

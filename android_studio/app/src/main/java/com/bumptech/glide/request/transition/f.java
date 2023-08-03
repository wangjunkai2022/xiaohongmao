package com.bumptech.glide.request.transition;

import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.Nullable;

/* compiled from: Transition.java */
/* loaded from: classes.dex */
public interface f<R> {

    /* compiled from: Transition.java */
    /* loaded from: classes.dex */
    public interface a {
        void b(Drawable drawable);

        @Nullable
        Drawable c();

        View getView();
    }

    boolean a(R r9, a aVar);
}

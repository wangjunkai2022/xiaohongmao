package com.bumptech.glide.request.transition;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import com.bumptech.glide.request.transition.f;

/* compiled from: DrawableCrossFadeTransition.java */
/* loaded from: classes.dex */
public class d implements f<Drawable> {

    /* renamed from: a  reason: collision with root package name */
    private final int f9669a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f9670b;

    public d(int i4, boolean z9) {
        this.f9669a = i4;
        this.f9670b = z9;
    }

    @Override // com.bumptech.glide.request.transition.f
    /* renamed from: b */
    public boolean a(Drawable drawable, f.a aVar) {
        Drawable c10 = aVar.c();
        if (c10 == null) {
            c10 = new ColorDrawable(0);
        }
        TransitionDrawable transitionDrawable = new TransitionDrawable(new Drawable[]{c10, drawable});
        transitionDrawable.setCrossFadeEnabled(this.f9670b);
        transitionDrawable.startTransition(this.f9669a);
        aVar.b(transitionDrawable);
        return true;
    }
}

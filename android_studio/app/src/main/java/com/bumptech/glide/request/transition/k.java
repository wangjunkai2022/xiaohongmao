package com.bumptech.glide.request.transition;

import android.content.Context;
import android.view.View;
import android.view.animation.Animation;
import com.bumptech.glide.request.transition.f;

/* compiled from: ViewTransition.java */
/* loaded from: classes.dex */
public class k<R> implements f<R> {

    /* renamed from: a  reason: collision with root package name */
    private final a f9680a;

    /* compiled from: ViewTransition.java */
    /* loaded from: classes.dex */
    interface a {
        Animation a(Context context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(a aVar) {
        this.f9680a = aVar;
    }

    @Override // com.bumptech.glide.request.transition.f
    public boolean a(R r9, f.a aVar) {
        View view = aVar.getView();
        if (view != null) {
            view.clearAnimation();
            view.startAnimation(this.f9680a.a(view.getContext()));
            return false;
        }
        return false;
    }
}

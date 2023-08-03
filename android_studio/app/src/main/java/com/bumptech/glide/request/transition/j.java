package com.bumptech.glide.request.transition;

import android.view.View;
import com.bumptech.glide.request.transition.f;

/* compiled from: ViewPropertyTransition.java */
/* loaded from: classes.dex */
public class j<R> implements f<R> {

    /* renamed from: a  reason: collision with root package name */
    private final a f9679a;

    /* compiled from: ViewPropertyTransition.java */
    /* loaded from: classes.dex */
    public interface a {
        void a(View view);
    }

    public j(a aVar) {
        this.f9679a = aVar;
    }

    @Override // com.bumptech.glide.request.transition.f
    public boolean a(R r9, f.a aVar) {
        if (aVar.getView() != null) {
            this.f9679a.a(aVar.getView());
            return false;
        }
        return false;
    }
}

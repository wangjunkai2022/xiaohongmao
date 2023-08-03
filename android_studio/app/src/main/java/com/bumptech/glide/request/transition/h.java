package com.bumptech.glide.request.transition;

import android.content.Context;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.request.transition.k;

/* compiled from: ViewAnimationFactory.java */
/* loaded from: classes.dex */
public class h<R> implements g<R> {

    /* renamed from: a  reason: collision with root package name */
    private final k.a f9673a;

    /* renamed from: b  reason: collision with root package name */
    private f<R> f9674b;

    /* compiled from: ViewAnimationFactory.java */
    /* loaded from: classes.dex */
    private static class a implements k.a {

        /* renamed from: a  reason: collision with root package name */
        private final Animation f9675a;

        a(Animation animation) {
            this.f9675a = animation;
        }

        @Override // com.bumptech.glide.request.transition.k.a
        public Animation a(Context context) {
            return this.f9675a;
        }
    }

    /* compiled from: ViewAnimationFactory.java */
    /* loaded from: classes.dex */
    private static class b implements k.a {

        /* renamed from: a  reason: collision with root package name */
        private final int f9676a;

        b(int i4) {
            this.f9676a = i4;
        }

        @Override // com.bumptech.glide.request.transition.k.a
        public Animation a(Context context) {
            return AnimationUtils.loadAnimation(context, this.f9676a);
        }
    }

    public h(Animation animation) {
        this(new a(animation));
    }

    @Override // com.bumptech.glide.request.transition.g
    public f<R> a(DataSource dataSource, boolean z9) {
        if (dataSource != DataSource.MEMORY_CACHE && z9) {
            if (this.f9674b == null) {
                this.f9674b = new k(this.f9673a);
            }
            return this.f9674b;
        }
        return e.b();
    }

    public h(int i4) {
        this(new b(i4));
    }

    h(k.a aVar) {
        this.f9673a = aVar;
    }
}

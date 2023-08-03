package com.futuremind.recyclerviewfastscroll.viewprovider;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.view.View;
import androidx.annotation.AnimatorRes;
import com.hbb20.i;

/* compiled from: VisibilityAnimationManager.java */
/* loaded from: classes2.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    protected final View f16117a;

    /* renamed from: b  reason: collision with root package name */
    protected AnimatorSet f16118b;

    /* renamed from: c  reason: collision with root package name */
    protected AnimatorSet f16119c;

    /* renamed from: d  reason: collision with root package name */
    private float f16120d;

    /* renamed from: e  reason: collision with root package name */
    private float f16121e;

    /* compiled from: VisibilityAnimationManager.java */
    /* loaded from: classes2.dex */
    class a extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        boolean f16122a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ View f16123b;

        a(final View val$view) {
            this.f16123b = val$view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
            super.onAnimationCancel(animation);
            this.f16122a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            super.onAnimationEnd(animation);
            if (!this.f16122a) {
                this.f16123b.setVisibility(4);
            }
            this.f16122a = false;
        }
    }

    /* compiled from: VisibilityAnimationManager.java */
    /* loaded from: classes2.dex */
    public static abstract class b<T extends e> {

        /* renamed from: a  reason: collision with root package name */
        protected final View f16125a;

        /* renamed from: b  reason: collision with root package name */
        protected int f16126b = i.b.f37168b;

        /* renamed from: c  reason: collision with root package name */
        protected int f16127c = i.b.f37167a;

        /* renamed from: d  reason: collision with root package name */
        protected int f16128d = 1000;

        /* renamed from: e  reason: collision with root package name */
        protected float f16129e = 0.5f;

        /* renamed from: f  reason: collision with root package name */
        protected float f16130f = 0.5f;

        public b(View view) {
            this.f16125a = view;
        }

        public abstract T a();

        public b<T> b(@AnimatorRes int hideAnimatorResource) {
            this.f16127c = hideAnimatorResource;
            return this;
        }

        public b<T> c(int hideDelay) {
            this.f16128d = hideDelay;
            return this;
        }

        public b<T> d(float pivotX) {
            this.f16129e = pivotX;
            return this;
        }

        public b<T> e(float pivotY) {
            this.f16130f = pivotY;
            return this;
        }

        public b<T> f(@AnimatorRes int showAnimatorResource) {
            this.f16126b = showAnimatorResource;
            return this;
        }
    }

    /* compiled from: VisibilityAnimationManager.java */
    /* loaded from: classes2.dex */
    public static class c extends b<e> {
        public c(View view) {
            super(view);
        }

        @Override // com.futuremind.recyclerviewfastscroll.viewprovider.e.b
        public e a() {
            return new e(this.f16125a, this.f16126b, this.f16127c, this.f16129e, this.f16130f, this.f16128d);
        }
    }

    protected e(final View view, @AnimatorRes int showAnimator, @AnimatorRes int hideAnimator, float pivotXRelative, float pivotYRelative, int hideDelay) {
        this.f16117a = view;
        this.f16120d = pivotXRelative;
        this.f16121e = pivotYRelative;
        AnimatorSet animatorSet = (AnimatorSet) AnimatorInflater.loadAnimator(view.getContext(), hideAnimator);
        this.f16118b = animatorSet;
        animatorSet.setStartDelay(hideDelay);
        this.f16118b.setTarget(view);
        AnimatorSet animatorSet2 = (AnimatorSet) AnimatorInflater.loadAnimator(view.getContext(), showAnimator);
        this.f16119c = animatorSet2;
        animatorSet2.setTarget(view);
        this.f16118b.addListener(new a(view));
        c();
    }

    public void a() {
        c();
        this.f16118b.start();
    }

    public void b() {
        this.f16118b.cancel();
        if (this.f16117a.getVisibility() == 4) {
            this.f16117a.setVisibility(0);
            c();
            this.f16119c.start();
        }
    }

    protected void c() {
        View view = this.f16117a;
        view.setPivotX(this.f16120d * view.getMeasuredWidth());
        View view2 = this.f16117a;
        view2.setPivotY(this.f16121e * view2.getMeasuredHeight());
    }
}

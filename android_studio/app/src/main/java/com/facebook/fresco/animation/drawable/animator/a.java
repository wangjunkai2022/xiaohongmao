package com.facebook.fresco.animation.drawable.animator;

import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import com.facebook.infer.annotation.Nullsafe;
import r7.h;

/* compiled from: AnimatedDrawable2ValueAnimatorHelper.java */
@TargetApi(11)
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class a {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AnimatedDrawable2ValueAnimatorHelper.java */
    /* renamed from: com.facebook.fresco.animation.drawable.animator.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0094a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.facebook.fresco.animation.drawable.a f11736a;

        C0094a(final com.facebook.fresco.animation.drawable.a val$drawable) {
            this.f11736a = val$drawable;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        @TargetApi(11)
        public void onAnimationUpdate(ValueAnimator animation) {
            this.f11736a.setLevel(((Integer) animation.getAnimatedValue()).intValue());
        }
    }

    private a() {
    }

    public static ValueAnimator.AnimatorUpdateListener a(final com.facebook.fresco.animation.drawable.a drawable) {
        return new C0094a(drawable);
    }

    public static ValueAnimator b(com.facebook.fresco.animation.drawable.a animatedDrawable) {
        int g4 = animatedDrawable.g();
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(0, (int) animatedDrawable.h());
        valueAnimator.setDuration(animatedDrawable.h());
        if (g4 == 0) {
            g4 = -1;
        }
        valueAnimator.setRepeatCount(g4);
        valueAnimator.setRepeatMode(1);
        valueAnimator.setInterpolator(null);
        valueAnimator.addUpdateListener(a(animatedDrawable));
        return valueAnimator;
    }

    @h
    public static ValueAnimator c(com.facebook.fresco.animation.drawable.a animatedDrawable, int maxDurationMs) {
        ValueAnimator b10 = b(animatedDrawable);
        if (b10 == null) {
            return null;
        }
        b10.setRepeatCount((int) Math.max(maxDurationMs / animatedDrawable.h(), 1L));
        return b10;
    }
}

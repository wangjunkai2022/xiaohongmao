package com.qennnsad.aknkaksd.util.roomanim;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.didi.live.spring.R;
import java.util.Random;

/* loaded from: classes3.dex */
public class MrlLove extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private Random f54921a;

    /* renamed from: b  reason: collision with root package name */
    private int f54922b;

    /* renamed from: c  reason: collision with root package name */
    private int f54923c;

    /* renamed from: d  reason: collision with root package name */
    private int f54924d;

    /* renamed from: e  reason: collision with root package name */
    private int f54925e;

    /* renamed from: f  reason: collision with root package name */
    private RelativeLayout.LayoutParams f54926f;

    /* renamed from: g  reason: collision with root package name */
    private Drawable f54927g;

    /* renamed from: h  reason: collision with root package name */
    private Drawable f54928h;

    /* renamed from: i  reason: collision with root package name */
    private Drawable f54929i;

    /* renamed from: j  reason: collision with root package name */
    private Drawable f54930j;

    /* renamed from: k  reason: collision with root package name */
    private Drawable f54931k;

    /* renamed from: l  reason: collision with root package name */
    private Drawable f54932l;

    /* renamed from: m  reason: collision with root package name */
    private Drawable f54933m;

    /* renamed from: n  reason: collision with root package name */
    private Drawable f54934n;

    /* renamed from: o  reason: collision with root package name */
    private Drawable f54935o;

    /* renamed from: p  reason: collision with root package name */
    private Drawable f54936p;

    /* renamed from: q  reason: collision with root package name */
    private Drawable f54937q;

    /* renamed from: r  reason: collision with root package name */
    private Drawable f54938r;

    /* renamed from: s  reason: collision with root package name */
    private Drawable[] f54939s;

    /* renamed from: t  reason: collision with root package name */
    private Interpolator f54940t;

    /* renamed from: u  reason: collision with root package name */
    private Interpolator f54941u;

    /* renamed from: v  reason: collision with root package name */
    private Interpolator f54942v;

    /* renamed from: w  reason: collision with root package name */
    private Interpolator f54943w;

    /* renamed from: x  reason: collision with root package name */
    private Interpolator[] f54944x;

    /* loaded from: classes3.dex */
    private class a extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        private View f54945a;

        public a(View view) {
            this.f54945a = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            MrlLove.this.removeView(this.f54945a);
        }
    }

    /* loaded from: classes3.dex */
    public class b implements TypeEvaluator<PointF> {

        /* renamed from: a  reason: collision with root package name */
        private PointF f54947a;

        /* renamed from: b  reason: collision with root package name */
        private PointF f54948b;

        public b(PointF pointF, PointF pointF2) {
            this.f54947a = pointF;
            this.f54948b = pointF2;
        }

        @Override // android.animation.TypeEvaluator
        /* renamed from: a */
        public PointF evaluate(float f10, PointF pointF, PointF pointF2) {
            float f11 = 1.0f - f10;
            PointF pointF3 = new PointF();
            float f12 = f11 * f11 * f11;
            float f13 = 3.0f * f11;
            float f14 = f11 * f13 * f10;
            PointF pointF4 = this.f54947a;
            float f15 = (pointF.x * f12) + (pointF4.x * f14);
            float f16 = f13 * f10 * f10;
            PointF pointF5 = this.f54948b;
            float f17 = f10 * f10 * f10;
            pointF3.x = f15 + (pointF5.x * f16) + (pointF2.x * f17);
            pointF3.y = (f12 * pointF.y) + (f14 * pointF4.y) + (f16 * pointF5.y) + (f17 * pointF2.y);
            return pointF3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class c implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        private View f54950a;

        public c(View view) {
            this.f54950a = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            PointF pointF = (PointF) valueAnimator.getAnimatedValue();
            this.f54950a.setX(pointF.x);
            this.f54950a.setY(pointF.y);
            this.f54950a.setAlpha(1.0f - valueAnimator.getAnimatedFraction());
        }
    }

    public MrlLove(Context context) {
        super(context);
        this.f54921a = new Random();
        this.f54940t = new LinearInterpolator();
        this.f54941u = new AccelerateInterpolator();
        this.f54942v = new DecelerateInterpolator();
        this.f54943w = new AccelerateDecelerateInterpolator();
        g();
        f();
    }

    private Animator b(View view) {
        AnimatorSet d4 = d(view);
        ValueAnimator c10 = c(view);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playSequentially(d4);
        animatorSet.playSequentially(d4, c10);
        animatorSet.setInterpolator(this.f54944x[this.f54921a.nextInt(4)]);
        animatorSet.setTarget(view);
        return animatorSet;
    }

    private ValueAnimator c(View view) {
        ValueAnimator ofObject = ValueAnimator.ofObject(new b(e(2), e(1)), new PointF((this.f54925e - this.f54923c) / 2, 0.0f), new PointF(this.f54921a.nextInt(getWidth()), this.f54924d - this.f54922b));
        ofObject.addUpdateListener(new c(view));
        ofObject.setTarget(view);
        ofObject.setDuration(3500L);
        return ofObject;
    }

    private AnimatorSet d(View view) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, View.ALPHA, 0.2f, 1.0f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, View.SCALE_X, 0.2f, 1.0f);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(view, View.SCALE_Y, 0.2f, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(500L);
        animatorSet.setInterpolator(new LinearInterpolator());
        animatorSet.playTogether(ofFloat, ofFloat2, ofFloat3);
        animatorSet.setTarget(view);
        return animatorSet;
    }

    private PointF e(int i4) {
        PointF pointF = new PointF();
        pointF.x = this.f54921a.nextInt(this.f54925e - 100);
        pointF.y = this.f54921a.nextInt(this.f54924d - 100) / i4;
        return pointF;
    }

    private void f() {
        this.f54922b = 70;
        this.f54923c = 70;
        this.f54944x = r0;
        Interpolator[] interpolatorArr = {this.f54940t, this.f54941u, this.f54942v, this.f54943w};
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(this.f54922b, this.f54923c);
        this.f54926f = layoutParams;
        layoutParams.addRule(14, -1);
        this.f54926f.addRule(10, -1);
    }

    private void g() {
        this.f54939s = new Drawable[12];
        Drawable drawable = getResources().getDrawable(R.drawable.planelw1);
        this.f54927g = drawable;
        this.f54939s[0] = drawable;
        Drawable drawable2 = getResources().getDrawable(R.drawable.planelw2);
        this.f54928h = drawable2;
        this.f54939s[1] = drawable2;
        Drawable drawable3 = getResources().getDrawable(R.drawable.planelw3);
        this.f54929i = drawable3;
        this.f54939s[2] = drawable3;
        Drawable drawable4 = getResources().getDrawable(R.drawable.planelw4);
        this.f54930j = drawable4;
        this.f54939s[3] = drawable4;
        Drawable drawable5 = getResources().getDrawable(R.drawable.planelw12);
        this.f54931k = drawable5;
        this.f54939s[4] = drawable5;
        Drawable drawable6 = getResources().getDrawable(R.drawable.planelw6);
        this.f54932l = drawable6;
        this.f54939s[5] = drawable6;
        Drawable drawable7 = getResources().getDrawable(R.drawable.planelw7);
        this.f54933m = drawable7;
        this.f54939s[6] = drawable7;
        Drawable drawable8 = getResources().getDrawable(R.drawable.planelw8);
        this.f54934n = drawable8;
        this.f54939s[7] = drawable8;
        Drawable drawable9 = getResources().getDrawable(R.drawable.planelw9);
        this.f54935o = drawable9;
        this.f54939s[8] = drawable9;
        Drawable drawable10 = getResources().getDrawable(R.drawable.planelw10);
        this.f54936p = drawable10;
        this.f54939s[9] = drawable10;
        Drawable drawable11 = getResources().getDrawable(R.drawable.planelw11);
        this.f54937q = drawable11;
        this.f54939s[10] = drawable11;
        Drawable drawable12 = getResources().getDrawable(R.drawable.planelw12);
        this.f54938r = drawable12;
        this.f54939s[11] = drawable12;
    }

    public void a() {
        ImageView imageView = new ImageView(getContext());
        imageView.setImageDrawable(this.f54939s[this.f54921a.nextInt(12)]);
        imageView.setLayoutParams(this.f54926f);
        addView(imageView);
        Animator b10 = b(imageView);
        b10.addListener(new a(imageView));
        b10.start();
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i4, int i10) {
        super.onMeasure(i4, i10);
        this.f54924d = getMeasuredHeight();
        this.f54925e = getMeasuredWidth();
    }

    public MrlLove(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f54921a = new Random();
        this.f54940t = new LinearInterpolator();
        this.f54941u = new AccelerateInterpolator();
        this.f54942v = new DecelerateInterpolator();
        this.f54943w = new AccelerateDecelerateInterpolator();
        g();
        f();
    }
}

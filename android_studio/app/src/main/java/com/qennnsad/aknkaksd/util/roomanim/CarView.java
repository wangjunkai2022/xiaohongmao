package com.qennnsad.aknkaksd.util.roomanim;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.AnimationDrawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.didi.live.spring.R;
import com.google.android.exoplayer2.k2;
import com.qennnsad.aknkaksd.util.a1;

/* loaded from: classes3.dex */
public class CarView extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private ImageView f54895a;

    /* renamed from: b  reason: collision with root package name */
    private ImageView f54896b;

    /* renamed from: c  reason: collision with root package name */
    private ImageView f54897c;

    /* renamed from: d  reason: collision with root package name */
    private ImageView f54898d;

    /* renamed from: e  reason: collision with root package name */
    private ImageView f54899e;

    /* renamed from: f  reason: collision with root package name */
    private ImageView f54900f;

    /* renamed from: g  reason: collision with root package name */
    private ImageView f54901g;

    /* renamed from: h  reason: collision with root package name */
    private ImageView f54902h;

    /* renamed from: i  reason: collision with root package name */
    private ImageView f54903i;

    /* renamed from: j  reason: collision with root package name */
    private Context f54904j;

    /* renamed from: k  reason: collision with root package name */
    private AnimationDrawable f54905k;

    /* renamed from: l  reason: collision with root package name */
    private AnimationDrawable f54906l;

    /* renamed from: m  reason: collision with root package name */
    private AnimationDrawable f54907m;

    /* renamed from: n  reason: collision with root package name */
    private AnimationDrawable f54908n;

    /* renamed from: o  reason: collision with root package name */
    private com.qennnsad.aknkaksd.util.roomanim.c f54909o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements Animator.AnimatorListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ObjectAnimator f54910a;

        a(ObjectAnimator objectAnimator) {
            this.f54910a = objectAnimator;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f54910a.start();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements Animator.AnimatorListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AnimatorSet f54912a;

        b(AnimatorSet animatorSet) {
            this.f54912a = animatorSet;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f54912a.setDuration(1000L).start();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements Animator.AnimatorListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AnimatorSet f54914a;

        c(AnimatorSet animatorSet) {
            this.f54914a = animatorSet;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            CarView.this.n();
            this.f54914a.setDuration(1500L).start();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements Animator.AnimatorListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ObjectAnimator f54916a;

        d(ObjectAnimator objectAnimator) {
            this.f54916a = objectAnimator;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f54916a.start();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements Animator.AnimatorListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AnimatorSet f54918a;

        e(AnimatorSet animatorSet) {
            this.f54918a = animatorSet;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            CarView.this.f54901g.setVisibility(0);
            this.f54918a.setDuration(1000L).start();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements Animator.AnimatorListener {
        f() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            CarView.this.f54902h.setVisibility(8);
            CarView.this.f54903i.setVisibility(8);
            CarView.this.f54900f.setVisibility(8);
            CarView.this.f54901g.setVisibility(8);
            CarView.this.f54907m.stop();
            CarView.this.f54907m = null;
            CarView.this.f54908n.stop();
            CarView.this.f54908n = null;
            if (CarView.this.f54909o != null) {
                CarView.this.f54909o.a();
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    public CarView(Context context) {
        super(context);
        this.f54904j = context;
        k();
    }

    private void k() {
        this.f54895a = new ImageView(this.f54904j);
        this.f54895a.setLayoutParams(new RelativeLayout.LayoutParams(489, 194));
        this.f54895a.setImageResource(R.drawable.carbody);
        addView(this.f54895a);
        ImageView imageView = new ImageView(this.f54904j);
        this.f54898d = imageView;
        imageView.setBackgroundResource(R.drawable.lunziz);
        this.f54898d.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(54, 63);
        this.f54898d.setLayoutParams(layoutParams);
        addView(this.f54898d);
        ImageView imageView2 = new ImageView(this.f54904j);
        this.f54899e = imageView2;
        imageView2.setBackgroundResource(R.drawable.lunziz);
        this.f54899e.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        this.f54899e.setLayoutParams(layoutParams);
        addView(this.f54899e);
        ImageView imageView3 = new ImageView(this.f54904j);
        this.f54897c = imageView3;
        imageView3.setBackgroundResource(R.drawable.carlighttwo);
        addView(this.f54897c);
        ImageView imageView4 = new ImageView(this.f54904j);
        this.f54896b = imageView4;
        imageView4.setBackgroundResource(R.drawable.carlightone);
        addView(this.f54896b);
        ImageView imageView5 = new ImageView(this.f54904j);
        this.f54900f = imageView5;
        imageView5.setBackgroundResource(R.drawable.carbodytwo);
        addView(this.f54900f);
        ImageView imageView6 = new ImageView(this.f54904j);
        this.f54901g = imageView6;
        imageView6.setBackgroundResource(R.drawable.carari);
        addView(this.f54901g);
        ImageView imageView7 = new ImageView(this.f54904j);
        this.f54902h = imageView7;
        imageView7.setBackgroundResource(R.drawable.lunzit);
        addView(this.f54902h);
        ImageView imageView8 = new ImageView(this.f54904j);
        this.f54903i = imageView8;
        imageView8.setBackgroundResource(R.drawable.lunzizt);
        addView(this.f54903i);
    }

    private void l(float f10, float f11) {
        float f12 = (f10 / 2.0f) - 300.0f;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "translationX", f10, f12);
        float f13 = f11 / 2.0f;
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, "translationY", 0.0f, f13);
        ObjectAnimator duration = ObjectAnimator.ofFloat(this, "translationX", f12, -600.0f).setDuration(1500L);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this, "translationY", f13, f11);
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(this, "alpha", 1.0f, 1.0f).setDuration(1500L);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(duration).with(ofFloat3);
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.play(ofFloat).with(ofFloat2);
        animatorSet2.addListener(new a(duration2));
        duration2.addListener(new b(animatorSet));
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(this, "translationX", f10, f12);
        ObjectAnimator ofFloat5 = ObjectAnimator.ofFloat(this, "translationY", f11, f13);
        ObjectAnimator duration3 = ObjectAnimator.ofFloat(this, "alpha", 1.0f, 1.0f).setDuration(1500L);
        ObjectAnimator ofFloat6 = ObjectAnimator.ofFloat(this, "translationX", f12, -600.0f);
        ObjectAnimator ofFloat7 = ObjectAnimator.ofFloat(this, "translationY", f13, 0.0f);
        AnimatorSet animatorSet3 = new AnimatorSet();
        animatorSet3.play(ofFloat4).with(ofFloat5);
        AnimatorSet animatorSet4 = new AnimatorSet();
        animatorSet4.play(ofFloat6).with(ofFloat7);
        animatorSet.addListener(new c(animatorSet3));
        animatorSet3.addListener(new d(duration3));
        duration3.addListener(new e(animatorSet4));
        animatorSet4.addListener(new f());
        animatorSet2.setDuration(k2.f23783i1).start();
    }

    public void j(float f10, float f11) {
        m();
        l(f10, f11);
    }

    public void m() {
        this.f54902h.setVisibility(8);
        this.f54903i.setVisibility(8);
        this.f54900f.setVisibility(8);
        this.f54901g.setVisibility(8);
        this.f54898d.setVisibility(0);
        this.f54895a.setVisibility(0);
        this.f54896b.setVisibility(0);
        this.f54897c.setVisibility(0);
        this.f54899e.setVisibility(0);
        ObjectAnimator.ofFloat(this.f54898d, "rotationY", 0.0f, 180.0f).setDuration(0L).start();
        ObjectAnimator.ofFloat(this.f54899e, "rotationY", 0.0f, 180.0f).setDuration(0L).start();
        AnimationDrawable animationDrawable = (AnimationDrawable) this.f54898d.getBackground();
        this.f54905k = animationDrawable;
        animationDrawable.start();
        AnimationDrawable animationDrawable2 = (AnimationDrawable) this.f54899e.getBackground();
        this.f54906l = animationDrawable2;
        animationDrawable2.start();
    }

    public void n() {
        this.f54905k.stop();
        this.f54905k = null;
        this.f54906l.stop();
        this.f54906l = null;
        this.f54902h.setVisibility(0);
        this.f54903i.setVisibility(0);
        this.f54900f.setVisibility(0);
        this.f54898d.setVisibility(8);
        this.f54895a.setVisibility(8);
        this.f54896b.setVisibility(8);
        this.f54897c.setVisibility(8);
        this.f54899e.setVisibility(8);
        AnimationDrawable animationDrawable = (AnimationDrawable) this.f54902h.getBackground();
        this.f54907m = animationDrawable;
        animationDrawable.start();
        AnimationDrawable animationDrawable2 = (AnimationDrawable) this.f54903i.getBackground();
        this.f54908n = animationDrawable2;
        animationDrawable2.start();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z9, int i4, int i10, int i11, int i12) {
        this.f54895a.layout(119, 0, 617, 194);
        this.f54898d.layout(294, 97, 351, a1.f54532a);
        this.f54899e.layout(538, 48, 581, 108);
        this.f54897c.layout(12, 54, 266, 255);
        this.f54896b.layout(24, 5, 185, 190);
        this.f54900f.layout(0, 0, 494, 232);
        this.f54901g.layout(369, 119, 512, 247);
        this.f54902h.layout(15, 49, 39, 108);
        this.f54903i.layout(173, 101, 227, 196);
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i4, int i10) {
        super.onMeasure(i4, i10);
        setMeasuredDimension(600, 260);
    }

    public void setAnimsopt(com.qennnsad.aknkaksd.util.roomanim.c cVar) {
        this.f54909o = cVar;
    }

    public CarView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f54904j = context;
        k();
    }
}

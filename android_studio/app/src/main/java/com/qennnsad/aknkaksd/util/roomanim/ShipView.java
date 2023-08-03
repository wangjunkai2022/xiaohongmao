package com.qennnsad.aknkaksd.util.roomanim;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.didi.live.spring.R;
import com.google.android.exoplayer2.extractor.ts.h0;
import com.google.android.exoplayer2.k2;
import master.flame.danmaku.danmaku.model.android.d;

/* loaded from: classes3.dex */
public class ShipView extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private ImageView f54967a;

    /* renamed from: b  reason: collision with root package name */
    private ImageView f54968b;

    /* renamed from: c  reason: collision with root package name */
    private ImageView f54969c;

    /* renamed from: d  reason: collision with root package name */
    private Context f54970d;

    /* renamed from: e  reason: collision with root package name */
    private float f54971e;

    /* renamed from: f  reason: collision with root package name */
    private float f54972f;

    /* renamed from: g  reason: collision with root package name */
    private AnimatorSet f54973g;

    /* renamed from: h  reason: collision with root package name */
    private int f54974h;

    /* renamed from: i  reason: collision with root package name */
    private com.qennnsad.aknkaksd.util.roomanim.c f54975i;

    /* renamed from: j  reason: collision with root package name */
    private c f54976j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements Animator.AnimatorListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ObjectAnimator f54977a;

        a(ObjectAnimator objectAnimator) {
            this.f54977a = objectAnimator;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f54977a.start();
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
        final /* synthetic */ AnimatorSet f54979a;

        b(AnimatorSet animatorSet) {
            this.f54979a = animatorSet;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ShipView.this.f54973g.cancel();
            this.f54979a.cancel();
            ShipView.this.setVisibility(8);
            if (ShipView.this.f54975i != null) {
                ShipView.this.f54975i.a();
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    public ShipView(Context context) {
        super(context);
        this.f54970d = context;
        i();
    }

    private void i() {
        ImageView imageView = new ImageView(this.f54970d);
        this.f54967a = imageView;
        imageView.setBackgroundResource(R.drawable.yacht_water_one);
        addView(this.f54967a);
        c cVar = new c(this.f54970d);
        this.f54976j = cVar;
        addView(cVar);
        this.f54971e = this.f54968b.getY();
        this.f54972f = this.f54967a.getY();
    }

    public void h(int i4) {
        setVisibility(0);
        j(this.f54976j, i4);
        k(this.f54967a);
    }

    public void j(View view, int i4) {
        float f10 = this.f54971e;
        ObjectAnimator duration = ObjectAnimator.ofFloat(view, "translationY", f10, f10 + 30.0f).setDuration(500L);
        float f11 = (i4 / 2) - 450;
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(view, "translationX", -450.0f, f11).setDuration(k2.f23783i1);
        ObjectAnimator duration3 = ObjectAnimator.ofFloat(view, "alpha", 1.0f, 1.0f).setDuration(3000L);
        ObjectAnimator duration4 = ObjectAnimator.ofFloat(view, "translationX", f11, i4).setDuration(d.f87230r);
        duration.setRepeatCount(-1);
        duration.setRepeatMode(2);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(duration2).with(duration);
        animatorSet.play(duration3).after(duration2);
        duration3.addListener(new a(duration4));
        duration4.addListener(new b(animatorSet));
        animatorSet.start();
    }

    public void k(View view) {
        float f10 = this.f54972f;
        ObjectAnimator duration = ObjectAnimator.ofFloat(view, "translationY", f10, f10 + 20.0f).setDuration(500L);
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(view, "translationX", 0.0f, 180.0f).setDuration(8000L);
        duration.setRepeatCount(-1);
        duration.setRepeatMode(2);
        AnimatorSet animatorSet = new AnimatorSet();
        this.f54973g = animatorSet;
        animatorSet.play(duration2).with(duration);
        this.f54973g.start();
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z9, int i4, int i10, int i11, int i12) {
        super.onLayout(z9, i4, i10, i11, i12);
        this.f54967a.layout(-200, 100, this.f54974h, 600);
        this.f54976j.layout(0, 0, 450, 600);
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i4, int i10) {
        super.onMeasure(i4, i10);
        int size = View.MeasureSpec.getSize(i4);
        this.f54974h = size;
        setMeasuredDimension(size, 600);
    }

    public void setGitfSpecialsStop(com.qennnsad.aknkaksd.util.roomanim.c cVar) {
        this.f54975i = cVar;
    }

    /* loaded from: classes3.dex */
    public class c extends RelativeLayout {
        public c(Context context) {
            super(context);
            a();
        }

        private void a() {
            ShipView.this.f54969c = new ImageView(ShipView.this.f54970d);
            ShipView.this.f54969c.setBackgroundResource(R.drawable.yacht_shadow);
            addView(ShipView.this.f54969c);
            ShipView.this.f54968b = new ImageView(ShipView.this.f54970d);
            ShipView.this.f54968b.setBackgroundResource(R.drawable.yacht_hull);
            addView(ShipView.this.f54968b);
        }

        @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z9, int i4, int i10, int i11, int i12) {
            super.onLayout(z9, i4, i10, i11, i12);
            ShipView.this.f54969c.layout(50, 300, 360, 410);
            ShipView.this.f54968b.layout(0, h0.I, TypedValues.Cycle.TYPE_EASING, 343);
        }

        @Override // android.widget.RelativeLayout, android.view.View
        protected void onMeasure(int i4, int i10) {
            super.onMeasure(i4, i10);
            setMeasuredDimension(450, 450);
        }

        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public ShipView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f54970d = context;
        i();
    }
}

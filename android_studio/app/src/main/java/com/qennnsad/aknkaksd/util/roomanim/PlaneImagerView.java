package com.qennnsad.aknkaksd.util.roomanim;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.motion.widget.Key;
import com.didi.live.spring.R;
import com.facebook.common.statfs.StatFsHelper;
import com.facebook.imagepipeline.common.e;
import com.google.android.exoplayer2.extractor.ts.a0;
import com.google.android.exoplayer2.extractor.ts.h0;
import com.google.android.exoplayer2.k2;

/* loaded from: classes3.dex */
public class PlaneImagerView extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private ImageView f54952a;

    /* renamed from: b  reason: collision with root package name */
    private ImageView f54953b;

    /* renamed from: c  reason: collision with root package name */
    private ImageView f54954c;

    /* renamed from: d  reason: collision with root package name */
    private ImageView f54955d;

    /* renamed from: e  reason: collision with root package name */
    private ImageView f54956e;

    /* renamed from: f  reason: collision with root package name */
    private ImageView f54957f;

    /* renamed from: g  reason: collision with root package name */
    private ImageView f54958g;

    /* renamed from: h  reason: collision with root package name */
    private MrlLove f54959h;

    /* renamed from: i  reason: collision with root package name */
    private Context f54960i;

    /* renamed from: j  reason: collision with root package name */
    private com.qennnsad.aknkaksd.util.roomanim.c f54961j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements Animator.AnimatorListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ObjectAnimator f54962a;

        a(ObjectAnimator objectAnimator) {
            this.f54962a = objectAnimator;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f54962a.start();
            for (int i4 = 0; i4 < 40; i4++) {
                PlaneImagerView.this.f54959h.a();
            }
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
        final /* synthetic */ ObjectAnimator f54964a;

        b(ObjectAnimator objectAnimator) {
            this.f54964a = objectAnimator;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f54964a.start();
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
        c() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            PlaneImagerView.this.setVisibility(8);
            if (PlaneImagerView.this.f54961j != null) {
                PlaneImagerView.this.f54961j.a();
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    public PlaneImagerView(Context context) {
        super(context);
        this.f54960i = context;
        f();
    }

    private void f() {
        this.f54952a = new ImageView(this.f54960i);
        this.f54952a.setLayoutParams(new RelativeLayout.LayoutParams(598, 286));
        this.f54952a.setImageResource(R.drawable.plane_body);
        addView(this.f54952a);
        this.f54953b = new ImageView(this.f54960i);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(60, 60);
        this.f54953b.setLayoutParams(layoutParams);
        this.f54953b.setImageResource(R.drawable.plane_airscrew);
        addView(this.f54953b);
        this.f54954c = new ImageView(this.f54960i);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(40, 40);
        this.f54954c.setLayoutParams(layoutParams2);
        this.f54954c.setImageResource(R.drawable.plane_airscrew);
        addView(this.f54954c);
        this.f54955d = new ImageView(this.f54960i);
        this.f54955d.setLayoutParams(new RelativeLayout.LayoutParams(70, 70));
        this.f54955d.setImageResource(R.drawable.plane_airscrew);
        addView(this.f54955d);
        ImageView imageView = new ImageView(this.f54960i);
        this.f54956e = imageView;
        imageView.setLayoutParams(layoutParams2);
        this.f54956e.setImageResource(R.drawable.plane_airscrew);
        addView(this.f54956e);
        ImageView imageView2 = new ImageView(this.f54960i);
        this.f54957f = imageView2;
        imageView2.setLayoutParams(layoutParams);
        this.f54957f.setImageResource(R.drawable.plane_airscrew);
        addView(this.f54957f);
        this.f54958g = new ImageView(this.f54960i);
        this.f54958g.setLayoutParams(new RelativeLayout.LayoutParams((int) TypedValues.Cycle.TYPE_WAVE_OFFSET, 220));
        this.f54958g.setImageResource(R.drawable.plane_shadow);
        addView(this.f54958g);
        this.f54959h = new MrlLove(this.f54960i);
        this.f54959h.setLayoutParams(new RelativeLayout.LayoutParams((int) StatFsHelper.f11024h, 500));
        addView(this.f54959h);
    }

    public void c(float f10) {
        setVisibility(0);
        e(this.f54953b);
        e(this.f54954c);
        e(this.f54955d);
        e(this.f54956e);
        e(this.f54957f);
        d(this, f10);
    }

    public void d(View view, float f10) {
        float f11 = (f10 / 2.0f) - 300.0f;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "translationX", f10, f11);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, "translationY", 0.0f, 200.0f);
        ObjectAnimator duration = ObjectAnimator.ofFloat(view, "translationX", f11, -600.0f).setDuration(1500L);
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(view, "alpha", 1.0f, 1.0f).setDuration(4300L);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ofFloat).with(ofFloat2);
        animatorSet.addListener(new a(duration2));
        duration2.addListener(new b(duration));
        duration.addListener(new c());
        animatorSet.setDuration(k2.f23783i1).start();
    }

    public void e(View view) {
        ObjectAnimator.ofFloat(view, "rotationY", 0.0f, -30.0f).setDuration(0L).start();
        ObjectAnimator.ofFloat(view, Key.ROTATION, 0.0f, 7200.0f).setDuration(8000L).start();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z9, int i4, int i10, int i11, int i12) {
        this.f54952a.layout(0, 0, 598, 286);
        this.f54953b.layout(39, h0.J, 99, 195);
        this.f54954c.layout(94, 182, h0.Q, 222);
        this.f54955d.layout(73, 194, 143, 264);
        this.f54956e.layout(200, 226, a0.A, 266);
        this.f54957f.layout(e.f12206f, 232, 330, 292);
        this.f54958g.layout(176, 580, 600, 800);
        this.f54959h.layout(100, 300, 500, 800);
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i4, int i10) {
        super.onMeasure(i4, i10);
        setMeasuredDimension(600, 800);
    }

    public void setGitfSpecialsStop(com.qennnsad.aknkaksd.util.roomanim.c cVar) {
        this.f54961j = cVar;
    }

    public PlaneImagerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f54960i = context;
        f();
    }
}

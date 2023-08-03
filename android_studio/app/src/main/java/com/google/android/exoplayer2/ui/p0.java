package com.google.android.exoplayer2.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ui.q;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StyledPlayerControlViewLayoutManager.java */
/* loaded from: classes2.dex */
public final class p0 {
    private static final long D = 2000;
    private static final long E = 250;
    private static final long F = 250;
    private static final int G = 0;
    private static final int H = 1;
    private static final int I = 2;
    private static final int J = 3;
    private static final int K = 4;
    private boolean A;
    private boolean B;

    /* renamed from: a  reason: collision with root package name */
    private final StyledPlayerControlView f26433a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final View f26434b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final ViewGroup f26435c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final ViewGroup f26436d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final ViewGroup f26437e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final ViewGroup f26438f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final ViewGroup f26439g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final ViewGroup f26440h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final ViewGroup f26441i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final View f26442j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final View f26443k;

    /* renamed from: l  reason: collision with root package name */
    private final AnimatorSet f26444l;

    /* renamed from: m  reason: collision with root package name */
    private final AnimatorSet f26445m;

    /* renamed from: n  reason: collision with root package name */
    private final AnimatorSet f26446n;

    /* renamed from: o  reason: collision with root package name */
    private final AnimatorSet f26447o;

    /* renamed from: p  reason: collision with root package name */
    private final AnimatorSet f26448p;

    /* renamed from: q  reason: collision with root package name */
    private final ValueAnimator f26449q;

    /* renamed from: r  reason: collision with root package name */
    private final ValueAnimator f26450r;

    /* renamed from: s  reason: collision with root package name */
    private final Runnable f26451s = new Runnable() { // from class: com.google.android.exoplayer2.ui.f0
        @Override // java.lang.Runnable
        public final void run() {
            p0.this.d0();
        }
    };

    /* renamed from: t  reason: collision with root package name */
    private final Runnable f26452t = new Runnable() { // from class: com.google.android.exoplayer2.ui.n0
        @Override // java.lang.Runnable
        public final void run() {
            p0.this.D();
        }
    };

    /* renamed from: u  reason: collision with root package name */
    private final Runnable f26453u = new Runnable() { // from class: com.google.android.exoplayer2.ui.d0
        @Override // java.lang.Runnable
        public final void run() {
            p0.this.H();
        }
    };

    /* renamed from: v  reason: collision with root package name */
    private final Runnable f26454v = new Runnable() { // from class: com.google.android.exoplayer2.ui.e0
        @Override // java.lang.Runnable
        public final void run() {
            p0.this.G();
        }
    };

    /* renamed from: w  reason: collision with root package name */
    private final Runnable f26455w = new Runnable() { // from class: com.google.android.exoplayer2.ui.o0
        @Override // java.lang.Runnable
        public final void run() {
            p0.this.E();
        }
    };

    /* renamed from: x  reason: collision with root package name */
    private final View.OnLayoutChangeListener f26456x = new View.OnLayoutChangeListener() { // from class: com.google.android.exoplayer2.ui.k0
        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(View view, int i4, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
            p0.this.S(view, i4, i10, i11, i12, i13, i14, i15, i16);
        }
    };
    private boolean C = true;

    /* renamed from: z  reason: collision with root package name */
    private int f26458z = 0;

    /* renamed from: y  reason: collision with root package name */
    private final List<View> f26457y = new ArrayList();

    /* compiled from: StyledPlayerControlViewLayoutManager.java */
    /* loaded from: classes2.dex */
    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (p0.this.f26434b != null) {
                p0.this.f26434b.setVisibility(4);
            }
            if (p0.this.f26435c != null) {
                p0.this.f26435c.setVisibility(4);
            }
            if (p0.this.f26437e != null) {
                p0.this.f26437e.setVisibility(4);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (!(p0.this.f26442j instanceof DefaultTimeBar) || p0.this.A) {
                return;
            }
            ((DefaultTimeBar) p0.this.f26442j).i(250L);
        }
    }

    /* compiled from: StyledPlayerControlViewLayoutManager.java */
    /* loaded from: classes2.dex */
    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (p0.this.f26434b != null) {
                p0.this.f26434b.setVisibility(0);
            }
            if (p0.this.f26435c != null) {
                p0.this.f26435c.setVisibility(0);
            }
            if (p0.this.f26437e != null) {
                p0.this.f26437e.setVisibility(p0.this.A ? 0 : 4);
            }
            if (!(p0.this.f26442j instanceof DefaultTimeBar) || p0.this.A) {
                return;
            }
            ((DefaultTimeBar) p0.this.f26442j).v(250L);
        }
    }

    /* compiled from: StyledPlayerControlViewLayoutManager.java */
    /* loaded from: classes2.dex */
    class c extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ StyledPlayerControlView f26461a;

        c(StyledPlayerControlView styledPlayerControlView) {
            this.f26461a = styledPlayerControlView;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            p0.this.a0(1);
            if (p0.this.B) {
                this.f26461a.post(p0.this.f26451s);
                p0.this.B = false;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            p0.this.a0(3);
        }
    }

    /* compiled from: StyledPlayerControlViewLayoutManager.java */
    /* loaded from: classes2.dex */
    class d extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ StyledPlayerControlView f26463a;

        d(StyledPlayerControlView styledPlayerControlView) {
            this.f26463a = styledPlayerControlView;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            p0.this.a0(2);
            if (p0.this.B) {
                this.f26463a.post(p0.this.f26451s);
                p0.this.B = false;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            p0.this.a0(3);
        }
    }

    /* compiled from: StyledPlayerControlViewLayoutManager.java */
    /* loaded from: classes2.dex */
    class e extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ StyledPlayerControlView f26465a;

        e(StyledPlayerControlView styledPlayerControlView) {
            this.f26465a = styledPlayerControlView;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            p0.this.a0(2);
            if (p0.this.B) {
                this.f26465a.post(p0.this.f26451s);
                p0.this.B = false;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            p0.this.a0(3);
        }
    }

    /* compiled from: StyledPlayerControlViewLayoutManager.java */
    /* loaded from: classes2.dex */
    class f extends AnimatorListenerAdapter {
        f() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            p0.this.a0(0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            p0.this.a0(4);
        }
    }

    /* compiled from: StyledPlayerControlViewLayoutManager.java */
    /* loaded from: classes2.dex */
    class g extends AnimatorListenerAdapter {
        g() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            p0.this.a0(0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            p0.this.a0(4);
        }
    }

    /* compiled from: StyledPlayerControlViewLayoutManager.java */
    /* loaded from: classes2.dex */
    class h extends AnimatorListenerAdapter {
        h() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (p0.this.f26438f != null) {
                p0.this.f26438f.setVisibility(4);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (p0.this.f26440h != null) {
                p0.this.f26440h.setVisibility(0);
                p0.this.f26440h.setTranslationX(p0.this.f26440h.getWidth());
                p0.this.f26440h.scrollTo(p0.this.f26440h.getWidth(), 0);
            }
        }
    }

    /* compiled from: StyledPlayerControlViewLayoutManager.java */
    /* loaded from: classes2.dex */
    class i extends AnimatorListenerAdapter {
        i() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (p0.this.f26440h != null) {
                p0.this.f26440h.setVisibility(4);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (p0.this.f26438f != null) {
                p0.this.f26438f.setVisibility(0);
            }
        }
    }

    public p0(StyledPlayerControlView styledPlayerControlView) {
        this.f26433a = styledPlayerControlView;
        this.f26434b = styledPlayerControlView.findViewById(q.g.f26639h0);
        this.f26435c = (ViewGroup) styledPlayerControlView.findViewById(q.g.f26624c0);
        this.f26437e = (ViewGroup) styledPlayerControlView.findViewById(q.g.f26669r0);
        ViewGroup viewGroup = (ViewGroup) styledPlayerControlView.findViewById(q.g.f26618a0);
        this.f26436d = viewGroup;
        this.f26441i = (ViewGroup) styledPlayerControlView.findViewById(q.g.Q0);
        View findViewById = styledPlayerControlView.findViewById(q.g.D0);
        this.f26442j = findViewById;
        this.f26438f = (ViewGroup) styledPlayerControlView.findViewById(q.g.Z);
        this.f26439g = (ViewGroup) styledPlayerControlView.findViewById(q.g.f26648k0);
        this.f26440h = (ViewGroup) styledPlayerControlView.findViewById(q.g.f26651l0);
        View findViewById2 = styledPlayerControlView.findViewById(q.g.f26681v0);
        this.f26443k = findViewById2;
        View findViewById3 = styledPlayerControlView.findViewById(q.g.f26678u0);
        if (findViewById2 != null && findViewById3 != null) {
            findViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.j0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    p0.this.U(view);
                }
            });
            findViewById3.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.j0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    p0.this.U(view);
                }
            });
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.exoplayer2.ui.g0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                p0.this.K(valueAnimator);
            }
        });
        ofFloat.addListener(new a());
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat2.setInterpolator(new LinearInterpolator());
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.exoplayer2.ui.c0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                p0.this.L(valueAnimator);
            }
        });
        ofFloat2.addListener(new b());
        Resources resources = styledPlayerControlView.getResources();
        int i4 = q.d.F;
        float dimension = resources.getDimension(i4) - resources.getDimension(q.d.K);
        float dimension2 = resources.getDimension(i4);
        AnimatorSet animatorSet = new AnimatorSet();
        this.f26444l = animatorSet;
        animatorSet.setDuration(250L);
        animatorSet.addListener(new c(styledPlayerControlView));
        animatorSet.play(ofFloat).with(O(0.0f, dimension, findViewById)).with(O(0.0f, dimension, viewGroup));
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.f26445m = animatorSet2;
        animatorSet2.setDuration(250L);
        animatorSet2.addListener(new d(styledPlayerControlView));
        animatorSet2.play(O(dimension, dimension2, findViewById)).with(O(dimension, dimension2, viewGroup));
        AnimatorSet animatorSet3 = new AnimatorSet();
        this.f26446n = animatorSet3;
        animatorSet3.setDuration(250L);
        animatorSet3.addListener(new e(styledPlayerControlView));
        animatorSet3.play(ofFloat).with(O(0.0f, dimension2, findViewById)).with(O(0.0f, dimension2, viewGroup));
        AnimatorSet animatorSet4 = new AnimatorSet();
        this.f26447o = animatorSet4;
        animatorSet4.setDuration(250L);
        animatorSet4.addListener(new f());
        animatorSet4.play(ofFloat2).with(O(dimension, 0.0f, findViewById)).with(O(dimension, 0.0f, viewGroup));
        AnimatorSet animatorSet5 = new AnimatorSet();
        this.f26448p = animatorSet5;
        animatorSet5.setDuration(250L);
        animatorSet5.addListener(new g());
        animatorSet5.play(ofFloat2).with(O(dimension2, 0.0f, findViewById)).with(O(dimension2, 0.0f, viewGroup));
        ValueAnimator ofFloat3 = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f26449q = ofFloat3;
        ofFloat3.setDuration(250L);
        ofFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.exoplayer2.ui.h0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                p0.this.M(valueAnimator);
            }
        });
        ofFloat3.addListener(new h());
        ValueAnimator ofFloat4 = ValueAnimator.ofFloat(1.0f, 0.0f);
        this.f26450r = ofFloat4;
        ofFloat4.setDuration(250L);
        ofFloat4.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.exoplayer2.ui.i0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                p0.this.N(valueAnimator);
            }
        });
        ofFloat4.addListener(new i());
    }

    private static int B(@Nullable View view) {
        if (view == null) {
            return 0;
        }
        int width = view.getWidth();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            return width + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
        }
        return width;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D() {
        this.f26446n.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E() {
        a0(2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G() {
        this.f26444l.start();
        V(this.f26453u, 2000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H() {
        this.f26445m.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void K(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        View view = this.f26434b;
        if (view != null) {
            view.setAlpha(floatValue);
        }
        ViewGroup viewGroup = this.f26435c;
        if (viewGroup != null) {
            viewGroup.setAlpha(floatValue);
        }
        ViewGroup viewGroup2 = this.f26437e;
        if (viewGroup2 != null) {
            viewGroup2.setAlpha(floatValue);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void L(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        View view = this.f26434b;
        if (view != null) {
            view.setAlpha(floatValue);
        }
        ViewGroup viewGroup = this.f26435c;
        if (viewGroup != null) {
            viewGroup.setAlpha(floatValue);
        }
        ViewGroup viewGroup2 = this.f26437e;
        if (viewGroup2 != null) {
            viewGroup2.setAlpha(floatValue);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void M(ValueAnimator valueAnimator) {
        y(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void N(ValueAnimator valueAnimator) {
        y(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    private static ObjectAnimator O(float f10, float f11, View view) {
        return ObjectAnimator.ofFloat(view, "translationY", f10, f11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S(View view, int i4, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        boolean f02 = f0();
        if (this.A != f02) {
            this.A = f02;
            view.post(new Runnable() { // from class: com.google.android.exoplayer2.ui.l0
                @Override // java.lang.Runnable
                public final void run() {
                    p0.this.e0();
                }
            });
        }
        boolean z9 = i11 - i4 != i15 - i13;
        if (this.A || !z9) {
            return;
        }
        view.post(new Runnable() { // from class: com.google.android.exoplayer2.ui.m0
            @Override // java.lang.Runnable
            public final void run() {
                p0.this.T();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T() {
        int i4;
        if (this.f26438f == null || this.f26439g == null) {
            return;
        }
        int width = (this.f26433a.getWidth() - this.f26433a.getPaddingLeft()) - this.f26433a.getPaddingRight();
        while (true) {
            if (this.f26439g.getChildCount() <= 1) {
                break;
            }
            int childCount = this.f26439g.getChildCount() - 2;
            View childAt = this.f26439g.getChildAt(childCount);
            this.f26439g.removeViewAt(childCount);
            this.f26438f.addView(childAt, 0);
        }
        View view = this.f26443k;
        if (view != null) {
            view.setVisibility(8);
        }
        int B = B(this.f26441i);
        int childCount2 = this.f26438f.getChildCount() - 1;
        for (int i10 = 0; i10 < childCount2; i10++) {
            B += B(this.f26438f.getChildAt(i10));
        }
        if (B > width) {
            View view2 = this.f26443k;
            if (view2 != null) {
                view2.setVisibility(0);
                B += B(this.f26443k);
            }
            ArrayList arrayList = new ArrayList();
            for (int i11 = 0; i11 < childCount2; i11++) {
                View childAt2 = this.f26438f.getChildAt(i11);
                B -= B(childAt2);
                arrayList.add(childAt2);
                if (B <= width) {
                    break;
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            this.f26438f.removeViews(0, arrayList.size());
            for (i4 = 0; i4 < arrayList.size(); i4++) {
                this.f26439g.addView((View) arrayList.get(i4), this.f26439g.getChildCount() - 1);
            }
            return;
        }
        ViewGroup viewGroup = this.f26440h;
        if (viewGroup == null || viewGroup.getVisibility() != 0 || this.f26450r.isStarted()) {
            return;
        }
        this.f26449q.cancel();
        this.f26450r.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U(View view) {
        X();
        if (view.getId() == q.g.f26681v0) {
            this.f26449q.start();
        } else if (view.getId() == q.g.f26678u0) {
            this.f26450r.start();
        }
    }

    private void V(Runnable runnable, long j4) {
        if (j4 >= 0) {
            this.f26433a.postDelayed(runnable, j4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a0(int i4) {
        int i10 = this.f26458z;
        this.f26458z = i4;
        if (i4 == 2) {
            this.f26433a.setVisibility(8);
        } else if (i10 == 2) {
            this.f26433a.setVisibility(0);
        }
        if (i10 != i4) {
            this.f26433a.l0();
        }
    }

    private boolean b0(View view) {
        int id = view.getId();
        return id == q.g.f26618a0 || id == q.g.C0 || id == q.g.f26675t0 || id == q.g.G0 || id == q.g.H0 || id == q.g.f26654m0 || id == q.g.f26657n0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d0() {
        if (!this.C) {
            a0(0);
            X();
            return;
        }
        int i4 = this.f26458z;
        if (i4 == 1) {
            this.f26447o.start();
        } else if (i4 == 2) {
            this.f26448p.start();
        } else if (i4 == 3) {
            this.B = true;
        } else if (i4 == 4) {
            return;
        }
        X();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e0() {
        ViewGroup viewGroup = this.f26437e;
        if (viewGroup != null) {
            viewGroup.setVisibility(this.A ? 0 : 4);
        }
        View view = this.f26442j;
        if (view != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            int dimensionPixelSize = this.f26433a.getResources().getDimensionPixelSize(q.d.O);
            if (this.A) {
                dimensionPixelSize = 0;
            }
            marginLayoutParams.bottomMargin = dimensionPixelSize;
            this.f26442j.setLayoutParams(marginLayoutParams);
            View view2 = this.f26442j;
            if (view2 instanceof DefaultTimeBar) {
                DefaultTimeBar defaultTimeBar = (DefaultTimeBar) view2;
                if (this.A) {
                    defaultTimeBar.j(true);
                } else {
                    int i4 = this.f26458z;
                    if (i4 == 1) {
                        defaultTimeBar.j(false);
                    } else if (i4 != 3) {
                        defaultTimeBar.u();
                    }
                }
            }
        }
        for (View view3 : this.f26457y) {
            view3.setVisibility((this.A && b0(view3)) ? 4 : 0);
        }
    }

    private boolean f0() {
        int width = (this.f26433a.getWidth() - this.f26433a.getPaddingLeft()) - this.f26433a.getPaddingRight();
        int height = (this.f26433a.getHeight() - this.f26433a.getPaddingBottom()) - this.f26433a.getPaddingTop();
        int B = B(this.f26435c);
        ViewGroup viewGroup = this.f26435c;
        int paddingLeft = B - (viewGroup != null ? viewGroup.getPaddingLeft() + this.f26435c.getPaddingRight() : 0);
        int z9 = z(this.f26435c);
        ViewGroup viewGroup2 = this.f26435c;
        return width <= Math.max(paddingLeft, B(this.f26441i) + B(this.f26443k)) || height <= (z9 - (viewGroup2 != null ? viewGroup2.getPaddingTop() + this.f26435c.getPaddingBottom() : 0)) + (z(this.f26436d) * 2);
    }

    private void y(float f10) {
        ViewGroup viewGroup = this.f26440h;
        if (viewGroup != null) {
            this.f26440h.setTranslationX((int) (viewGroup.getWidth() * (1.0f - f10)));
        }
        ViewGroup viewGroup2 = this.f26441i;
        if (viewGroup2 != null) {
            viewGroup2.setAlpha(1.0f - f10);
        }
        ViewGroup viewGroup3 = this.f26438f;
        if (viewGroup3 != null) {
            viewGroup3.setAlpha(1.0f - f10);
        }
    }

    private static int z(@Nullable View view) {
        if (view == null) {
            return 0;
        }
        int height = view.getHeight();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            return height + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
        }
        return height;
    }

    public boolean A(@Nullable View view) {
        return view != null && this.f26457y.contains(view);
    }

    public void C() {
        int i4 = this.f26458z;
        if (i4 == 3 || i4 == 2) {
            return;
        }
        W();
        if (!this.C) {
            E();
        } else if (this.f26458z == 1) {
            H();
        } else {
            D();
        }
    }

    public void F() {
        int i4 = this.f26458z;
        if (i4 == 3 || i4 == 2) {
            return;
        }
        W();
        E();
    }

    public boolean I() {
        return this.C;
    }

    public boolean J() {
        return this.f26458z == 0 && this.f26433a.k0();
    }

    public void P() {
        this.f26433a.addOnLayoutChangeListener(this.f26456x);
    }

    public void Q() {
        this.f26433a.removeOnLayoutChangeListener(this.f26456x);
    }

    public void R(boolean z9, int i4, int i10, int i11, int i12) {
        View view = this.f26434b;
        if (view != null) {
            view.layout(0, 0, i11 - i4, i12 - i10);
        }
    }

    public void W() {
        this.f26433a.removeCallbacks(this.f26455w);
        this.f26433a.removeCallbacks(this.f26452t);
        this.f26433a.removeCallbacks(this.f26454v);
        this.f26433a.removeCallbacks(this.f26453u);
    }

    public void X() {
        if (this.f26458z == 3) {
            return;
        }
        W();
        int showTimeoutMs = this.f26433a.getShowTimeoutMs();
        if (showTimeoutMs > 0) {
            if (!this.C) {
                V(this.f26455w, showTimeoutMs);
            } else if (this.f26458z == 1) {
                V(this.f26453u, 2000L);
            } else {
                V(this.f26454v, showTimeoutMs);
            }
        }
    }

    public void Y(boolean z9) {
        this.C = z9;
    }

    public void Z(@Nullable View view, boolean z9) {
        if (view == null) {
            return;
        }
        if (!z9) {
            view.setVisibility(8);
            this.f26457y.remove(view);
            return;
        }
        if (this.A && b0(view)) {
            view.setVisibility(4);
        } else {
            view.setVisibility(0);
        }
        this.f26457y.add(view);
    }

    public void c0() {
        if (!this.f26433a.k0()) {
            this.f26433a.setVisibility(0);
            this.f26433a.w0();
            this.f26433a.q0();
        }
        d0();
    }
}

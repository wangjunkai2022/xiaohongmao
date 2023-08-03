package com.tangxiaolv.telegramgallery.Components;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.ScrollView;
import com.tangxiaolv.telegramgallery.q;
import java.lang.reflect.Field;
import java.util.HashMap;

/* compiled from: ActionBarPopupWindow.java */
/* loaded from: classes3.dex */
public class a extends PopupWindow {

    /* renamed from: d  reason: collision with root package name */
    private static final Field f56108d;

    /* renamed from: e  reason: collision with root package name */
    private static final boolean f56109e = true;

    /* renamed from: f  reason: collision with root package name */
    private static DecelerateInterpolator f56110f = new DecelerateInterpolator();

    /* renamed from: g  reason: collision with root package name */
    private static final ViewTreeObserver.OnScrollChangedListener f56111g;

    /* renamed from: a  reason: collision with root package name */
    private AnimatorSet f56112a;

    /* renamed from: b  reason: collision with root package name */
    private ViewTreeObserver.OnScrollChangedListener f56113b;

    /* renamed from: c  reason: collision with root package name */
    private ViewTreeObserver f56114c;

    /* compiled from: ActionBarPopupWindow.java */
    /* renamed from: com.tangxiaolv.telegramgallery.Components.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class ViewTreeObserver$OnScrollChangedListenerC0481a implements ViewTreeObserver.OnScrollChangedListener {
        ViewTreeObserver$OnScrollChangedListenerC0481a() {
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
        }
    }

    /* compiled from: ActionBarPopupWindow.java */
    /* loaded from: classes3.dex */
    class b implements Animator.AnimatorListener {
        b() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            onAnimationEnd(animator);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            a.this.f56112a = null;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActionBarPopupWindow.java */
    /* loaded from: classes3.dex */
    public class c implements Animator.AnimatorListener {
        c() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            onAnimationEnd(animator);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            a.this.f56112a = null;
            a.this.setFocusable(false);
            try {
                a.super.dismiss();
            } catch (Exception unused) {
            }
            a.this.j();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* compiled from: ActionBarPopupWindow.java */
    /* loaded from: classes3.dex */
    public static class d extends FrameLayout {

        /* renamed from: j  reason: collision with root package name */
        protected static Drawable f56117j;

        /* renamed from: a  reason: collision with root package name */
        private e f56118a;

        /* renamed from: b  reason: collision with root package name */
        private float f56119b;

        /* renamed from: c  reason: collision with root package name */
        private float f56120c;

        /* renamed from: d  reason: collision with root package name */
        private int f56121d;

        /* renamed from: e  reason: collision with root package name */
        private int f56122e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f56123f;

        /* renamed from: g  reason: collision with root package name */
        private HashMap<View, Integer> f56124g;

        /* renamed from: h  reason: collision with root package name */
        private ScrollView f56125h;

        /* renamed from: i  reason: collision with root package name */
        private LinearLayout f56126i;

        public d(Context context) {
            super(context);
            this.f56119b = 1.0f;
            this.f56120c = 1.0f;
            this.f56121d = 255;
            this.f56122e = 0;
            this.f56124g = new HashMap<>();
            if (f56117j == null) {
                f56117j = getResources().getDrawable(q.h.O2);
            }
            setPadding(com.tangxiaolv.telegramgallery.Utils.a.g(8.0f), com.tangxiaolv.telegramgallery.Utils.a.g(8.0f), com.tangxiaolv.telegramgallery.Utils.a.g(8.0f), com.tangxiaolv.telegramgallery.Utils.a.g(8.0f));
            setWillNotDraw(false);
            try {
                ScrollView scrollView = new ScrollView(context);
                this.f56125h = scrollView;
                scrollView.setVerticalScrollBarEnabled(false);
                addView(this.f56125h, com.tangxiaolv.telegramgallery.Utils.f.a(-2, -2.0f));
            } catch (Throwable th) {
                th.printStackTrace();
            }
            LinearLayout linearLayout = new LinearLayout(context);
            this.f56126i = linearLayout;
            linearLayout.setOrientation(1);
            ScrollView scrollView2 = this.f56125h;
            if (scrollView2 != null) {
                scrollView2.addView(this.f56126i, new FrameLayout.LayoutParams(-2, -2));
            } else {
                addView(this.f56126i, com.tangxiaolv.telegramgallery.Utils.f.a(-2, -2.0f));
            }
        }

        private void f(View view) {
            if (a.f56109e) {
                AnimatorSet animatorSet = new AnimatorSet();
                Animator[] animatorArr = new Animator[2];
                animatorArr[0] = ObjectAnimator.ofFloat(view, "alpha", 0.0f, 1.0f);
                float[] fArr = new float[2];
                fArr[0] = com.tangxiaolv.telegramgallery.Utils.a.g(this.f56123f ? 6.0f : -6.0f);
                fArr[1] = 0.0f;
                animatorArr[1] = ObjectAnimator.ofFloat(view, "translationY", fArr);
                animatorSet.playTogether(animatorArr);
                animatorSet.setDuration(180L);
                animatorSet.setInterpolator(a.f56110f);
                animatorSet.start();
            }
        }

        @Override // android.view.ViewGroup
        public void addView(View view) {
            this.f56126i.addView(view);
        }

        public View d(int i4) {
            return this.f56126i.getChildAt(i4);
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            e eVar = this.f56118a;
            if (eVar != null) {
                eVar.a(keyEvent);
            }
            return super.dispatchKeyEvent(keyEvent);
        }

        public void e() {
            ScrollView scrollView = this.f56125h;
            if (scrollView != null) {
                scrollView.scrollTo(0, 0);
            }
        }

        public int getBackAlpha() {
            return this.f56121d;
        }

        public float getBackScaleX() {
            return this.f56119b;
        }

        public float getBackScaleY() {
            return this.f56120c;
        }

        public int getItemsCount() {
            return this.f56126i.getChildCount();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            Drawable drawable = f56117j;
            if (drawable != null) {
                drawable.setAlpha(this.f56121d);
                if (this.f56123f) {
                    f56117j.setBounds(0, (int) (getMeasuredHeight() * (1.0f - this.f56120c)), (int) (getMeasuredWidth() * this.f56119b), getMeasuredHeight());
                } else {
                    f56117j.setBounds(0, 0, (int) (getMeasuredWidth() * this.f56119b), (int) (getMeasuredHeight() * this.f56120c));
                }
                f56117j.draw(canvas);
            }
        }

        public void setBackAlpha(int i4) {
            this.f56121d = i4;
        }

        public void setBackScaleX(float f10) {
            this.f56119b = f10;
            invalidate();
        }

        public void setBackScaleY(float f10) {
            Integer num;
            Integer num2;
            this.f56120c = f10;
            if (a.f56109e) {
                int itemsCount = getItemsCount();
                for (int i4 = 0; i4 < itemsCount; i4++) {
                    d(i4).getVisibility();
                }
                int measuredHeight = getMeasuredHeight() - com.tangxiaolv.telegramgallery.Utils.a.g(16.0f);
                if (this.f56123f) {
                    for (int i10 = this.f56122e; i10 >= 0; i10--) {
                        View d4 = d(i10);
                        if (d4.getVisibility() == 0) {
                            if (this.f56124g.get(d4) != null && measuredHeight - ((num2.intValue() * com.tangxiaolv.telegramgallery.Utils.a.g(48.0f)) + com.tangxiaolv.telegramgallery.Utils.a.g(32.0f)) > measuredHeight * f10) {
                                break;
                            }
                            this.f56122e = i10 - 1;
                            f(d4);
                        }
                    }
                } else {
                    for (int i11 = this.f56122e; i11 < itemsCount; i11++) {
                        View d10 = d(i11);
                        if (d10.getVisibility() == 0) {
                            if (this.f56124g.get(d10) != null && ((num.intValue() + 1) * com.tangxiaolv.telegramgallery.Utils.a.g(48.0f)) - com.tangxiaolv.telegramgallery.Utils.a.g(24.0f) > measuredHeight * f10) {
                                break;
                            }
                            this.f56122e = i11 + 1;
                            f(d10);
                        }
                    }
                }
            }
            invalidate();
        }

        public void setDispatchKeyEventListener(e eVar) {
            this.f56118a = eVar;
        }

        public void setShowedFromBotton(boolean z9) {
            this.f56123f = z9;
        }
    }

    /* compiled from: ActionBarPopupWindow.java */
    /* loaded from: classes3.dex */
    public interface e {
        void a(KeyEvent keyEvent);
    }

    static {
        Field field = null;
        try {
            field = PopupWindow.class.getDeclaredField("mOnScrollChangedListener");
            field.setAccessible(true);
        } catch (NoSuchFieldException unused) {
        }
        f56108d = field;
        f56111g = new ViewTreeObserver$OnScrollChangedListenerC0481a();
    }

    public a() {
        g();
    }

    private void g() {
        Field field = f56108d;
        if (field != null) {
            try {
                this.f56113b = (ViewTreeObserver.OnScrollChangedListener) field.get(this);
                field.set(this, f56111g);
            } catch (Exception unused) {
                this.f56113b = null;
            }
        }
    }

    private void h(View view) {
        if (this.f56113b != null) {
            ViewTreeObserver viewTreeObserver = view.getWindowToken() != null ? view.getViewTreeObserver() : null;
            ViewTreeObserver viewTreeObserver2 = this.f56114c;
            if (viewTreeObserver != viewTreeObserver2) {
                if (viewTreeObserver2 != null && viewTreeObserver2.isAlive()) {
                    this.f56114c.removeOnScrollChangedListener(this.f56113b);
                }
                this.f56114c = viewTreeObserver;
                if (viewTreeObserver != null) {
                    viewTreeObserver.addOnScrollChangedListener(this.f56113b);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        ViewTreeObserver viewTreeObserver;
        if (this.f56113b == null || (viewTreeObserver = this.f56114c) == null) {
            return;
        }
        if (viewTreeObserver.isAlive()) {
            this.f56114c.removeOnScrollChangedListener(this.f56113b);
        }
        this.f56114c = null;
    }

    @Override // android.widget.PopupWindow
    public void dismiss() {
        f(true);
    }

    public void f(boolean z9) {
        setFocusable(false);
        if (f56109e && z9) {
            AnimatorSet animatorSet = this.f56112a;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            d dVar = (d) getContentView();
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.f56112a = animatorSet2;
            Animator[] animatorArr = new Animator[2];
            float[] fArr = new float[1];
            fArr[0] = com.tangxiaolv.telegramgallery.Utils.a.g(dVar.f56123f ? 5.0f : -5.0f);
            animatorArr[0] = ObjectAnimator.ofFloat(dVar, "translationY", fArr);
            animatorArr[1] = ObjectAnimator.ofFloat(dVar, "alpha", 0.0f);
            animatorSet2.playTogether(animatorArr);
            this.f56112a.setDuration(150L);
            this.f56112a.addListener(new c());
            this.f56112a.start();
            return;
        }
        try {
            super.dismiss();
        } catch (Exception unused) {
        }
        j();
    }

    public void i() {
        if (f56109e && this.f56112a == null) {
            d dVar = (d) getContentView();
            dVar.setTranslationY(0.0f);
            dVar.setAlpha(1.0f);
            dVar.setPivotX(dVar.getMeasuredWidth());
            dVar.setPivotY(0.0f);
            int itemsCount = dVar.getItemsCount();
            dVar.f56124g.clear();
            int i4 = 0;
            for (int i10 = 0; i10 < itemsCount; i10++) {
                View d4 = dVar.d(i10);
                if (d4.getVisibility() == 0) {
                    dVar.f56124g.put(d4, Integer.valueOf(i4));
                    d4.setAlpha(0.0f);
                    i4++;
                }
            }
            if (dVar.f56123f) {
                dVar.f56122e = itemsCount - 1;
            } else {
                dVar.f56122e = 0;
            }
            AnimatorSet animatorSet = new AnimatorSet();
            this.f56112a = animatorSet;
            animatorSet.playTogether(ObjectAnimator.ofFloat(dVar, "backScaleY", 0.0f, 1.0f), ObjectAnimator.ofInt(dVar, "backAlpha", 0, 255));
            this.f56112a.setDuration((i4 * 16) + 150);
            this.f56112a.addListener(new b());
            this.f56112a.start();
        }
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i4, int i10) {
        try {
            super.showAsDropDown(view, i4, i10);
            h(view);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // android.widget.PopupWindow
    public void showAtLocation(View view, int i4, int i10, int i11) {
        super.showAtLocation(view, i4, i10, i11);
        j();
    }

    @Override // android.widget.PopupWindow
    public void update(View view, int i4, int i10, int i11, int i12) {
        super.update(view, i4, i10, i11, i12);
        h(view);
    }

    public a(Context context) {
        super(context);
        g();
    }

    @Override // android.widget.PopupWindow
    public void update(View view, int i4, int i10) {
        super.update(view, i4, i10);
        h(view);
    }

    public a(int i4, int i10) {
        super(i4, i10);
        g();
    }

    public a(View view) {
        super(view);
        g();
    }

    public a(View view, int i4, int i10, boolean z9) {
        super(view, i4, i10, z9);
        g();
    }

    public a(View view, int i4, int i10) {
        super(view, i4, i10);
        g();
    }
}

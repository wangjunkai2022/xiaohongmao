package com.qennnsad.aknkaksd.presentation.ui.room.player.player.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.qennnsad.aknkaksd.presentation.ui.room.player.player.view.Constants;
import java.util.List;

/* loaded from: classes3.dex */
public class MySwipeView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private final int f54012a;

    /* renamed from: b  reason: collision with root package name */
    private final int f54013b;

    /* renamed from: c  reason: collision with root package name */
    private final int f54014c;

    /* renamed from: d  reason: collision with root package name */
    private List<View> f54015d;

    /* renamed from: e  reason: collision with root package name */
    private int f54016e;

    /* renamed from: f  reason: collision with root package name */
    private int f54017f;

    /* renamed from: g  reason: collision with root package name */
    private final ValueAnimator f54018g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f54019h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f54020i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f54021j;

    /* renamed from: k  reason: collision with root package name */
    private Constants.Orientation f54022k;

    /* loaded from: classes3.dex */
    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            Constants.Orientation orientation = MySwipeView.this.f54022k;
            Constants.Orientation orientation2 = Constants.Orientation.RIGHT;
            if (orientation.equals(orientation2) && MySwipeView.this.f54017f == MySwipeView.this.f54014c) {
                MySwipeView.this.f54022k = Constants.Orientation.LEFT;
            } else if (MySwipeView.this.f54022k.equals(Constants.Orientation.LEFT) && MySwipeView.this.f54017f == 0) {
                MySwipeView.this.f54022k = orientation2;
            }
            MySwipeView mySwipeView = MySwipeView.this;
            mySwipeView.f54016e = mySwipeView.f54017f;
            MySwipeView.this.f54019h = false;
        }
    }

    public MySwipeView(Context context) {
        this(context, null);
    }

    private void h(int i4) {
        int abs = Math.abs(i4);
        if (this.f54022k.equals(Constants.Orientation.RIGHT)) {
            int i10 = this.f54014c;
            if (abs > i10 / 3) {
                this.f54017f = i10;
                return;
            }
        }
        if (!this.f54022k.equals(Constants.Orientation.LEFT) || abs <= this.f54014c / 3) {
            return;
        }
        this.f54017f = 0;
    }

    private int i(int i4) {
        int abs = Math.abs(i4);
        return this.f54022k.equals(Constants.Orientation.RIGHT) ? abs - 50 : this.f54014c - (abs - 50);
    }

    private boolean k(int i4, int i10) {
        return Math.abs(i4 - i10) > 50;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        int i4 = this.f54017f - this.f54016e;
        List<View> list = this.f54015d;
        if (list != null) {
            for (View view : list) {
                view.setTranslationX((int) (this.f54016e + (i4 * floatValue)));
            }
        }
    }

    public boolean j(int i4, int i10) {
        return this.f54022k.equals(Constants.Orientation.RIGHT) ? i10 - i4 > 50 : i4 - i10 > 50;
    }

    public void m() {
        List<View> list = this.f54015d;
        if (list != null) {
            for (View view : list) {
                view.setTranslationX(0.0f);
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.f54020i) {
            int x9 = (int) motionEvent.getX();
            int action = motionEvent.getAction() & 255;
            if (action == 0) {
                this.f54021j = this.f54018g.isRunning();
                this.f54016e = x9;
            } else if (action == 2) {
                if (j(this.f54016e, x9) && !this.f54021j) {
                    this.f54019h = true;
                    requestDisallowInterceptTouchEvent(true);
                    return true;
                } else if (k(this.f54016e, x9)) {
                    return true;
                }
            }
            return super.onInterceptTouchEvent(motionEvent);
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0019, code lost:
        if (r2 != 5) goto L9;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            float r0 = r6.getX()
            int r0 = (int) r0
            int r1 = r5.f54016e
            int r1 = r0 - r1
            int r2 = r6.getAction()
            r2 = r2 & 255(0xff, float:3.57E-43)
            r3 = 1
            if (r2 == r3) goto L4a
            r4 = 2
            if (r2 == r4) goto L1c
            r3 = 3
            if (r2 == r3) goto L4a
            r3 = 5
            if (r2 == r3) goto L4a
            goto L6c
        L1c:
            int r2 = r5.f54016e
            boolean r0 = r5.j(r2, r0)
            if (r0 == 0) goto L6c
            boolean r0 = r5.f54019h
            if (r0 == 0) goto L6c
            boolean r0 = r5.f54020i
            if (r0 == 0) goto L6c
            java.util.List<android.view.View> r6 = r5.f54015d
            if (r6 == 0) goto L49
            java.util.Iterator r6 = r6.iterator()
        L34:
            boolean r0 = r6.hasNext()
            if (r0 == 0) goto L49
            java.lang.Object r0 = r6.next()
            android.view.View r0 = (android.view.View) r0
            int r2 = r5.i(r1)
            float r2 = (float) r2
            r0.setTranslationX(r2)
            goto L34
        L49:
            return r3
        L4a:
            r2 = 0
            r5.requestDisallowInterceptTouchEvent(r2)
            int r2 = r5.f54016e
            boolean r0 = r5.j(r2, r0)
            if (r0 == 0) goto L6c
            boolean r0 = r5.f54019h
            if (r0 == 0) goto L6c
            boolean r0 = r5.f54020i
            if (r0 == 0) goto L6c
            int r0 = r5.i(r1)
            r5.f54016e = r0
            r5.h(r1)
            android.animation.ValueAnimator r0 = r5.f54018g
            r0.start()
        L6c:
            boolean r6 = super.onTouchEvent(r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.ui.room.player.player.view.MySwipeView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void setIsEnabled(boolean z9) {
        this.f54020i = z9;
    }

    public void setSwipeContentView(List<View> list) {
        this.f54015d = list;
        this.f54022k = Constants.Orientation.RIGHT;
    }

    public MySwipeView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MySwipeView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f54012a = 50;
        this.f54013b = 0;
        this.f54014c = getResources().getDisplayMetrics().widthPixels;
        this.f54020i = true;
        this.f54022k = Constants.Orientation.RIGHT;
        ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(200L);
        this.f54018g = duration;
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.view.a
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                MySwipeView.this.l(valueAnimator);
            }
        });
        duration.addListener(new a());
    }
}

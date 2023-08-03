package com.qennnsad.aknkaksd.util;

import android.animation.Animator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import androidx.core.view.GestureDetectorCompat;
import com.facebook.common.callercontext.ContextChain;
import io.sentry.Session;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;
import timber.log.Timber;

/* compiled from: ScrollableLayout.kt */
@Metadata(bv = {}, d1 = {"\u0000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005*\u0001Z\u0018\u00002\u00020\u0001:\u0001(B'\b\u0007\u0012\u0006\u0010b\u001a\u00020a\u0012\n\b\u0002\u0010d\u001a\u0004\u0018\u00010c\u0012\b\b\u0002\u0010e\u001a\u00020\u0005¢\u0006\u0004\bf\u0010gJ/\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u001b\u0010\u000b\u001a\u00020\n2\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u000e\u001a\u00020\u0007H\u0002J\b\u0010\u000f\u001a\u00020\u0007H\u0002J\b\u0010\u0011\u001a\u00020\u0010H\u0002J\b\u0010\u0012\u001a\u00020\u0010H\u0002J\u0006\u0010\u0013\u001a\u00020\u0005J\b\u0010\u0014\u001a\u00020\u0007H\u0014J0\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0005H\u0014J\u000e\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0005J\u0019\u0010\u001d\u001a\u00020\u00072\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0019\u0010\u001f\u001a\u00020\u00072\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u001f\u0010\u001eJ\u0019\u0010 \u001a\u00020\u00072\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b \u0010\u001eJ\u0010\u0010#\u001a\u00020\u00102\u0006\u0010\"\u001a\u00020!H\u0016J\u0010\u0010%\u001a\u00020\u00102\u0006\u0010$\u001a\u00020!H\u0016J\u000e\u0010'\u001a\u00020\u00072\u0006\u0010&\u001a\u00020\u0002R\u0014\u0010*\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)R\"\u00102\u001a\u00020+8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\"\u00105\u001a\u00020+8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u000f\u0010-\u001a\u0004\b3\u0010/\"\u0004\b4\u00101R\"\u00108\u001a\u00020+8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u000b\u0010-\u001a\u0004\b6\u0010/\"\u0004\b7\u00101R\u0016\u0010:\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010)R$\u0010A\u001a\u0004\u0018\u00010;8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010<\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R\"\u0010G\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010B\u001a\u0004\bC\u0010D\"\u0004\bE\u0010FR\"\u0010J\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010B\u001a\u0004\bH\u0010D\"\u0004\bI\u0010FR\"\u0010P\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010K\u001a\u0004\bL\u0010M\"\u0004\bN\u0010OR\"\u0010S\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010K\u001a\u0004\bQ\u0010M\"\u0004\bR\u0010OR$\u0010Y\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bT\u0010U\u001a\u0004\bV\u0010W\"\u0004\bX\u0010\u001eR\u0014\u0010\\\u001a\u00020Z8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010[R\u0014\u0010`\u001a\u00020]8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b^\u0010_¨\u0006h"}, d2 = {"Lcom/qennnsad/aknkaksd/util/ScrollableLayout;", "Landroid/widget/FrameLayout;", "", "selectedItemNewPosition", "speed", "", "newPosition", "", "q", "(FLjava/lang/Float;Ljava/lang/Integer;)V", "Landroid/animation/Animator$AnimatorListener;", "d", "(Ljava/lang/Integer;)Landroid/animation/Animator$AnimatorListener;", "h", ContextChain.TAG_INFRA, "c", "", "f", "g", "getCurrentItem", "onFinishInflate", "changed", com.google.android.exoplayer2.text.ttml.d.f25720l0, "top", com.google.android.exoplayer2.text.ttml.d.f25723n0, "bottom", "onLayout", "item", "setCurrentItem", "j", "(Ljava/lang/Float;)V", "n", "l", "Landroid/view/MotionEvent;", "ev", "onInterceptTouchEvent", "event", "onTouchEvent", "distance", "p", "a", "I", "mTouchSlop", "Landroid/view/View;", "b", "Landroid/view/View;", "getPrevItem", "()Landroid/view/View;", "setPrevItem", "(Landroid/view/View;)V", "prevItem", "getSelectedItem", "setSelectedItem", "selectedItem", "getNextItem", "setNextItem", "nextItem", "e", "currentItem", "Lcom/qennnsad/aknkaksd/util/ScrollableLayout$a;", "Lcom/qennnsad/aknkaksd/util/ScrollableLayout$a;", "getScrollableLayoutListener", "()Lcom/qennnsad/aknkaksd/util/ScrollableLayout$a;", "setScrollableLayoutListener", "(Lcom/qennnsad/aknkaksd/util/ScrollableLayout$a;)V", "scrollableLayoutListener", "F", "getMinSpeed", "()F", "setMinSpeed", "(F)V", "minSpeed", "getThresholdSpeed", "setThresholdSpeed", "thresholdSpeed", "Z", "getAnimationIsRunning", "()Z", "setAnimationIsRunning", "(Z)V", "animationIsRunning", "getMIsScrolling", "setMIsScrolling", "mIsScrolling", "k", "Ljava/lang/Float;", "getLastEvY", "()Ljava/lang/Float;", "setLastEvY", "lastEvY", "com/qennnsad/aknkaksd/util/ScrollableLayout$c", "Lcom/qennnsad/aknkaksd/util/ScrollableLayout$c;", "gestureDetectorListener", "Landroidx/core/view/GestureDetectorCompat;", "m", "Landroidx/core/view/GestureDetectorCompat;", "gestureDetector", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", Session.b.f81849j, "defStyle", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class ScrollableLayout extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private final int f54510a;

    /* renamed from: b  reason: collision with root package name */
    public View f54511b;

    /* renamed from: c  reason: collision with root package name */
    public View f54512c;

    /* renamed from: d  reason: collision with root package name */
    public View f54513d;

    /* renamed from: e  reason: collision with root package name */
    private int f54514e;
    @m8.h

    /* renamed from: f  reason: collision with root package name */
    private a f54515f;

    /* renamed from: g  reason: collision with root package name */
    private float f54516g;

    /* renamed from: h  reason: collision with root package name */
    private float f54517h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f54518i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f54519j;
    @m8.h

    /* renamed from: k  reason: collision with root package name */
    private Float f54520k;
    @m8.g

    /* renamed from: l  reason: collision with root package name */
    private final c f54521l;
    @m8.g

    /* renamed from: m  reason: collision with root package name */
    private final GestureDetectorCompat f54522m;

    /* compiled from: ScrollableLayout.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0002H&J\u0010\u0010\t\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0002H&¨\u0006\n"}, d2 = {"Lcom/qennnsad/aknkaksd/util/ScrollableLayout$a;", "", "", "newPosition", "", "w", "currentPosition", "", "j", "k", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public interface a {
        boolean j(int i4);

        boolean k(int i4);

        void w(int i4);
    }

    /* compiled from: ScrollableLayout.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\t"}, d2 = {"com/qennnsad/aknkaksd/util/ScrollableLayout$b", "Landroid/animation/Animator$AnimatorListener;", "Landroid/animation/Animator;", "p0", "", "onAnimationStart", "onAnimationEnd", "onAnimationCancel", "onAnimationRepeat", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b implements Animator.AnimatorListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Integer f54523a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ScrollableLayout f54524b;

        b(Integer num, ScrollableLayout scrollableLayout) {
            this.f54523a = num;
            this.f54524b = scrollableLayout;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(@m8.g Animator p02) {
            Intrinsics.checkNotNullParameter(p02, "p0");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(@m8.g Animator p02) {
            Intrinsics.checkNotNullParameter(p02, "p0");
            kotlinx.coroutines.t0.b();
            Integer num = this.f54523a;
            ScrollableLayout scrollableLayout = this.f54524b;
            if (num != null) {
                scrollableLayout.setCurrentItem(num.intValue());
            }
            scrollableLayout.i();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(@m8.g Animator p02) {
            Intrinsics.checkNotNullParameter(p02, "p0");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(@m8.g Animator p02) {
            Intrinsics.checkNotNullParameter(p02, "p0");
        }
    }

    /* compiled from: ScrollableLayout.kt */
    @Metadata(bv = {}, d1 = {"\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J(\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J(\u0010\u000e\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005H\u0016¨\u0006\u000f"}, d2 = {"com/qennnsad/aknkaksd/util/ScrollableLayout$c", "Landroid/view/GestureDetector$SimpleOnGestureListener;", "Landroid/view/MotionEvent;", "e1", "e2", "", "distanceX", "distanceY", "", "onScroll", "e", "onDown", "velocityX", "velocityY", "onFling", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class c extends GestureDetector.SimpleOnGestureListener {
        c() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(@m8.g MotionEvent e4) {
            Intrinsics.checkNotNullParameter(e4, "e");
            return !ScrollableLayout.this.getAnimationIsRunning();
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(@m8.g MotionEvent e12, @m8.g MotionEvent e22, float f10, float f11) {
            Intrinsics.checkNotNullParameter(e12, "e1");
            Intrinsics.checkNotNullParameter(e22, "e2");
            ScrollableLayout.this.h(f11);
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(@m8.g MotionEvent e12, @m8.g MotionEvent e22, float f10, float f11) {
            Intrinsics.checkNotNullParameter(e12, "e1");
            Intrinsics.checkNotNullParameter(e22, "e2");
            ScrollableLayout.this.p(-f11);
            return true;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public ScrollableLayout(@m8.g Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public ScrollableLayout(@m8.g Context context, @m8.h AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ ScrollableLayout(Context context, AttributeSet attributeSet, int i4, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? null : attributeSet, (i10 & 4) != 0 ? 0 : i4);
    }

    private final void c() {
        getPrevItem().clearAnimation();
        getNextItem().clearAnimation();
        getSelectedItem().clearAnimation();
        this.f54518i = false;
    }

    private final Animator.AnimatorListener d(Integer num) {
        return new b(num, this);
    }

    static /* synthetic */ Animator.AnimatorListener e(ScrollableLayout scrollableLayout, Integer num, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            num = null;
        }
        return scrollableLayout.d(num);
    }

    private final boolean f() {
        a aVar = this.f54515f;
        if (aVar != null) {
            return aVar.j(this.f54514e);
        }
        return false;
    }

    private final boolean g() {
        a aVar = this.f54515f;
        if (aVar != null) {
            return aVar.k(this.f54514e);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h(float f10) {
        if (f10 < (-this.f54517h) && getSelectedItem().getY() <= 0.0f) {
            j(Float.valueOf(Math.abs(f10)));
        } else if (getSelectedItem().getY() < (-getSelectedItem().getHeight()) / 3 && f10 <= 0.0f) {
            j(Float.valueOf(Math.abs(f10)));
        } else if (getSelectedItem().getY() >= 0.0f && f10 > this.f54517h) {
            n(Float.valueOf(Math.abs(f10)));
        } else if (getSelectedItem().getY() > getSelectedItem().getHeight() / 3 && f10 >= 0.0f) {
            n(Float.valueOf(Math.abs(f10)));
        } else {
            m(this, null, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i() {
        getSelectedItem().setY(0.0f);
        getPrevItem().setY(-getPrevItem().getHeight());
        getNextItem().setY(getSelectedItem().getHeight());
        c();
        this.f54520k = null;
        this.f54519j = false;
    }

    public static /* synthetic */ void k(ScrollableLayout scrollableLayout, Float f10, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            f10 = null;
        }
        scrollableLayout.j(f10);
    }

    public static /* synthetic */ void m(ScrollableLayout scrollableLayout, Float f10, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            f10 = null;
        }
        scrollableLayout.l(f10);
    }

    public static /* synthetic */ void o(ScrollableLayout scrollableLayout, Float f10, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            f10 = null;
        }
        scrollableLayout.n(f10);
    }

    private final void q(float f10, Float f11, Integer num) {
        long roundToLong;
        c();
        float y9 = f10 - getSelectedItem().getY();
        roundToLong = MathKt__MathJVMKt.roundToLong((Math.abs(y9) / Math.max(f11 != null ? f11.floatValue() : 0.0f, this.f54516g)) * 1000);
        getPrevItem().animate().yBy(y9).setDuration(roundToLong).start();
        getNextItem().animate().yBy(y9).setDuration(roundToLong).start();
        getSelectedItem().animate().yBy(y9).setDuration(roundToLong).setListener(d(num)).start();
        this.f54518i = true;
    }

    static /* synthetic */ void r(ScrollableLayout scrollableLayout, float f10, Float f11, Integer num, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            f11 = null;
        }
        if ((i4 & 4) != 0) {
            num = null;
        }
        scrollableLayout.q(f10, f11, num);
    }

    public final boolean getAnimationIsRunning() {
        return this.f54518i;
    }

    public final int getCurrentItem() {
        return this.f54514e;
    }

    @m8.h
    public final Float getLastEvY() {
        return this.f54520k;
    }

    public final boolean getMIsScrolling() {
        return this.f54519j;
    }

    public final float getMinSpeed() {
        return this.f54516g;
    }

    @m8.g
    public final View getNextItem() {
        View view = this.f54513d;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("nextItem");
        return null;
    }

    @m8.g
    public final View getPrevItem() {
        View view = this.f54511b;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("prevItem");
        return null;
    }

    @m8.h
    public final a getScrollableLayoutListener() {
        return this.f54515f;
    }

    @m8.g
    public final View getSelectedItem() {
        View view = this.f54512c;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("selectedItem");
        return null;
    }

    public final float getThresholdSpeed() {
        return this.f54517h;
    }

    public final void j(@m8.h Float f10) {
        if (f()) {
            Timber.b bVar = Timber.f93860a;
            bVar.k("Start scrolling to next position from position " + this.f54514e, new Object[0]);
            q(-((float) getSelectedItem().getHeight()), f10, Integer.valueOf(this.f54514e + 1));
        }
    }

    public final void l(@m8.h Float f10) {
        Timber.f93860a.k("Start scrolling to original state", new Object[0]);
        r(this, 0.0f, f10, null, 4, null);
    }

    public final void n(@m8.h Float f10) {
        Timber.f93860a.k("Start scrolling to previous position", new Object[0]);
        if (g()) {
            q(getSelectedItem().getHeight(), f10, Integer.valueOf(this.f54514e - 1));
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        View childAt = getChildAt(2);
        Intrinsics.checkNotNullExpressionValue(childAt, "getChildAt(2)");
        setNextItem(childAt);
        View childAt2 = getChildAt(0);
        Intrinsics.checkNotNullExpressionValue(childAt2, "getChildAt(0)");
        setPrevItem(childAt2);
        View childAt3 = getChildAt(1);
        Intrinsics.checkNotNullExpressionValue(childAt3, "getChildAt(1)");
        setSelectedItem(childAt3);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(@m8.g MotionEvent ev) {
        Intrinsics.checkNotNullParameter(ev, "ev");
        Timber.b bVar = Timber.f93860a;
        Timber.c H = bVar.H("Scrollable.events");
        H.k("Got event " + ev, new Object[0]);
        int actionMasked = ev.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    if (this.f54519j) {
                        bVar.H("Scrollable.events").k("Already scrolling", new Object[0]);
                    } else {
                        float y9 = ev.getY();
                        Float f10 = this.f54520k;
                        float abs = Math.abs(y9 - (f10 != null ? f10.floatValue() : ev.getY()));
                        Timber.c H2 = bVar.H("Scrollable.events");
                        H2.k("Current diff: " + abs, new Object[0]);
                        this.f54520k = Float.valueOf(ev.getY());
                        if (abs <= this.f54510a) {
                            return false;
                        }
                        this.f54519j = true;
                    }
                    return true;
                } else if (actionMasked != 3) {
                    return false;
                }
            }
            this.f54519j = false;
            this.f54520k = null;
            onTouchEvent(ev);
            return false;
        }
        onTouchEvent(ev);
        return false;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z9, int i4, int i10, int i11, int i12) {
        super.onLayout(z9, i4, i10, i11, i12);
        if (z9) {
            float f10 = ((i12 - i10) * 1.0f) / 0.3f;
            this.f54516g = f10;
            this.f54517h = f10 / 4;
            i();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(@m8.g MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Timber.c H = Timber.f93860a.H("Scrollable.events");
        H.k("Got touch event " + event, new Object[0]);
        if (this.f54522m.onTouchEvent(event)) {
            return true;
        }
        if (event.getActionMasked() == 3 || event.getActionMasked() == 1) {
            h(0.0f);
        }
        return super.onTouchEvent(event);
    }

    public final void p(float f10) {
        if (!f()) {
            f10 = Math.max(f10, 0 - getSelectedItem().getY());
        }
        if (!g()) {
            f10 = Math.min(f10, 0 - getSelectedItem().getY());
        }
        Timber.b bVar = Timber.f93860a;
        bVar.k("Scroll " + f() + ' ' + g() + ' ' + f10 + ' ' + getSelectedItem().getY(), new Object[0]);
        View selectedItem = getSelectedItem();
        selectedItem.setY(selectedItem.getY() + f10);
        View prevItem = getPrevItem();
        prevItem.setY(prevItem.getY() + f10);
        View nextItem = getNextItem();
        nextItem.setY(nextItem.getY() + f10);
    }

    public final void setAnimationIsRunning(boolean z9) {
        this.f54518i = z9;
    }

    public final void setCurrentItem(int i4) {
        Timber.b bVar = Timber.f93860a;
        bVar.k("Selected item: " + i4, new Object[0]);
        this.f54514e = i4;
        a aVar = this.f54515f;
        if (aVar != null) {
            aVar.w(i4);
        }
    }

    public final void setLastEvY(@m8.h Float f10) {
        this.f54520k = f10;
    }

    public final void setMIsScrolling(boolean z9) {
        this.f54519j = z9;
    }

    public final void setMinSpeed(float f10) {
        this.f54516g = f10;
    }

    public final void setNextItem(@m8.g View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.f54513d = view;
    }

    public final void setPrevItem(@m8.g View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.f54511b = view;
    }

    public final void setScrollableLayoutListener(@m8.h a aVar) {
        this.f54515f = aVar;
    }

    public final void setSelectedItem(@m8.g View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.f54512c = view;
    }

    public final void setThresholdSpeed(float f10) {
        this.f54517h = f10;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public ScrollableLayout(@m8.g Context context, @m8.h AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f54510a = ViewConfiguration.get(context).getScaledTouchSlop();
        c cVar = new c();
        this.f54521l = cVar;
        this.f54522m = new GestureDetectorCompat(context, cVar);
    }
}

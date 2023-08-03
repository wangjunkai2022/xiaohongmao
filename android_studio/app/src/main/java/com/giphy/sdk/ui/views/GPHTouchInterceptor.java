package com.giphy.sdk.ui.views;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import com.facebook.common.callercontext.ContextChain;
import io.sentry.Session;
import io.sentry.protocol.y;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import timber.log.Timber;

/* compiled from: GPHTouchInterceptor.kt */
@Metadata(bv = {}, d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u00012\u00020\u0002B'\b\u0007\u0012\u0006\u0010W\u001a\u00020V\u0012\n\b\u0002\u0010Y\u001a\u0004\u0018\u00010X\u0012\b\b\u0002\u0010Z\u001a\u00020\t¢\u0006\u0004\b[\u0010\\J\u001a\u0010\b\u001a\u00020\u00072\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u001a\u0010\f\u001a\u0004\u0018\u00010\u00032\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0002J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0012\u0010\u000e\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016J \u0010\u000f\u001a\u00020\u00072\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tJ\u0012\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0013\u001a\u00020\u00072\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0014\u001a\u00020\u00072\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u0016J,\u0010\u001a\u001a\u00020\u00072\b\u0010\u0015\u001a\u0004\u0018\u00010\u00052\b\u0010\u0016\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u0017H\u0016J,\u0010\u001d\u001a\u00020\u00072\b\u0010\u0015\u001a\u0004\u0018\u00010\u00052\b\u0010\u0016\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u0017H\u0016J\u0012\u0010\u001e\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u0016R\u0016\u0010 \u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\u001fR\u0016\u0010\"\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010!R\u0016\u0010#\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010!R\u0016\u0010%\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010!R\u0016\u0010&\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010!R$\u0010-\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R.\u00102\u001a\u0004\u0018\u00010\u00032\b\u0010.\u001a\u0004\u0018\u00010\u00038\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b/\u0010(\u001a\u0004\b0\u0010*\"\u0004\b1\u0010,R\"\u0010:\u001a\u0002038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b4\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109R=\u0010E\u001a\u001d\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b<\u0012\b\b=\u0012\u0004\b\b(>\u0012\u0004\u0012\u00020\u00110;8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b?\u0010@\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR(\u0010M\u001a\b\u0012\u0004\u0012\u00020\u00110F8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bG\u0010H\u001a\u0004\bI\u0010J\"\u0004\bK\u0010LR(\u0010Q\u001a\b\u0012\u0004\u0012\u00020\u00110F8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bN\u0010H\u001a\u0004\bO\u0010J\"\u0004\bP\u0010LR\u0014\u0010U\u001a\u00020R8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bS\u0010T¨\u0006]"}, d2 = {"Lcom/giphy/sdk/ui/views/GPHTouchInterceptor;", "Landroid/widget/FrameLayout;", "Landroid/view/GestureDetector$OnGestureListener;", "Landroid/view/View;", "view", "Landroid/view/MotionEvent;", "event", "", "c", "", y.b.f83919g, y.b.f83920h, "a", "onInterceptTouchEvent", "onTouchEvent", "b", "e", "", "onShowPress", "onSingleTapUp", "onDown", "e1", "e2", "", "velocityX", "velocityY", "onFling", "distanceX", "distanceY", "onScroll", "onLongPress", "Z", "dragLock", "F", "startX", "startY", "d", "lastMoveX", "lastMoveY", "f", "Landroid/view/View;", "getDragView", "()Landroid/view/View;", "setDragView", "(Landroid/view/View;)V", "dragView", "value", "g", "getSlideView", "setSlideView", "slideView", "Landroid/view/GestureDetector;", "h", "Landroid/view/GestureDetector;", "getGestureDetector", "()Landroid/view/GestureDetector;", "setGestureDetector", "(Landroid/view/GestureDetector;)V", "gestureDetector", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "drag", ContextChain.TAG_INFRA, "Lkotlin/jvm/functions/Function1;", "getDragAccumulator", "()Lkotlin/jvm/functions/Function1;", "setDragAccumulator", "(Lkotlin/jvm/functions/Function1;)V", "dragAccumulator", "Lkotlin/Function0;", "j", "Lkotlin/jvm/functions/Function0;", "getDragRelease", "()Lkotlin/jvm/functions/Function0;", "setDragRelease", "(Lkotlin/jvm/functions/Function0;)V", "dragRelease", "k", "getTouchOutside", "setTouchOutside", "touchOutside", "Landroid/graphics/Rect;", "l", "Landroid/graphics/Rect;", "globalRect", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", Session.b.f81849j, "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class GPHTouchInterceptor extends FrameLayout implements GestureDetector.OnGestureListener {

    /* renamed from: a  reason: collision with root package name */
    private boolean f18954a;

    /* renamed from: b  reason: collision with root package name */
    private float f18955b;

    /* renamed from: c  reason: collision with root package name */
    private float f18956c;

    /* renamed from: d  reason: collision with root package name */
    private float f18957d;

    /* renamed from: e  reason: collision with root package name */
    private float f18958e;
    @m8.h

    /* renamed from: f  reason: collision with root package name */
    private View f18959f;
    @m8.h

    /* renamed from: g  reason: collision with root package name */
    private View f18960g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private GestureDetector f18961h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private Function1<? super Float, Unit> f18962i;
    @m8.g

    /* renamed from: j  reason: collision with root package name */
    private Function0<Unit> f18963j;
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private Function0<Unit> f18964k;

    /* renamed from: l  reason: collision with root package name */
    private final Rect f18965l;

    /* compiled from: GPHTouchInterceptor.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(F)V"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final class a extends Lambda implements Function1<Float, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18966a = new a();

        a() {
            super(1);
        }

        public final void a(float f10) {
            Timber.e("dragAccumulator " + f10, new Object[0]);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Float f10) {
            a(f10.floatValue());
            return Unit.INSTANCE;
        }
    }

    /* compiled from: GPHTouchInterceptor.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final class b extends Lambda implements Function0<Unit> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f18967a = new b();

        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            Timber.e("dragRelease", new Object[0]);
        }
    }

    /* compiled from: GPHTouchInterceptor.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final class c extends Lambda implements Function0<Unit> {

        /* renamed from: a  reason: collision with root package name */
        public static final c f18968a = new c();

        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            Timber.e("dragRelease", new Object[0]);
        }
    }

    @JvmOverloads
    public GPHTouchInterceptor(@m8.g Context context) {
        this(context, null, 0, 6, null);
    }

    @JvmOverloads
    public GPHTouchInterceptor(@m8.g Context context, @m8.h AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    public /* synthetic */ GPHTouchInterceptor(Context context, AttributeSet attributeSet, int i4, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? null : attributeSet, (i10 & 4) != 0 ? 0 : i4);
    }

    private final View a(int i4, int i10) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View child = getChildAt(childCount);
            Intrinsics.checkNotNullExpressionValue(child, "child");
            if (i4 >= child.getLeft() && i4 < child.getRight() && i10 >= child.getTop() && i10 < child.getBottom()) {
                return child;
            }
        }
        return null;
    }

    private final boolean c(View view, MotionEvent motionEvent) {
        if (view == null || view.getGlobalVisibleRect(this.f18965l)) {
            return this.f18965l.contains((int) motionEvent.getRawX(), (int) motionEvent.getRawY());
        }
        return false;
    }

    public final boolean b(@m8.h View view, int i4, int i10) {
        return view != null && i4 >= view.getLeft() && i4 < view.getRight() && i10 >= view.getTop() && i10 < view.getBottom();
    }

    @m8.g
    public final Function1<Float, Unit> getDragAccumulator() {
        return this.f18962i;
    }

    @m8.g
    public final Function0<Unit> getDragRelease() {
        return this.f18963j;
    }

    @m8.h
    public final View getDragView() {
        return this.f18959f;
    }

    @m8.g
    public final GestureDetector getGestureDetector() {
        return this.f18961h;
    }

    @m8.h
    public final View getSlideView() {
        return this.f18960g;
    }

    @m8.g
    public final Function0<Unit> getTouchOutside() {
        return this.f18964k;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onDown(@m8.h MotionEvent motionEvent) {
        if (motionEvent == null || c(this.f18960g, motionEvent)) {
            return false;
        }
        Timber.e("user tapped outside", new Object[0]);
        this.f18964k.invoke();
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onFling(@m8.h MotionEvent motionEvent, @m8.h MotionEvent motionEvent2, float f10, float f11) {
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0020, code lost:
        if (r1 != 3) goto L9;
     */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onInterceptTouchEvent(@m8.g android.view.MotionEvent r6) {
        /*
            r5 = this;
            java.lang.String r0 = "event"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            r0 = 0
            java.lang.Object[] r1 = new java.lang.Object[r0]
            java.lang.String r2 = "onInterceptTouchEvent"
            timber.log.Timber.e(r2, r1)
            r6.getX()
            r6.getY()
            int r1 = r6.getActionMasked()
            if (r1 == 0) goto L76
            r2 = 1
            if (r1 == r2) goto L73
            r3 = 2
            if (r1 == r3) goto L23
            r2 = 3
            if (r1 == r2) goto L73
            goto L8d
        L23:
            java.lang.Object[] r1 = new java.lang.Object[r0]
            java.lang.String r3 = "onInterceptTouch move"
            timber.log.Timber.e(r3, r1)
            float r1 = r6.getX()
            float r3 = r5.f18955b
            float r1 = r1 - r3
            r5.f18957d = r1
            float r1 = r6.getY()
            float r3 = r5.f18956c
            float r1 = r1 - r3
            r5.f18958e = r1
            android.view.View r1 = r5.f18959f
            boolean r1 = r5.c(r1, r6)
            if (r1 == 0) goto L8d
            float r1 = r5.f18958e
            float r1 = java.lang.Math.abs(r1)
            android.content.Context r3 = r5.getContext()
            android.view.ViewConfiguration r3 = android.view.ViewConfiguration.get(r3)
            java.lang.String r4 = "ViewConfiguration.get(context)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)
            int r3 = r3.getScaledTouchSlop()
            float r3 = (float) r3
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 <= 0) goto L8d
            boolean r1 = r5.f18954a
            if (r1 != 0) goto L70
            float r1 = r6.getX()
            r5.f18955b = r1
            float r1 = r6.getY()
            r5.f18956c = r1
        L70:
            r5.f18954a = r2
            goto L8d
        L73:
            r5.f18954a = r0
            goto L8d
        L76:
            float r1 = r6.getX()
            r5.f18955b = r1
            float r1 = r6.getY()
            r5.f18956c = r1
            android.view.View r1 = r5.f18959f
            boolean r1 = r5.c(r1, r6)
            if (r1 == 0) goto L8d
            r5.f18954a = r0
            return r0
        L8d:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "onInterceptTouch "
            r1.append(r2)
            int r2 = r6.getAction()
            r1.append(r2)
            r2 = 32
            r1.append(r2)
            int r3 = r6.getActionMasked()
            r1.append(r3)
            r1.append(r2)
            float r6 = r6.getY()
            r1.append(r6)
            r1.append(r2)
            boolean r6 = r5.f18954a
            r1.append(r6)
            java.lang.String r6 = r1.toString()
            java.lang.Object[] r0 = new java.lang.Object[r0]
            timber.log.Timber.e(r6, r0)
            boolean r6 = r5.f18954a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.giphy.sdk.ui.views.GPHTouchInterceptor.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onLongPress(@m8.h MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onScroll(@m8.h MotionEvent motionEvent, @m8.h MotionEvent motionEvent2, float f10, float f11) {
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onShowPress(@m8.h MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(@m8.h MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.View
    public boolean onTouchEvent(@m8.h MotionEvent motionEvent) {
        Timber.e("onTouchEvent " + this.f18954a, new Object[0]);
        this.f18961h.onTouchEvent(motionEvent);
        Integer valueOf = motionEvent != null ? Integer.valueOf(motionEvent.getAction()) : null;
        if (valueOf != null && valueOf.intValue() == 0) {
            this.f18955b = motionEvent.getX();
            this.f18956c = motionEvent.getY();
        } else if (valueOf != null && valueOf.intValue() == 2) {
            float abs = Math.abs(this.f18958e);
            ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
            Intrinsics.checkNotNullExpressionValue(viewConfiguration, "ViewConfiguration.get(context)");
            if (abs > viewConfiguration.getScaledTouchSlop()) {
                if (!this.f18954a) {
                    this.f18955b = motionEvent.getX();
                    this.f18956c = motionEvent.getY();
                }
                this.f18954a = true;
            }
            Timber.e("onMove " + motionEvent.getX() + ' ' + motionEvent.getY(), new Object[0]);
            this.f18957d = motionEvent.getX() - this.f18955b;
            this.f18958e = motionEvent.getY() - this.f18956c;
            if (this.f18954a) {
                this.f18957d = motionEvent.getX() - this.f18955b;
                float y9 = motionEvent.getY() - this.f18956c;
                this.f18958e = y9;
                this.f18962i.invoke(Float.valueOf(y9));
                this.f18955b = motionEvent.getX();
                this.f18956c = motionEvent.getY();
            }
        } else if ((valueOf != null && valueOf.intValue() == 1) || (valueOf != null && valueOf.intValue() == 3)) {
            this.f18963j.invoke();
            this.f18954a = false;
        }
        return this.f18954a;
    }

    public final void setDragAccumulator(@m8.g Function1<? super Float, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.f18962i = function1;
    }

    public final void setDragRelease(@m8.g Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.f18963j = function0;
    }

    public final void setDragView(@m8.h View view) {
        this.f18959f = view;
    }

    public final void setGestureDetector(@m8.g GestureDetector gestureDetector) {
        Intrinsics.checkNotNullParameter(gestureDetector, "<set-?>");
        this.f18961h = gestureDetector;
    }

    public final void setSlideView(@m8.h View view) {
        this.f18960g = view;
        if (view != null) {
            view.setOnClickListener(null);
        }
        if (view != null) {
            view.setClickable(true);
        }
        if (view != null) {
            view.setFocusableInTouchMode(false);
        }
        if (view != null) {
            view.setFocusable(false);
        }
    }

    public final void setTouchOutside(@m8.g Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.f18964k = function0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public GPHTouchInterceptor(@m8.g Context context, @m8.h AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f18961h = new GestureDetector(context, this);
        this.f18962i = a.f18966a;
        this.f18963j = b.f18967a;
        this.f18964k = c.f18968a;
        this.f18965l = new Rect();
    }
}

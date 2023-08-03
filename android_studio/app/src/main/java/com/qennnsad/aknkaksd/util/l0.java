package com.qennnsad.aknkaksd.util;

import android.annotation.SuppressLint;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.InputDeviceCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import io.sentry.protocol.y;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;

/* compiled from: GestureUtil.kt */
@Metadata(bv = {}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u001c\u0010\u0007\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003H\u0007J\u0012\u0010\n\u001a\u00020\u0006*\u00020\b2\u0006\u0010\t\u001a\u00020\u0002J\u0012\u0010\u000b\u001a\u00020\u0006*\u00020\b2\u0006\u0010\t\u001a\u00020\u0002J\u0012\u0010\f\u001a\u00020\u0006*\u00020\b2\u0006\u0010\t\u001a\u00020\u0002J\u0012\u0010\r\u001a\u00020\u0006*\u00020\b2\u0006\u0010\t\u001a\u00020\u0002J\"\u0010\u0010\u001a\u00020\u0006*\u00020\b2\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0003JZ\u0010\u001b\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u0002¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u0019\u0012\u0015\u0012\u0013\u0018\u00010\u0002¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u001a\u0012\u0004\u0012\u00020\u00060\u0016*\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00122\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0014H\u0007¨\u0006\u001e"}, d2 = {"Lcom/qennnsad/aknkaksd/util/l0;", "", "Landroid/view/View;", "", y.b.f83919g, y.b.f83920h, "", "h", "Landroid/view/ViewGroup;", TypedValues.Attributes.S_TARGET, "c", "d", "e", "b", "distanceX", "distanceY", "a", "Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;", "Landroidx/recyclerview/widget/RecyclerView;", "rv", "Lkotlin/Function0;", "refreshFromBottomRoutine", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "header", "footer", "f", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class l0 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final l0 f54819a = new l0();

    /* compiled from: GestureUtil.kt */
    @Metadata(bv = {}, d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0016\u0010\r\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\n¨\u0006\u000e"}, d2 = {"com/qennnsad/aknkaksd/util/l0$a", "Landroid/view/View$OnTouchListener;", "Landroid/view/View;", "v", "Landroid/view/MotionEvent;", "event", "", "onTouch", "", "a", "F", "thresholdY", "b", "initialMoveY", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a implements View.OnTouchListener {

        /* renamed from: a  reason: collision with root package name */
        private final float f54820a;

        /* renamed from: b  reason: collision with root package name */
        private float f54821b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ RecyclerView f54822c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Ref.BooleanRef f54823d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f54824e;

        a(SwipeRefreshLayout swipeRefreshLayout, RecyclerView recyclerView, Ref.BooleanRef booleanRef, Function0<Unit> function0) {
            this.f54822c = recyclerView;
            this.f54823d = booleanRef;
            this.f54824e = function0;
            this.f54820a = 64 * swipeRefreshLayout.getContext().getResources().getDisplayMetrics().density;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(@m8.h View view, @m8.h MotionEvent motionEvent) {
            Function0<Unit> function0;
            if (motionEvent != null && motionEvent.getActionMasked() == 1) {
                boolean canScrollVertically = this.f54822c.canScrollVertically(1);
                this.f54823d.element = !canScrollVertically && this.f54821b - motionEvent.getY() >= this.f54820a;
                if (this.f54823d.element && (function0 = this.f54824e) != null) {
                    function0.invoke();
                }
            }
            if (motionEvent != null && motionEvent.getActionMasked() == 0) {
                this.f54821b = motionEvent.getY();
            }
            if (motionEvent != null && motionEvent.getActionMasked() == 2) {
                if (this.f54821b == 0.0f) {
                    this.f54821b = motionEvent.getY();
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GestureUtil.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\b\u0010\u0001\u001a\u0004\u0018\u00010\u00002\b\u0010\u0002\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Landroid/view/View;", "header", "footer", "", "a", "(Landroid/view/View;Landroid/view/View;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function2<View, View, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Ref.BooleanRef f54825a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ SwipeRefreshLayout f54826b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ RecyclerView f54827c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: GestureUtil.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class a extends Lambda implements Function0<Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ View f54828a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ View f54829b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(View view, View view2) {
                super(0);
                this.f54828a = view;
                this.f54829b = view2;
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            @Override // kotlin.jvm.functions.Function0
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                View view = this.f54828a;
                if (view != null) {
                    view.setVisibility(4);
                }
                View view2 = this.f54829b;
                if (view2 == null) {
                    return;
                }
                view2.setVisibility(4);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Ref.BooleanRef booleanRef, SwipeRefreshLayout swipeRefreshLayout, RecyclerView recyclerView) {
            super(2);
            this.f54825a = booleanRef;
            this.f54826b = swipeRefreshLayout;
            this.f54827c = recyclerView;
        }

        public final void a(@m8.h View view, @m8.h View view2) {
            a aVar = new a(view, view2);
            if (this.f54825a.element) {
                if (this.f54826b.isRefreshing()) {
                    if (view2 != null) {
                        view2.setVisibility(0);
                    }
                    s1.R(this.f54827c, 0, 0, -this.f54826b.getProgressViewEndOffset(), null, 9, null);
                    return;
                }
                s1.P(this.f54827c, 0, -this.f54826b.getProgressViewEndOffset(), 0, aVar, 1, null);
            } else if (this.f54826b.isRefreshing()) {
                if (view != null) {
                    view.setVisibility(0);
                }
                s1.P(this.f54827c, 0, 0, this.f54826b.getProgressViewEndOffset(), null, 9, null);
            } else {
                s1.R(this.f54827c, 0, this.f54826b.getProgressViewEndOffset(), 0, aVar, 1, null);
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(View view, View view2) {
            a(view, view2);
            return Unit.INSTANCE;
        }
    }

    private l0() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Function2 g(l0 l0Var, SwipeRefreshLayout swipeRefreshLayout, RecyclerView recyclerView, Function0 function0, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            function0 = null;
        }
        return l0Var.f(swipeRefreshLayout, recyclerView, function0);
    }

    @JvmStatic
    public static final void h(@m8.g View view, float f10, float f11) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        long uptimeMillis = SystemClock.uptimeMillis();
        long uptimeMillis2 = SystemClock.uptimeMillis();
        MotionEvent.PointerProperties pointerProperties = new MotionEvent.PointerProperties();
        pointerProperties.id = 0;
        pointerProperties.toolType = 1;
        MotionEvent.PointerProperties[] pointerPropertiesArr = {pointerProperties};
        MotionEvent.PointerCoords pointerCoords = new MotionEvent.PointerCoords();
        pointerCoords.x = f10;
        pointerCoords.y = f11;
        pointerCoords.pressure = 1.0f;
        pointerCoords.size = 1.0f;
        MotionEvent.PointerCoords[] pointerCoordsArr = {pointerCoords};
        view.dispatchTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis2, 0, 1, pointerPropertiesArr, pointerCoordsArr, 0, 0, 1.0f, 1.0f, 0, 0, 0, 0));
        view.dispatchTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis2, 1, 1, pointerPropertiesArr, pointerCoordsArr, 0, 0, 1.0f, 1.0f, 0, 0, 0, 0));
    }

    public final void a(@m8.g ViewGroup viewGroup, @m8.g View target, float f10, float f11) {
        int[] iArr;
        int[] iArr2;
        Intrinsics.checkNotNullParameter(viewGroup, "<this>");
        Intrinsics.checkNotNullParameter(target, "target");
        viewGroup.getLocationInWindow(new int[]{0, 0});
        target.getLocationInWindow(new int[]{0, 0});
        float f12 = iArr2[0] + 1.0f;
        float f13 = iArr2[1] + 1.0f;
        float f14 = (iArr2[1] - iArr[1]) + 1.0f;
        long uptimeMillis = SystemClock.uptimeMillis();
        long uptimeMillis2 = SystemClock.uptimeMillis();
        float f15 = (iArr2[0] - iArr[0]) + 1.0f;
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis2, 0, f12, f13, 0);
        obtain.setLocation(f15, f14);
        obtain.setSource(InputDeviceCompat.SOURCE_TOUCHSCREEN);
        viewGroup.dispatchTouchEvent(obtain);
        int i4 = 0;
        while (true) {
            if (!(i4 >= 0 && i4 <= 20)) {
                break;
            }
            float f16 = i4;
            float f17 = 20;
            float f18 = (f16 * f10) / f17;
            float f19 = f12 + f18;
            float f20 = (f16 * f11) / f17;
            float f21 = f13 + f20;
            float f22 = f18 + f15;
            float f23 = f20 + f14;
            if (f19 <= 10.0f || f21 <= 10.0f) {
                break;
            }
            uptimeMillis2++;
            float f24 = f15;
            MotionEvent obtain2 = MotionEvent.obtain(uptimeMillis, uptimeMillis2, 2, f19, f21, 0);
            obtain2.setLocation(f22, f23);
            obtain2.setSource(InputDeviceCompat.SOURCE_TOUCHSCREEN);
            viewGroup.dispatchTouchEvent(obtain2);
            i4++;
            f15 = f24;
        }
        float f25 = i4;
        float f26 = f25 * f10;
        float f27 = f25 * f11;
        MotionEvent obtain3 = MotionEvent.obtain(uptimeMillis, uptimeMillis2 + 1, 1, f12 + f26, f13 + f27, 0);
        obtain3.setLocation(f15 + f26, f14 + f27);
        obtain3.setSource(InputDeviceCompat.SOURCE_TOUCHSCREEN);
        viewGroup.dispatchTouchEvent(obtain3);
    }

    public final void b(@m8.g ViewGroup viewGroup, @m8.g View target) {
        Intrinsics.checkNotNullParameter(viewGroup, "<this>");
        Intrinsics.checkNotNullParameter(target, "target");
        a(viewGroup, target, 0.0f, viewGroup.getWidth() * 0.5f);
    }

    public final void c(@m8.g ViewGroup viewGroup, @m8.g View target) {
        Intrinsics.checkNotNullParameter(viewGroup, "<this>");
        Intrinsics.checkNotNullParameter(target, "target");
        a(viewGroup, target, (-viewGroup.getWidth()) * 0.5f, 0.0f);
    }

    public final void d(@m8.g ViewGroup viewGroup, @m8.g View target) {
        Intrinsics.checkNotNullParameter(viewGroup, "<this>");
        Intrinsics.checkNotNullParameter(target, "target");
        a(viewGroup, target, viewGroup.getWidth() * 0.5f, 0.0f);
    }

    public final void e(@m8.g ViewGroup viewGroup, @m8.g View target) {
        Intrinsics.checkNotNullParameter(viewGroup, "<this>");
        Intrinsics.checkNotNullParameter(target, "target");
        a(viewGroup, target, 0.0f, (-viewGroup.getHeight()) * 0.5f);
    }

    @m8.g
    @SuppressLint({"ClickableViewAccessibility"})
    public final Function2<View, View, Unit> f(@m8.g SwipeRefreshLayout swipeRefreshLayout, @m8.g RecyclerView rv, @m8.h Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(swipeRefreshLayout, "<this>");
        Intrinsics.checkNotNullParameter(rv, "rv");
        boolean z9 = function0 != null;
        Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        if (z9) {
            rv.setOnTouchListener(new a(swipeRefreshLayout, rv, booleanRef, function0));
        }
        return new b(booleanRef, swipeRefreshLayout, rv);
    }
}

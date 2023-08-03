package com.qennnsad.aknkaksd.util;

import android.annotation.SuppressLint;
import android.view.MotionEvent;
import android.view.View;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;

/* compiled from: DebugInfoUtil.kt */
@u7.f
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J$\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u0006H\u0007J \u0010\f\u001a\u00020\b*\u00020\u00022\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\b0\nH\u0007¨\u0006\u0011"}, d2 = {"Lcom/qennnsad/aknkaksd/util/q;", "", "Landroid/view/View;", "view", "", "clicksCount", "", "debugInfo", "", "d", "Lkotlin/Function1;", "onClick", "f", "Lg5/a;", "localDataManager", "<init>", "(Lg5/a;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class q {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final g5.a f54883a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DebugInfoUtil.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Landroid/view/View;", "it", "", "a", "(Landroid/view/View;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a extends Lambda implements Function1<View, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Ref.IntRef f54884a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f54885b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ View f54886c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f54887d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Ref.IntRef intRef, int i4, View view, String str) {
            super(1);
            this.f54884a = intRef;
            this.f54885b = i4;
            this.f54886c = view;
            this.f54887d = str;
        }

        public final void a(@m8.g View it) {
            Intrinsics.checkNotNullParameter(it, "it");
            Ref.IntRef intRef = this.f54884a;
            int i4 = intRef.element + 1;
            intRef.element = i4;
            if (i4 >= this.f54885b) {
                intRef.element = 0;
                com.qennnsad.aknkaksd.util.toast.a.q(this.f54886c.getContext(), this.f54887d, false, 4, null);
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(View view) {
            a(view);
            return Unit.INSTANCE;
        }
    }

    @u7.a
    public q(@m8.g g5.a localDataManager) {
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        this.f54883a = localDataManager;
    }

    public static /* synthetic */ void e(q qVar, View view, int i4, String str, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            i4 = 10;
        }
        if ((i10 & 4) != 0) {
            str = qVar.f54883a.g().getHost();
            Intrinsics.checkNotNullExpressionValue(str, "localDataManager.getDns().host");
        }
        qVar.d(view, i4, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean g(Ref.IntRef primaryPointerId, Ref.IntRef secondaryPointerId, Function1 onClick, View v9, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(primaryPointerId, "$primaryPointerId");
        Intrinsics.checkNotNullParameter(secondaryPointerId, "$secondaryPointerId");
        Intrinsics.checkNotNullParameter(onClick, "$onClick");
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            primaryPointerId.element = motionEvent.getPointerId(0);
        } else if (actionMasked == 1) {
            if (primaryPointerId.element > -1 && secondaryPointerId.element > -1) {
                h(primaryPointerId, secondaryPointerId);
                Intrinsics.checkNotNullExpressionValue(v9, "v");
                onClick.invoke(v9);
                return true;
            }
            h(primaryPointerId, secondaryPointerId);
            return false;
        } else if (actionMasked == 2) {
            h(primaryPointerId, secondaryPointerId);
        } else if (actionMasked == 5) {
            secondaryPointerId.element = motionEvent.getPointerId(motionEvent.getActionIndex());
        }
        return true;
    }

    private static final void h(Ref.IntRef intRef, Ref.IntRef intRef2) {
        intRef.element = -1;
        intRef2.element = -1;
    }

    @JvmOverloads
    public final void b(@m8.g View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        e(this, view, 0, null, 6, null);
    }

    @JvmOverloads
    public final void c(@m8.g View view, int i4) {
        Intrinsics.checkNotNullParameter(view, "view");
        e(this, view, i4, null, 4, null);
    }

    @JvmOverloads
    public final void d(@m8.g View view, int i4, @m8.g String debugInfo) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(debugInfo, "debugInfo");
        f(view, new a(new Ref.IntRef(), i4, view, debugInfo));
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public final void f(@m8.g View view, @m8.g final Function1<? super View, Unit> onClick) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        final Ref.IntRef intRef = new Ref.IntRef();
        intRef.element = -1;
        final Ref.IntRef intRef2 = new Ref.IntRef();
        intRef2.element = -1;
        view.setOnTouchListener(new View.OnTouchListener() { // from class: com.qennnsad.aknkaksd.util.p
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                boolean g4;
                g4 = q.g(Ref.IntRef.this, intRef2, onClick, view2, motionEvent);
                return g4;
            }
        });
    }
}

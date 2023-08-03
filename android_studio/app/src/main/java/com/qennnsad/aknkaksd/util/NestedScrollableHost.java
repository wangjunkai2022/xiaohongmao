package com.qennnsad.aknkaksd.util;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import androidx.viewpager2.widget.ViewPager2;
import io.sentry.Session;
import io.sentry.protocol.Device;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NestedScrollableHost.kt */
@Metadata(bv = {}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b\u001d\u0010\u001eB\u001b\b\u0016\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\b\u0010 \u001a\u0004\u0018\u00010\u001f¢\u0006\u0004\b\u001d\u0010!J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0002J\u0010\u0010\f\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016R\u0016\u0010\u000e\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\rR\u0016\u0010\u0010\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\u000fR\u0016\u0010\u0012\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u000fR\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u00138BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u001a\u001a\u0004\u0018\u00010\u00178BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019¨\u0006\""}, d2 = {"Lcom/qennnsad/aknkaksd/util/NestedScrollableHost;", "Landroid/widget/FrameLayout;", "", Device.b.f83600k, "", "delta", "", "a", "Landroid/view/MotionEvent;", "e", "", "b", "onInterceptTouchEvent", "I", "touchSlop", "F", "initialX", "c", "initialY", "Landroidx/viewpager2/widget/ViewPager2;", "getParentViewPager", "()Landroidx/viewpager2/widget/ViewPager2;", "parentViewPager", "Landroid/view/View;", "getChild", "()Landroid/view/View;", "child", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", Session.b.f81849j, "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class NestedScrollableHost extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private int f54507a;

    /* renamed from: b  reason: collision with root package name */
    private float f54508b;

    /* renamed from: c  reason: collision with root package name */
    private float f54509c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NestedScrollableHost(@m8.g Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f54507a = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    }

    private final boolean a(int i4, float f10) {
        int i10 = -((int) Math.signum(f10));
        if (i4 == 0) {
            View child = getChild();
            if (child != null) {
                return child.canScrollHorizontally(i10);
            }
            return false;
        } else if (i4 == 1) {
            View child2 = getChild();
            if (child2 != null) {
                return child2.canScrollVertically(i10);
            }
            return false;
        } else {
            throw new IllegalArgumentException();
        }
    }

    private final void b(MotionEvent motionEvent) {
        ViewPager2 parentViewPager = getParentViewPager();
        if (parentViewPager != null) {
            int orientation = parentViewPager.getOrientation();
            if (a(orientation, -1.0f) || a(orientation, 1.0f)) {
                if (motionEvent.getAction() == 0) {
                    this.f54508b = motionEvent.getX();
                    this.f54509c = motionEvent.getY();
                    getParent().requestDisallowInterceptTouchEvent(true);
                } else if (motionEvent.getAction() == 2) {
                    float x9 = motionEvent.getX() - this.f54508b;
                    float y9 = motionEvent.getY() - this.f54509c;
                    boolean z9 = orientation == 0;
                    float abs = Math.abs(x9) * (z9 ? 0.5f : 1.0f);
                    float abs2 = Math.abs(y9) * (z9 ? 1.0f : 0.5f);
                    int i4 = this.f54507a;
                    if (abs > i4 || abs2 > i4) {
                        if (z9 == (abs2 > abs)) {
                            getParent().requestDisallowInterceptTouchEvent(false);
                            return;
                        }
                        if (!z9) {
                            x9 = y9;
                        }
                        if (a(orientation, x9)) {
                            getParent().requestDisallowInterceptTouchEvent(true);
                        } else {
                            getParent().requestDisallowInterceptTouchEvent(false);
                        }
                    }
                }
            }
        }
    }

    private final View getChild() {
        if (getChildCount() > 0) {
            return getChildAt(0);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001b A[LOOP:0: B:6:0x000d->B:11:0x001b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0022  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x000c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:5:0x000c -> B:6:0x000d). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final androidx.viewpager2.widget.ViewPager2 getParentViewPager() {
        /*
            r3 = this;
            android.view.ViewParent r0 = r3.getParent()
            boolean r1 = r0 instanceof android.view.View
            r2 = 0
            if (r1 == 0) goto Lc
            android.view.View r0 = (android.view.View) r0
            goto Ld
        Lc:
            r0 = r2
        Ld:
            if (r0 == 0) goto L1e
            boolean r1 = r0 instanceof androidx.viewpager2.widget.ViewPager2
            if (r1 != 0) goto L1e
            android.view.ViewParent r0 = r0.getParent()
            boolean r1 = r0 instanceof android.view.View
            if (r1 == 0) goto Lc
            android.view.View r0 = (android.view.View) r0
            goto Ld
        L1e:
            boolean r1 = r0 instanceof androidx.viewpager2.widget.ViewPager2
            if (r1 == 0) goto L25
            r2 = r0
            androidx.viewpager2.widget.ViewPager2 r2 = (androidx.viewpager2.widget.ViewPager2) r2
        L25:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.util.NestedScrollableHost.getParentViewPager():androidx.viewpager2.widget.ViewPager2");
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(@m8.g MotionEvent e4) {
        Intrinsics.checkNotNullParameter(e4, "e");
        b(e4);
        return super.onInterceptTouchEvent(e4);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NestedScrollableHost(@m8.g Context context, @m8.h AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f54507a = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    }
}

package androidx.core.widget;

import android.content.Context;
import android.view.animation.Interpolator;
import android.widget.OverScroller;

@Deprecated
/* loaded from: classes.dex */
public final class ScrollerCompat {
    OverScroller mScroller;

    ScrollerCompat(Context context, Interpolator interpolator) {
        this.mScroller = interpolator != null ? new OverScroller(context, interpolator) : new OverScroller(context);
    }

    @Deprecated
    public static ScrollerCompat create(Context context) {
        return create(context, null);
    }

    @Deprecated
    public void abortAnimation() {
        this.mScroller.abortAnimation();
    }

    @Deprecated
    public boolean computeScrollOffset() {
        return this.mScroller.computeScrollOffset();
    }

    @Deprecated
    public void fling(int i4, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        this.mScroller.fling(i4, i10, i11, i12, i13, i14, i15, i16);
    }

    @Deprecated
    public float getCurrVelocity() {
        return this.mScroller.getCurrVelocity();
    }

    @Deprecated
    public int getCurrX() {
        return this.mScroller.getCurrX();
    }

    @Deprecated
    public int getCurrY() {
        return this.mScroller.getCurrY();
    }

    @Deprecated
    public int getFinalX() {
        return this.mScroller.getFinalX();
    }

    @Deprecated
    public int getFinalY() {
        return this.mScroller.getFinalY();
    }

    @Deprecated
    public boolean isFinished() {
        return this.mScroller.isFinished();
    }

    @Deprecated
    public boolean isOverScrolled() {
        return this.mScroller.isOverScrolled();
    }

    @Deprecated
    public void notifyHorizontalEdgeReached(int i4, int i10, int i11) {
        this.mScroller.notifyHorizontalEdgeReached(i4, i10, i11);
    }

    @Deprecated
    public void notifyVerticalEdgeReached(int i4, int i10, int i11) {
        this.mScroller.notifyVerticalEdgeReached(i4, i10, i11);
    }

    @Deprecated
    public boolean springBack(int i4, int i10, int i11, int i12, int i13, int i14) {
        return this.mScroller.springBack(i4, i10, i11, i12, i13, i14);
    }

    @Deprecated
    public void startScroll(int i4, int i10, int i11, int i12) {
        this.mScroller.startScroll(i4, i10, i11, i12);
    }

    @Deprecated
    public static ScrollerCompat create(Context context, Interpolator interpolator) {
        return new ScrollerCompat(context, interpolator);
    }

    @Deprecated
    public void fling(int i4, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
        this.mScroller.fling(i4, i10, i11, i12, i13, i14, i15, i16, i17, i18);
    }

    @Deprecated
    public void startScroll(int i4, int i10, int i11, int i12, int i13) {
        this.mScroller.startScroll(i4, i10, i11, i12, i13);
    }
}

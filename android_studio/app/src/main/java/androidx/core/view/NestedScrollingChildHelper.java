package androidx.core.view;

import android.view.View;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public class NestedScrollingChildHelper {
    private boolean mIsNestedScrollingEnabled;
    private ViewParent mNestedScrollingParentNonTouch;
    private ViewParent mNestedScrollingParentTouch;
    private int[] mTempNestedScrollConsumed;
    private final View mView;

    public NestedScrollingChildHelper(@NonNull View view) {
        this.mView = view;
    }

    private boolean dispatchNestedScrollInternal(int i4, int i10, int i11, int i12, @Nullable int[] iArr, int i13, @Nullable int[] iArr2) {
        ViewParent nestedScrollingParentForType;
        int i14;
        int i15;
        int[] iArr3;
        if (!isNestedScrollingEnabled() || (nestedScrollingParentForType = getNestedScrollingParentForType(i13)) == null) {
            return false;
        }
        if (i4 == 0 && i10 == 0 && i11 == 0 && i12 == 0) {
            if (iArr != null) {
                iArr[0] = 0;
                iArr[1] = 0;
            }
            return false;
        }
        if (iArr != null) {
            this.mView.getLocationInWindow(iArr);
            i14 = iArr[0];
            i15 = iArr[1];
        } else {
            i14 = 0;
            i15 = 0;
        }
        if (iArr2 == null) {
            int[] tempNestedScrollConsumed = getTempNestedScrollConsumed();
            tempNestedScrollConsumed[0] = 0;
            tempNestedScrollConsumed[1] = 0;
            iArr3 = tempNestedScrollConsumed;
        } else {
            iArr3 = iArr2;
        }
        ViewParentCompat.onNestedScroll(nestedScrollingParentForType, this.mView, i4, i10, i11, i12, i13, iArr3);
        if (iArr != null) {
            this.mView.getLocationInWindow(iArr);
            iArr[0] = iArr[0] - i14;
            iArr[1] = iArr[1] - i15;
        }
        return true;
    }

    private ViewParent getNestedScrollingParentForType(int i4) {
        if (i4 != 0) {
            if (i4 != 1) {
                return null;
            }
            return this.mNestedScrollingParentNonTouch;
        }
        return this.mNestedScrollingParentTouch;
    }

    private int[] getTempNestedScrollConsumed() {
        if (this.mTempNestedScrollConsumed == null) {
            this.mTempNestedScrollConsumed = new int[2];
        }
        return this.mTempNestedScrollConsumed;
    }

    private void setNestedScrollingParentForType(int i4, ViewParent viewParent) {
        if (i4 == 0) {
            this.mNestedScrollingParentTouch = viewParent;
        } else if (i4 != 1) {
        } else {
            this.mNestedScrollingParentNonTouch = viewParent;
        }
    }

    public boolean dispatchNestedFling(float f10, float f11, boolean z9) {
        ViewParent nestedScrollingParentForType;
        if (!isNestedScrollingEnabled() || (nestedScrollingParentForType = getNestedScrollingParentForType(0)) == null) {
            return false;
        }
        return ViewParentCompat.onNestedFling(nestedScrollingParentForType, this.mView, f10, f11, z9);
    }

    public boolean dispatchNestedPreFling(float f10, float f11) {
        ViewParent nestedScrollingParentForType;
        if (!isNestedScrollingEnabled() || (nestedScrollingParentForType = getNestedScrollingParentForType(0)) == null) {
            return false;
        }
        return ViewParentCompat.onNestedPreFling(nestedScrollingParentForType, this.mView, f10, f11);
    }

    public boolean dispatchNestedPreScroll(int i4, int i10, @Nullable int[] iArr, @Nullable int[] iArr2) {
        return dispatchNestedPreScroll(i4, i10, iArr, iArr2, 0);
    }

    public boolean dispatchNestedScroll(int i4, int i10, int i11, int i12, @Nullable int[] iArr) {
        return dispatchNestedScrollInternal(i4, i10, i11, i12, iArr, 0, null);
    }

    public boolean hasNestedScrollingParent() {
        return hasNestedScrollingParent(0);
    }

    public boolean isNestedScrollingEnabled() {
        return this.mIsNestedScrollingEnabled;
    }

    public void onDetachedFromWindow() {
        ViewCompat.stopNestedScroll(this.mView);
    }

    public void onStopNestedScroll(@NonNull View view) {
        ViewCompat.stopNestedScroll(this.mView);
    }

    public void setNestedScrollingEnabled(boolean z9) {
        if (this.mIsNestedScrollingEnabled) {
            ViewCompat.stopNestedScroll(this.mView);
        }
        this.mIsNestedScrollingEnabled = z9;
    }

    public boolean startNestedScroll(int i4) {
        return startNestedScroll(i4, 0);
    }

    public void stopNestedScroll() {
        stopNestedScroll(0);
    }

    public boolean dispatchNestedPreScroll(int i4, int i10, @Nullable int[] iArr, @Nullable int[] iArr2, int i11) {
        ViewParent nestedScrollingParentForType;
        int i12;
        int i13;
        if (!isNestedScrollingEnabled() || (nestedScrollingParentForType = getNestedScrollingParentForType(i11)) == null) {
            return false;
        }
        if (i4 == 0 && i10 == 0) {
            if (iArr2 != null) {
                iArr2[0] = 0;
                iArr2[1] = 0;
                return false;
            }
            return false;
        }
        if (iArr2 != null) {
            this.mView.getLocationInWindow(iArr2);
            i12 = iArr2[0];
            i13 = iArr2[1];
        } else {
            i12 = 0;
            i13 = 0;
        }
        if (iArr == null) {
            iArr = getTempNestedScrollConsumed();
        }
        iArr[0] = 0;
        iArr[1] = 0;
        ViewParentCompat.onNestedPreScroll(nestedScrollingParentForType, this.mView, i4, i10, iArr, i11);
        if (iArr2 != null) {
            this.mView.getLocationInWindow(iArr2);
            iArr2[0] = iArr2[0] - i12;
            iArr2[1] = iArr2[1] - i13;
        }
        return (iArr[0] == 0 && iArr[1] == 0) ? false : true;
    }

    public boolean dispatchNestedScroll(int i4, int i10, int i11, int i12, @Nullable int[] iArr, int i13) {
        return dispatchNestedScrollInternal(i4, i10, i11, i12, iArr, i13, null);
    }

    public boolean hasNestedScrollingParent(int i4) {
        return getNestedScrollingParentForType(i4) != null;
    }

    public boolean startNestedScroll(int i4, int i10) {
        if (hasNestedScrollingParent(i10)) {
            return true;
        }
        if (isNestedScrollingEnabled()) {
            View view = this.mView;
            for (ViewParent parent = this.mView.getParent(); parent != null; parent = parent.getParent()) {
                if (ViewParentCompat.onStartNestedScroll(parent, view, this.mView, i4, i10)) {
                    setNestedScrollingParentForType(i10, parent);
                    ViewParentCompat.onNestedScrollAccepted(parent, view, this.mView, i4, i10);
                    return true;
                }
                if (parent instanceof View) {
                    view = (View) parent;
                }
            }
            return false;
        }
        return false;
    }

    public void stopNestedScroll(int i4) {
        ViewParent nestedScrollingParentForType = getNestedScrollingParentForType(i4);
        if (nestedScrollingParentForType != null) {
            ViewParentCompat.onStopNestedScroll(nestedScrollingParentForType, this.mView, i4);
            setNestedScrollingParentForType(i4, null);
        }
    }

    public void dispatchNestedScroll(int i4, int i10, int i11, int i12, @Nullable int[] iArr, int i13, @Nullable int[] iArr2) {
        dispatchNestedScrollInternal(i4, i10, i11, i12, iArr, i13, iArr2);
    }
}

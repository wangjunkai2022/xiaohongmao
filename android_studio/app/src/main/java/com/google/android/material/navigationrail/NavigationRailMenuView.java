package com.google.android.material.navigationrail;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import com.google.android.material.navigation.NavigationBarItemView;
import com.google.android.material.navigation.NavigationBarMenuView;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class NavigationRailMenuView extends NavigationBarMenuView {
    private final FrameLayout.LayoutParams layoutParams;

    public NavigationRailMenuView(@NonNull Context context) {
        super(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        this.layoutParams = layoutParams;
        layoutParams.gravity = 49;
        setLayoutParams(layoutParams);
    }

    private int makeSharedHeightSpec(int i4, int i10, int i11) {
        return View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i4), i10 / Math.max(1, i11)), 0);
    }

    private int measureChildHeight(View view, int i4, int i10) {
        if (view.getVisibility() != 8) {
            view.measure(i4, i10);
            return view.getMeasuredHeight();
        }
        return 0;
    }

    private int measureSharedChildHeights(int i4, int i10, int i11, View view) {
        int makeMeasureSpec;
        makeSharedHeightSpec(i4, i10, i11);
        if (view == null) {
            makeMeasureSpec = makeSharedHeightSpec(i4, i10, i11);
        } else {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), 0);
        }
        int childCount = getChildCount();
        int i12 = 0;
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = getChildAt(i13);
            if (childAt != view) {
                i12 += measureChildHeight(childAt, i4, makeMeasureSpec);
            }
        }
        return i12;
    }

    private int measureShiftingChildHeights(int i4, int i10, int i11) {
        int i12;
        View childAt = getChildAt(getSelectedItemPosition());
        if (childAt != null) {
            i12 = measureChildHeight(childAt, i4, makeSharedHeightSpec(i4, i10, i11));
            i10 -= i12;
            i11--;
        } else {
            i12 = 0;
        }
        return i12 + measureSharedChildHeights(i4, i10, i11, childAt);
    }

    @Override // com.google.android.material.navigation.NavigationBarMenuView
    @NonNull
    protected NavigationBarItemView createNavigationBarItemView(@NonNull Context context) {
        return new NavigationRailItemView(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getMenuGravity() {
        return this.layoutParams.gravity;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isTopGravity() {
        return (this.layoutParams.gravity & 112) == 48;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z9, int i4, int i10, int i11, int i12) {
        int childCount = getChildCount();
        int i13 = i11 - i4;
        int i14 = 0;
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt = getChildAt(i15);
            if (childAt.getVisibility() != 8) {
                int measuredHeight = childAt.getMeasuredHeight() + i14;
                childAt.layout(0, i14, i13, measuredHeight);
                i14 = measuredHeight;
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i4, int i10) {
        int measureSharedChildHeights;
        int size = View.MeasureSpec.getSize(i10);
        int size2 = getMenu().getVisibleItems().size();
        if (size2 > 1 && isShifting(getLabelVisibilityMode(), size2)) {
            measureSharedChildHeights = measureShiftingChildHeights(i4, size, size2);
        } else {
            measureSharedChildHeights = measureSharedChildHeights(i4, size, size2, null);
        }
        setMeasuredDimension(View.resolveSizeAndState(View.MeasureSpec.getSize(i4), i4, 0), View.resolveSizeAndState(measureSharedChildHeights, i10, 0));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setMenuGravity(int i4) {
        FrameLayout.LayoutParams layoutParams = this.layoutParams;
        if (layoutParams.gravity != i4) {
            layoutParams.gravity = i4;
            setLayoutParams(layoutParams);
        }
    }
}

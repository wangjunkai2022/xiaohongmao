package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.navigation.NavigationBarItemView;
import com.google.android.material.navigation.NavigationBarMenuView;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class BottomNavigationMenuView extends NavigationBarMenuView {
    private final int activeItemMaxWidth;
    private final int activeItemMinWidth;
    private final int inactiveItemMaxWidth;
    private final int inactiveItemMinWidth;
    private final int itemHeight;
    private boolean itemHorizontalTranslationEnabled;
    private int[] tempChildWidths;

    public BottomNavigationMenuView(@NonNull Context context) {
        super(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        setLayoutParams(layoutParams);
        Resources resources = getResources();
        this.inactiveItemMaxWidth = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_item_max_width);
        this.inactiveItemMinWidth = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_item_min_width);
        this.activeItemMaxWidth = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_active_item_max_width);
        this.activeItemMinWidth = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_active_item_min_width);
        this.itemHeight = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_height);
        this.tempChildWidths = new int[5];
    }

    @Override // com.google.android.material.navigation.NavigationBarMenuView
    @NonNull
    protected NavigationBarItemView createNavigationBarItemView(@NonNull Context context) {
        return new BottomNavigationItemView(context);
    }

    public boolean isItemHorizontalTranslationEnabled() {
        return this.itemHorizontalTranslationEnabled;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z9, int i4, int i10, int i11, int i12) {
        int childCount = getChildCount();
        int i13 = i11 - i4;
        int i14 = i12 - i10;
        int i15 = 0;
        for (int i16 = 0; i16 < childCount; i16++) {
            View childAt = getChildAt(i16);
            if (childAt.getVisibility() != 8) {
                if (ViewCompat.getLayoutDirection(this) == 1) {
                    int i17 = i13 - i15;
                    childAt.layout(i17 - childAt.getMeasuredWidth(), 0, i17, i14);
                } else {
                    childAt.layout(i15, 0, childAt.getMeasuredWidth() + i15, i14);
                }
                i15 += childAt.getMeasuredWidth();
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i4, int i10) {
        MenuBuilder menu = getMenu();
        int size = View.MeasureSpec.getSize(i4);
        int size2 = menu.getVisibleItems().size();
        int childCount = getChildCount();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.itemHeight, 1073741824);
        if (isShifting(getLabelVisibilityMode(), size2) && isItemHorizontalTranslationEnabled()) {
            View childAt = getChildAt(getSelectedItemPosition());
            int i11 = this.activeItemMinWidth;
            if (childAt.getVisibility() != 8) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(this.activeItemMaxWidth, Integer.MIN_VALUE), makeMeasureSpec);
                i11 = Math.max(i11, childAt.getMeasuredWidth());
            }
            int i12 = size2 - (childAt.getVisibility() != 8 ? 1 : 0);
            int min = Math.min(size - (this.inactiveItemMinWidth * i12), Math.min(i11, this.activeItemMaxWidth));
            int i13 = size - min;
            int min2 = Math.min(i13 / (i12 == 0 ? 1 : i12), this.inactiveItemMaxWidth);
            int i14 = i13 - (i12 * min2);
            int i15 = 0;
            while (i15 < childCount) {
                if (getChildAt(i15).getVisibility() != 8) {
                    this.tempChildWidths[i15] = i15 == getSelectedItemPosition() ? min : min2;
                    if (i14 > 0) {
                        int[] iArr = this.tempChildWidths;
                        iArr[i15] = iArr[i15] + 1;
                        i14--;
                    }
                } else {
                    this.tempChildWidths[i15] = 0;
                }
                i15++;
            }
        } else {
            int min3 = Math.min(size / (size2 == 0 ? 1 : size2), this.activeItemMaxWidth);
            int i16 = size - (size2 * min3);
            for (int i17 = 0; i17 < childCount; i17++) {
                if (getChildAt(i17).getVisibility() != 8) {
                    int[] iArr2 = this.tempChildWidths;
                    iArr2[i17] = min3;
                    if (i16 > 0) {
                        iArr2[i17] = iArr2[i17] + 1;
                        i16--;
                    }
                } else {
                    this.tempChildWidths[i17] = 0;
                }
            }
        }
        int i18 = 0;
        for (int i19 = 0; i19 < childCount; i19++) {
            View childAt2 = getChildAt(i19);
            if (childAt2.getVisibility() != 8) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec(this.tempChildWidths[i19], 1073741824), makeMeasureSpec);
                childAt2.getLayoutParams().width = childAt2.getMeasuredWidth();
                i18 += childAt2.getMeasuredWidth();
            }
        }
        setMeasuredDimension(View.resolveSizeAndState(i18, View.MeasureSpec.makeMeasureSpec(i18, 1073741824), 0), View.resolveSizeAndState(this.itemHeight, makeMeasureSpec, 0));
    }

    public void setItemHorizontalTranslationEnabled(boolean z9) {
        this.itemHorizontalTranslationEnabled = z9;
    }
}

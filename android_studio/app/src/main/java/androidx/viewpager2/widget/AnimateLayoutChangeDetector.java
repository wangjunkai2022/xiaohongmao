package androidx.viewpager2.widget;

import android.animation.LayoutTransition;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Comparator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class AnimateLayoutChangeDetector {
    private static final ViewGroup.MarginLayoutParams ZERO_MARGIN_LAYOUT_PARAMS;
    private LinearLayoutManager mLayoutManager;

    static {
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-1, -1);
        ZERO_MARGIN_LAYOUT_PARAMS = marginLayoutParams;
        marginLayoutParams.setMargins(0, 0, 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AnimateLayoutChangeDetector(@NonNull LinearLayoutManager linearLayoutManager) {
        this.mLayoutManager = linearLayoutManager;
    }

    private boolean arePagesLaidOutContiguously() {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        int top;
        int i4;
        int bottom;
        int i10;
        int childCount = this.mLayoutManager.getChildCount();
        if (childCount == 0) {
            return true;
        }
        boolean z9 = this.mLayoutManager.getOrientation() == 0;
        int[][] iArr = (int[][]) Array.newInstance(int.class, childCount, 2);
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = this.mLayoutManager.getChildAt(i11);
            if (childAt != null) {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                } else {
                    marginLayoutParams = ZERO_MARGIN_LAYOUT_PARAMS;
                }
                int[] iArr2 = iArr[i11];
                if (z9) {
                    top = childAt.getLeft();
                    i4 = marginLayoutParams.leftMargin;
                } else {
                    top = childAt.getTop();
                    i4 = marginLayoutParams.topMargin;
                }
                iArr2[0] = top - i4;
                int[] iArr3 = iArr[i11];
                if (z9) {
                    bottom = childAt.getRight();
                    i10 = marginLayoutParams.rightMargin;
                } else {
                    bottom = childAt.getBottom();
                    i10 = marginLayoutParams.bottomMargin;
                }
                iArr3[1] = bottom + i10;
            } else {
                throw new IllegalStateException("null view contained in the view hierarchy");
            }
        }
        Arrays.sort(iArr, new Comparator<int[]>() { // from class: androidx.viewpager2.widget.AnimateLayoutChangeDetector.1
            @Override // java.util.Comparator
            public int compare(int[] iArr4, int[] iArr5) {
                return iArr4[0] - iArr5[0];
            }
        });
        for (int i12 = 1; i12 < childCount; i12++) {
            if (iArr[i12 - 1][1] != iArr[i12][0]) {
                return false;
            }
        }
        return iArr[0][0] <= 0 && iArr[childCount - 1][1] >= iArr[0][1] - iArr[0][0];
    }

    private boolean hasRunningChangingLayoutTransition() {
        int childCount = this.mLayoutManager.getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            if (hasRunningChangingLayoutTransition(this.mLayoutManager.getChildAt(i4))) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean mayHaveInterferingAnimations() {
        return (!arePagesLaidOutContiguously() || this.mLayoutManager.getChildCount() <= 1) && hasRunningChangingLayoutTransition();
    }

    private static boolean hasRunningChangingLayoutTransition(View view) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            LayoutTransition layoutTransition = viewGroup.getLayoutTransition();
            if (layoutTransition != null && layoutTransition.isChangingLayout()) {
                return true;
            }
            int childCount = viewGroup.getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                if (hasRunningChangingLayoutTransition(viewGroup.getChildAt(i4))) {
                    return true;
                }
            }
        }
        return false;
    }
}

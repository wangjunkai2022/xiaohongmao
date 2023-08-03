package androidx.core.view;

import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public interface NestedScrollingChild {
    boolean dispatchNestedFling(float f10, float f11, boolean z9);

    boolean dispatchNestedPreFling(float f10, float f11);

    boolean dispatchNestedPreScroll(int i4, int i10, @Nullable int[] iArr, @Nullable int[] iArr2);

    boolean dispatchNestedScroll(int i4, int i10, int i11, int i12, @Nullable int[] iArr);

    boolean hasNestedScrollingParent();

    boolean isNestedScrollingEnabled();

    void setNestedScrollingEnabled(boolean z9);

    boolean startNestedScroll(int i4);

    void stopNestedScroll();
}

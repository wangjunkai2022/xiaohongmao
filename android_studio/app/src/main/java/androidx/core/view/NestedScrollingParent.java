package androidx.core.view;

import android.view.View;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public interface NestedScrollingParent {
    int getNestedScrollAxes();

    boolean onNestedFling(@NonNull View view, float f10, float f11, boolean z9);

    boolean onNestedPreFling(@NonNull View view, float f10, float f11);

    void onNestedPreScroll(@NonNull View view, int i4, int i10, @NonNull int[] iArr);

    void onNestedScroll(@NonNull View view, int i4, int i10, int i11, int i12);

    void onNestedScrollAccepted(@NonNull View view, @NonNull View view2, int i4);

    boolean onStartNestedScroll(@NonNull View view, @NonNull View view2, int i4);

    void onStopNestedScroll(@NonNull View view);
}

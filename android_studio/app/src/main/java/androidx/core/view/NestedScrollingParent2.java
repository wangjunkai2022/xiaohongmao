package androidx.core.view;

import android.view.View;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public interface NestedScrollingParent2 extends NestedScrollingParent {
    void onNestedPreScroll(@NonNull View view, int i4, int i10, @NonNull int[] iArr, int i11);

    void onNestedScroll(@NonNull View view, int i4, int i10, int i11, int i12, int i13);

    void onNestedScrollAccepted(@NonNull View view, @NonNull View view2, int i4, int i10);

    boolean onStartNestedScroll(@NonNull View view, @NonNull View view2, int i4, int i10);

    void onStopNestedScroll(@NonNull View view, int i4);
}

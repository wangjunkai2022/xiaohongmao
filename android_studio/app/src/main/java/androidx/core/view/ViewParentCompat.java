package androidx.core.view;

import android.util.Log;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
public final class ViewParentCompat {
    private static final String TAG = "ViewParentCompat";
    private static int[] sTempNestedScrollConsumed;

    @RequiresApi(19)
    /* loaded from: classes.dex */
    static class Api19Impl {
        private Api19Impl() {
        }

        @DoNotInline
        static void notifySubtreeAccessibilityStateChanged(ViewParent viewParent, View view, View view2, int i4) {
            viewParent.notifySubtreeAccessibilityStateChanged(view, view2, i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(21)
    /* loaded from: classes.dex */
    public static class Api21Impl {
        private Api21Impl() {
        }

        @DoNotInline
        static boolean onNestedFling(ViewParent viewParent, View view, float f10, float f11, boolean z9) {
            return viewParent.onNestedFling(view, f10, f11, z9);
        }

        @DoNotInline
        static boolean onNestedPreFling(ViewParent viewParent, View view, float f10, float f11) {
            return viewParent.onNestedPreFling(view, f10, f11);
        }

        @DoNotInline
        static void onNestedPreScroll(ViewParent viewParent, View view, int i4, int i10, int[] iArr) {
            viewParent.onNestedPreScroll(view, i4, i10, iArr);
        }

        @DoNotInline
        static void onNestedScroll(ViewParent viewParent, View view, int i4, int i10, int i11, int i12) {
            viewParent.onNestedScroll(view, i4, i10, i11, i12);
        }

        @DoNotInline
        static void onNestedScrollAccepted(ViewParent viewParent, View view, View view2, int i4) {
            viewParent.onNestedScrollAccepted(view, view2, i4);
        }

        @DoNotInline
        static boolean onStartNestedScroll(ViewParent viewParent, View view, View view2, int i4) {
            return viewParent.onStartNestedScroll(view, view2, i4);
        }

        @DoNotInline
        static void onStopNestedScroll(ViewParent viewParent, View view) {
            viewParent.onStopNestedScroll(view);
        }
    }

    private ViewParentCompat() {
    }

    private static int[] getTempNestedScrollConsumed() {
        int[] iArr = sTempNestedScrollConsumed;
        if (iArr == null) {
            sTempNestedScrollConsumed = new int[2];
        } else {
            iArr[0] = 0;
            iArr[1] = 0;
        }
        return sTempNestedScrollConsumed;
    }

    public static void notifySubtreeAccessibilityStateChanged(@NonNull ViewParent viewParent, @NonNull View view, @NonNull View view2, int i4) {
        Api19Impl.notifySubtreeAccessibilityStateChanged(viewParent, view, view2, i4);
    }

    public static boolean onNestedFling(@NonNull ViewParent viewParent, @NonNull View view, float f10, float f11, boolean z9) {
        try {
            return Api21Impl.onNestedFling(viewParent, view, f10, f11, z9);
        } catch (AbstractMethodError e4) {
            Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onNestedFling", e4);
            return false;
        }
    }

    public static boolean onNestedPreFling(@NonNull ViewParent viewParent, @NonNull View view, float f10, float f11) {
        try {
            return Api21Impl.onNestedPreFling(viewParent, view, f10, f11);
        } catch (AbstractMethodError e4) {
            Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onNestedPreFling", e4);
            return false;
        }
    }

    public static void onNestedPreScroll(@NonNull ViewParent viewParent, @NonNull View view, int i4, int i10, @NonNull int[] iArr) {
        onNestedPreScroll(viewParent, view, i4, i10, iArr, 0);
    }

    public static void onNestedScroll(@NonNull ViewParent viewParent, @NonNull View view, int i4, int i10, int i11, int i12) {
        onNestedScroll(viewParent, view, i4, i10, i11, i12, 0, getTempNestedScrollConsumed());
    }

    public static void onNestedScrollAccepted(@NonNull ViewParent viewParent, @NonNull View view, @NonNull View view2, int i4) {
        onNestedScrollAccepted(viewParent, view, view2, i4, 0);
    }

    public static boolean onStartNestedScroll(@NonNull ViewParent viewParent, @NonNull View view, @NonNull View view2, int i4) {
        return onStartNestedScroll(viewParent, view, view2, i4, 0);
    }

    public static void onStopNestedScroll(@NonNull ViewParent viewParent, @NonNull View view) {
        onStopNestedScroll(viewParent, view, 0);
    }

    @Deprecated
    public static boolean requestSendAccessibilityEvent(ViewParent viewParent, View view, AccessibilityEvent accessibilityEvent) {
        return viewParent.requestSendAccessibilityEvent(view, accessibilityEvent);
    }

    public static void onNestedPreScroll(@NonNull ViewParent viewParent, @NonNull View view, int i4, int i10, @NonNull int[] iArr, int i11) {
        if (viewParent instanceof NestedScrollingParent2) {
            ((NestedScrollingParent2) viewParent).onNestedPreScroll(view, i4, i10, iArr, i11);
        } else if (i11 == 0) {
            try {
                Api21Impl.onNestedPreScroll(viewParent, view, i4, i10, iArr);
            } catch (AbstractMethodError e4) {
                Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onNestedPreScroll", e4);
            }
        }
    }

    public static void onNestedScrollAccepted(@NonNull ViewParent viewParent, @NonNull View view, @NonNull View view2, int i4, int i10) {
        if (viewParent instanceof NestedScrollingParent2) {
            ((NestedScrollingParent2) viewParent).onNestedScrollAccepted(view, view2, i4, i10);
        } else if (i10 == 0) {
            try {
                Api21Impl.onNestedScrollAccepted(viewParent, view, view2, i4);
            } catch (AbstractMethodError e4) {
                Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onNestedScrollAccepted", e4);
            }
        }
    }

    public static boolean onStartNestedScroll(@NonNull ViewParent viewParent, @NonNull View view, @NonNull View view2, int i4, int i10) {
        if (viewParent instanceof NestedScrollingParent2) {
            return ((NestedScrollingParent2) viewParent).onStartNestedScroll(view, view2, i4, i10);
        }
        if (i10 == 0) {
            try {
                return Api21Impl.onStartNestedScroll(viewParent, view, view2, i4);
            } catch (AbstractMethodError e4) {
                Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onStartNestedScroll", e4);
                return false;
            }
        }
        return false;
    }

    public static void onStopNestedScroll(@NonNull ViewParent viewParent, @NonNull View view, int i4) {
        if (viewParent instanceof NestedScrollingParent2) {
            ((NestedScrollingParent2) viewParent).onStopNestedScroll(view, i4);
        } else if (i4 == 0) {
            try {
                Api21Impl.onStopNestedScroll(viewParent, view);
            } catch (AbstractMethodError e4) {
                Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onStopNestedScroll", e4);
            }
        }
    }

    public static void onNestedScroll(@NonNull ViewParent viewParent, @NonNull View view, int i4, int i10, int i11, int i12, int i13) {
        onNestedScroll(viewParent, view, i4, i10, i11, i12, i13, getTempNestedScrollConsumed());
    }

    public static void onNestedScroll(@NonNull ViewParent viewParent, @NonNull View view, int i4, int i10, int i11, int i12, int i13, @NonNull int[] iArr) {
        if (viewParent instanceof NestedScrollingParent3) {
            ((NestedScrollingParent3) viewParent).onNestedScroll(view, i4, i10, i11, i12, i13, iArr);
            return;
        }
        iArr[0] = iArr[0] + i11;
        iArr[1] = iArr[1] + i12;
        if (viewParent instanceof NestedScrollingParent2) {
            ((NestedScrollingParent2) viewParent).onNestedScroll(view, i4, i10, i11, i12, i13);
        } else if (i13 == 0) {
            try {
                Api21Impl.onNestedScroll(viewParent, view, i4, i10, i11, i12);
            } catch (AbstractMethodError e4) {
                Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onNestedScroll", e4);
            }
        }
    }
}

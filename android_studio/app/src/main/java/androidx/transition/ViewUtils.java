package androidx.transition;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Build;
import android.util.Property;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ViewUtils {
    static final Property<View, Rect> CLIP_BOUNDS;
    private static final ViewUtilsBase IMPL;
    private static final String TAG = "ViewUtils";
    static final Property<View, Float> TRANSITION_ALPHA;

    static {
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 29) {
            IMPL = new ViewUtilsApi29();
        } else if (i4 >= 23) {
            IMPL = new ViewUtilsApi23();
        } else if (i4 >= 22) {
            IMPL = new ViewUtilsApi22();
        } else {
            IMPL = new ViewUtilsApi21();
        }
        TRANSITION_ALPHA = new Property<View, Float>(Float.class, "translationAlpha") { // from class: androidx.transition.ViewUtils.1
            @Override // android.util.Property
            public Float get(View view) {
                return Float.valueOf(ViewUtils.getTransitionAlpha(view));
            }

            @Override // android.util.Property
            public void set(View view, Float f10) {
                ViewUtils.setTransitionAlpha(view, f10.floatValue());
            }
        };
        CLIP_BOUNDS = new Property<View, Rect>(Rect.class, "clipBounds") { // from class: androidx.transition.ViewUtils.2
            @Override // android.util.Property
            public Rect get(View view) {
                return ViewCompat.getClipBounds(view);
            }

            @Override // android.util.Property
            public void set(View view, Rect rect) {
                ViewCompat.setClipBounds(view, rect);
            }
        };
    }

    private ViewUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void clearNonTransitionAlpha(@NonNull View view) {
        IMPL.clearNonTransitionAlpha(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ViewOverlayImpl getOverlay(@NonNull View view) {
        return new ViewOverlayApi18(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float getTransitionAlpha(@NonNull View view) {
        return IMPL.getTransitionAlpha(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static WindowIdImpl getWindowId(@NonNull View view) {
        return new WindowIdApi18(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void saveNonTransitionAlpha(@NonNull View view) {
        IMPL.saveNonTransitionAlpha(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setAnimationMatrix(@NonNull View view, @Nullable Matrix matrix) {
        IMPL.setAnimationMatrix(view, matrix);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setLeftTopRightBottom(@NonNull View view, int i4, int i10, int i11, int i12) {
        IMPL.setLeftTopRightBottom(view, i4, i10, i11, i12);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setTransitionAlpha(@NonNull View view, float f10) {
        IMPL.setTransitionAlpha(view, f10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setTransitionVisibility(@NonNull View view, int i4) {
        IMPL.setTransitionVisibility(view, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void transformMatrixToGlobal(@NonNull View view, @NonNull Matrix matrix) {
        IMPL.transformMatrixToGlobal(view, matrix);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void transformMatrixToLocal(@NonNull View view, @NonNull Matrix matrix) {
        IMPL.transformMatrixToLocal(view, matrix);
    }
}

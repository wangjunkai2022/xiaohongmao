package androidx.core.view;

import android.graphics.Rect;
import android.view.Gravity;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
public final class GravityCompat {
    public static final int END = 8388613;
    public static final int RELATIVE_HORIZONTAL_GRAVITY_MASK = 8388615;
    public static final int RELATIVE_LAYOUT_DIRECTION = 8388608;
    public static final int START = 8388611;

    @RequiresApi(17)
    /* loaded from: classes.dex */
    static class Api17Impl {
        private Api17Impl() {
        }

        @DoNotInline
        static void apply(int i4, int i10, int i11, Rect rect, Rect rect2, int i12) {
            Gravity.apply(i4, i10, i11, rect, rect2, i12);
        }

        @DoNotInline
        static void applyDisplay(int i4, Rect rect, Rect rect2, int i10) {
            Gravity.applyDisplay(i4, rect, rect2, i10);
        }

        @DoNotInline
        static void apply(int i4, int i10, int i11, Rect rect, int i12, int i13, Rect rect2, int i14) {
            Gravity.apply(i4, i10, i11, rect, i12, i13, rect2, i14);
        }
    }

    private GravityCompat() {
    }

    public static void apply(int i4, int i10, int i11, @NonNull Rect rect, @NonNull Rect rect2, int i12) {
        Api17Impl.apply(i4, i10, i11, rect, rect2, i12);
    }

    public static void applyDisplay(int i4, @NonNull Rect rect, @NonNull Rect rect2, int i10) {
        Api17Impl.applyDisplay(i4, rect, rect2, i10);
    }

    public static int getAbsoluteGravity(int i4, int i10) {
        return Gravity.getAbsoluteGravity(i4, i10);
    }

    public static void apply(int i4, int i10, int i11, @NonNull Rect rect, int i12, int i13, @NonNull Rect rect2, int i14) {
        Api17Impl.apply(i4, i10, i11, rect, i12, i13, rect2, i14);
    }
}

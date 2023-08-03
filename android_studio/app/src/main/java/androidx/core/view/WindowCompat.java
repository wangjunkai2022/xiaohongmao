package androidx.core.view;

import android.os.Build;
import android.view.View;
import android.view.Window;
import androidx.annotation.DoNotInline;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
public final class WindowCompat {
    public static final int FEATURE_ACTION_BAR = 8;
    public static final int FEATURE_ACTION_BAR_OVERLAY = 9;
    public static final int FEATURE_ACTION_MODE_OVERLAY = 10;

    @RequiresApi(16)
    /* loaded from: classes.dex */
    static class Api16Impl {
        private Api16Impl() {
        }

        @DoNotInline
        static void setDecorFitsSystemWindows(@NonNull Window window, boolean z9) {
            View decorView = window.getDecorView();
            int systemUiVisibility = decorView.getSystemUiVisibility();
            decorView.setSystemUiVisibility(z9 ? systemUiVisibility & (-1793) : systemUiVisibility | 1792);
        }
    }

    @RequiresApi(28)
    /* loaded from: classes.dex */
    static class Api28Impl {
        private Api28Impl() {
        }

        @DoNotInline
        static <T> T requireViewById(Window window, int i4) {
            return (T) window.requireViewById(i4);
        }
    }

    @RequiresApi(30)
    /* loaded from: classes.dex */
    static class Api30Impl {
        private Api30Impl() {
        }

        @DoNotInline
        static void setDecorFitsSystemWindows(@NonNull Window window, boolean z9) {
            window.setDecorFitsSystemWindows(z9);
        }
    }

    private WindowCompat() {
    }

    @NonNull
    public static WindowInsetsControllerCompat getInsetsController(@NonNull Window window, @NonNull View view) {
        return new WindowInsetsControllerCompat(window, view);
    }

    @NonNull
    public static <T extends View> T requireViewById(@NonNull Window window, @IdRes int i4) {
        if (Build.VERSION.SDK_INT >= 28) {
            return (T) Api28Impl.requireViewById(window, i4);
        }
        T t9 = (T) window.findViewById(i4);
        if (t9 != null) {
            return t9;
        }
        throw new IllegalArgumentException("ID does not reference a View inside this Window");
    }

    public static void setDecorFitsSystemWindows(@NonNull Window window, boolean z9) {
        if (Build.VERSION.SDK_INT >= 30) {
            Api30Impl.setDecorFitsSystemWindows(window, z9);
        } else {
            Api16Impl.setDecorFitsSystemWindows(window, z9);
        }
    }
}

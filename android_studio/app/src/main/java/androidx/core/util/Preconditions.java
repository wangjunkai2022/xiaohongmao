package androidx.core.util;

import android.text.TextUtils;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.Locale;
import java.util.Objects;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public final class Preconditions {
    private Preconditions() {
    }

    public static void checkArgument(boolean z9) {
        if (!z9) {
            throw new IllegalArgumentException();
        }
    }

    public static float checkArgumentFinite(float f10, @NonNull String str) {
        if (!Float.isNaN(f10)) {
            if (Float.isInfinite(f10)) {
                throw new IllegalArgumentException(str + " must not be infinite");
            }
            return f10;
        }
        throw new IllegalArgumentException(str + " must not be NaN");
    }

    public static int checkArgumentInRange(int i4, int i10, int i11, @NonNull String str) {
        if (i4 >= i10) {
            if (i4 <= i11) {
                return i4;
            }
            throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%d, %d] (too high)", str, Integer.valueOf(i10), Integer.valueOf(i11)));
        }
        throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%d, %d] (too low)", str, Integer.valueOf(i10), Integer.valueOf(i11)));
    }

    @IntRange(from = 0)
    public static int checkArgumentNonnegative(int i4, @Nullable String str) {
        if (i4 >= 0) {
            return i4;
        }
        throw new IllegalArgumentException(str);
    }

    public static int checkFlagsArgument(int i4, int i10) {
        if ((i4 & i10) == i4) {
            return i4;
        }
        throw new IllegalArgumentException("Requested flags 0x" + Integer.toHexString(i4) + ", but only 0x" + Integer.toHexString(i10) + " are allowed");
    }

    @NonNull
    public static <T> T checkNotNull(@Nullable T t9) {
        Objects.requireNonNull(t9);
        return t9;
    }

    public static void checkState(boolean z9, @Nullable String str) {
        if (!z9) {
            throw new IllegalStateException(str);
        }
    }

    @NonNull
    public static <T extends CharSequence> T checkStringNotEmpty(@Nullable T t9) {
        if (TextUtils.isEmpty(t9)) {
            throw new IllegalArgumentException();
        }
        return t9;
    }

    public static void checkArgument(boolean z9, @NonNull Object obj) {
        if (!z9) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    @IntRange(from = 0)
    public static int checkArgumentNonnegative(int i4) {
        if (i4 >= 0) {
            return i4;
        }
        throw new IllegalArgumentException();
    }

    @NonNull
    public static <T> T checkNotNull(@Nullable T t9, @NonNull Object obj) {
        if (t9 != null) {
            return t9;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static void checkState(boolean z9) {
        checkState(z9, null);
    }

    public static void checkArgument(boolean z9, @NonNull String str, @NonNull Object... objArr) {
        if (!z9) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    @NonNull
    public static <T extends CharSequence> T checkStringNotEmpty(@Nullable T t9, @NonNull Object obj) {
        if (TextUtils.isEmpty(t9)) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
        return t9;
    }

    @NonNull
    public static <T extends CharSequence> T checkStringNotEmpty(@Nullable T t9, @NonNull String str, @NonNull Object... objArr) {
        if (TextUtils.isEmpty(t9)) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
        return t9;
    }

    public static long checkArgumentInRange(long j4, long j10, long j11, @NonNull String str) {
        if (j4 >= j10) {
            if (j4 <= j11) {
                return j4;
            }
            throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%d, %d] (too high)", str, Long.valueOf(j10), Long.valueOf(j11)));
        }
        throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%d, %d] (too low)", str, Long.valueOf(j10), Long.valueOf(j11)));
    }

    public static float checkArgumentInRange(float f10, float f11, float f12, @NonNull String str) {
        if (f10 >= f11) {
            if (f10 <= f12) {
                return f10;
            }
            throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%f, %f] (too high)", str, Float.valueOf(f11), Float.valueOf(f12)));
        }
        throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%f, %f] (too low)", str, Float.valueOf(f11), Float.valueOf(f12)));
    }

    public static double checkArgumentInRange(double d4, double d10, double d11, @NonNull String str) {
        if (d4 >= d10) {
            if (d4 <= d11) {
                return d4;
            }
            throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%f, %f] (too high)", str, Double.valueOf(d10), Double.valueOf(d11)));
        }
        throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%f, %f] (too low)", str, Double.valueOf(d10), Double.valueOf(d11)));
    }
}

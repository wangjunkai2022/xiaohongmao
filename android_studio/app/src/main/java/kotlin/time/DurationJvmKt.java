package kotlin.time;

import java.math.RoundingMode;
import java.text.DecimalFormat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: DurationJvm.kt */
@Metadata(d1 = {"\u0000.\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\u001a\u0010\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bH\u0002\u001a\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u000bH\u0000\u001a\u0018\u0010\u0010\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u000bH\u0000\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003\"\u001c\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0005X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\b¨\u0006\u0011"}, d2 = {"durationAssertionsEnabled", "", "getDurationAssertionsEnabled", "()Z", "precisionFormats", "", "Ljava/lang/ThreadLocal;", "Ljava/text/DecimalFormat;", "[Ljava/lang/ThreadLocal;", "createFormatForDecimals", "decimals", "", "formatToExactDecimals", "", "value", "", "formatUpToDecimals", "kotlin-stdlib"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class DurationJvmKt {
    private static final boolean durationAssertionsEnabled = false;
    @g
    private static final ThreadLocal<DecimalFormat>[] precisionFormats;

    static {
        ThreadLocal<DecimalFormat>[] threadLocalArr = new ThreadLocal[4];
        for (int i4 = 0; i4 < 4; i4++) {
            threadLocalArr[i4] = new ThreadLocal<>();
        }
        precisionFormats = threadLocalArr;
    }

    private static final DecimalFormat createFormatForDecimals(int i4) {
        DecimalFormat decimalFormat = new DecimalFormat("0");
        if (i4 > 0) {
            decimalFormat.setMinimumFractionDigits(i4);
        }
        decimalFormat.setRoundingMode(RoundingMode.HALF_UP);
        return decimalFormat;
    }

    @g
    public static final String formatToExactDecimals(double d4, int i4) {
        DecimalFormat createFormatForDecimals;
        ThreadLocal<DecimalFormat>[] threadLocalArr = precisionFormats;
        if (i4 < threadLocalArr.length) {
            ThreadLocal<DecimalFormat> threadLocal = threadLocalArr[i4];
            DecimalFormat decimalFormat = threadLocal.get();
            if (decimalFormat == null) {
                decimalFormat = createFormatForDecimals(i4);
                threadLocal.set(decimalFormat);
            } else {
                Intrinsics.checkNotNullExpressionValue(decimalFormat, "get() ?: default().also(this::set)");
            }
            createFormatForDecimals = decimalFormat;
        } else {
            createFormatForDecimals = createFormatForDecimals(i4);
        }
        String format = createFormatForDecimals.format(d4);
        Intrinsics.checkNotNullExpressionValue(format, "format.format(value)");
        return format;
    }

    @g
    public static final String formatUpToDecimals(double d4, int i4) {
        DecimalFormat createFormatForDecimals = createFormatForDecimals(0);
        createFormatForDecimals.setMaximumFractionDigits(i4);
        String format = createFormatForDecimals.format(d4);
        Intrinsics.checkNotNullExpressionValue(format, "createFormatForDecimals(… }\n        .format(value)");
        return format;
    }

    public static final boolean getDurationAssertionsEnabled() {
        return durationAssertionsEnabled;
    }
}

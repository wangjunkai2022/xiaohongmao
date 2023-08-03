package androidx.window.layout;

import androidx.annotation.RestrictTo;
import androidx.window.core.ExperimentalWindowApi;
import androidx.window.layout.WindowMetricsCalculator;
import kotlin.jvm.JvmStatic;
import m8.g;

/* compiled from: WindowMetricsCalculator.kt */
/* loaded from: classes.dex */
public final /* synthetic */ class e {
    static {
        WindowMetricsCalculator.Companion companion = WindowMetricsCalculator.Companion;
    }

    @JvmStatic
    @g
    public static WindowMetricsCalculator a() {
        return WindowMetricsCalculator.Companion.getOrCreate();
    }

    @JvmStatic
    @ExperimentalWindowApi
    @RestrictTo({RestrictTo.Scope.TESTS})
    public static void b(@g WindowMetricsCalculatorDecorator windowMetricsCalculatorDecorator) {
        WindowMetricsCalculator.Companion.overrideDecorator(windowMetricsCalculatorDecorator);
    }

    @JvmStatic
    @ExperimentalWindowApi
    @RestrictTo({RestrictTo.Scope.TESTS})
    public static void c() {
        WindowMetricsCalculator.Companion.reset();
    }
}

package kotlin.reflect.jvm.internal.impl.util;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: modifierChecks.kt */
/* loaded from: classes4.dex */
public abstract class CheckResult {
    private final boolean isSuccess;

    /* compiled from: modifierChecks.kt */
    /* loaded from: classes4.dex */
    public static final class IllegalFunctionName extends CheckResult {
        @g
        public static final IllegalFunctionName INSTANCE = new IllegalFunctionName();

        private IllegalFunctionName() {
            super(false, null);
        }
    }

    /* compiled from: modifierChecks.kt */
    /* loaded from: classes4.dex */
    public static final class IllegalSignature extends CheckResult {
        @g
        private final String error;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public IllegalSignature(@g String error) {
            super(false, null);
            Intrinsics.checkNotNullParameter(error, "error");
            this.error = error;
        }
    }

    /* compiled from: modifierChecks.kt */
    /* loaded from: classes4.dex */
    public static final class SuccessCheck extends CheckResult {
        @g
        public static final SuccessCheck INSTANCE = new SuccessCheck();

        private SuccessCheck() {
            super(true, null);
        }
    }

    private CheckResult(boolean z9) {
        this.isSuccess = z9;
    }

    public /* synthetic */ CheckResult(boolean z9, DefaultConstructorMarker defaultConstructorMarker) {
        this(z9);
    }

    public final boolean isSuccess() {
        return this.isSuccess;
    }
}

package androidx.window.core;

import androidx.exifinterface.media.ExifInterface;
import androidx.window.core.SpecificationComputer;
import io.sentry.h4;
import io.sentry.protocol.y;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: SpecificationComputer.kt */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B-\u0012\u0006\u0010\u0004\u001a\u00028\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\u000f\u0010\u001b\u001a\u0004\u0018\u00018\u0000H\u0016¢\u0006\u0002\u0010\u0017J/\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u0007\u001a\u00020\u00062\u0017\u0010\u001d\u001a\u0013\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u001f0\u001e¢\u0006\u0002\b H\u0016R\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0014R\u0013\u0010\u0004\u001a\u00028\u0000¢\u0006\n\n\u0002\u0010\u0018\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001a¨\u0006!"}, d2 = {"Landroidx/window/core/FailedSpecification;", ExifInterface.GPS_DIRECTION_TRUE, "", "Landroidx/window/core/SpecificationComputer;", "value", y.b.f83916d, "", "message", h4.b.f83285c, "Landroidx/window/core/Logger;", "verificationMode", "Landroidx/window/core/SpecificationComputer$VerificationMode;", "(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroidx/window/core/Logger;Landroidx/window/core/SpecificationComputer$VerificationMode;)V", h4.b.f83287e, "Landroidx/window/core/WindowStrictModeException;", "getException", "()Landroidx/window/core/WindowStrictModeException;", "getLogger", "()Landroidx/window/core/Logger;", "getMessage", "()Ljava/lang/String;", "getTag", "getValue", "()Ljava/lang/Object;", "Ljava/lang/Object;", "getVerificationMode", "()Landroidx/window/core/SpecificationComputer$VerificationMode;", "compute", "require", "condition", "Lkotlin/Function1;", "", "Lkotlin/ExtensionFunctionType;", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
final class FailedSpecification<T> extends SpecificationComputer<T> {
    @g
    private final WindowStrictModeException exception;
    @g
    private final Logger logger;
    @g
    private final String message;
    @g
    private final String tag;
    @g
    private final T value;
    @g
    private final SpecificationComputer.VerificationMode verificationMode;

    /* compiled from: SpecificationComputer.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SpecificationComputer.VerificationMode.values().length];
            iArr[SpecificationComputer.VerificationMode.STRICT.ordinal()] = 1;
            iArr[SpecificationComputer.VerificationMode.LOG.ordinal()] = 2;
            iArr[SpecificationComputer.VerificationMode.QUIET.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public FailedSpecification(@g T value, @g String tag, @g String message, @g Logger logger, @g SpecificationComputer.VerificationMode verificationMode) {
        List drop;
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(verificationMode, "verificationMode");
        this.value = value;
        this.tag = tag;
        this.message = message;
        this.logger = logger;
        this.verificationMode = verificationMode;
        WindowStrictModeException windowStrictModeException = new WindowStrictModeException(createMessage(value, message));
        StackTraceElement[] stackTrace = windowStrictModeException.getStackTrace();
        Intrinsics.checkNotNullExpressionValue(stackTrace, "stackTrace");
        drop = ArraysKt___ArraysKt.drop(stackTrace, 2);
        Object[] array = drop.toArray(new StackTraceElement[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        windowStrictModeException.setStackTrace((StackTraceElement[]) array);
        this.exception = windowStrictModeException;
    }

    @Override // androidx.window.core.SpecificationComputer
    @h
    public T compute() {
        int i4 = WhenMappings.$EnumSwitchMapping$0[this.verificationMode.ordinal()];
        if (i4 != 1) {
            if (i4 == 2) {
                this.logger.debug(this.tag, createMessage(this.value, this.message));
                return null;
            } else if (i4 == 3) {
                return null;
            } else {
                throw new NoWhenBranchMatchedException();
            }
        }
        throw this.exception;
    }

    @g
    public final WindowStrictModeException getException() {
        return this.exception;
    }

    @g
    public final Logger getLogger() {
        return this.logger;
    }

    @g
    public final String getMessage() {
        return this.message;
    }

    @g
    public final String getTag() {
        return this.tag;
    }

    @g
    public final T getValue() {
        return this.value;
    }

    @g
    public final SpecificationComputer.VerificationMode getVerificationMode() {
        return this.verificationMode;
    }

    @Override // androidx.window.core.SpecificationComputer
    @g
    public SpecificationComputer<T> require(@g String message, @g Function1<? super T, Boolean> condition) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(condition, "condition");
        return this;
    }
}

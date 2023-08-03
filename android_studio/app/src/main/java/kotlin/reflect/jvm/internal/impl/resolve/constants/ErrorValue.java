package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorType;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import m8.g;

/* compiled from: constantValues.kt */
/* loaded from: classes4.dex */
public abstract class ErrorValue extends ConstantValue<Unit> {
    @g
    public static final Companion Companion = new Companion(null);

    /* compiled from: constantValues.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @g
        public final ErrorValue create(@g String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            return new ErrorValueWithMessage(message);
        }
    }

    /* compiled from: constantValues.kt */
    /* loaded from: classes4.dex */
    public static final class ErrorValueWithMessage extends ErrorValue {
        @g
        private final String message;

        public ErrorValueWithMessage(@g String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            this.message = message;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue
        @g
        public String toString() {
            return this.message;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue
        @g
        public ErrorType getType(@g ModuleDescriptor module) {
            Intrinsics.checkNotNullParameter(module, "module");
            return ErrorUtils.createErrorType(ErrorTypeKind.ERROR_CONSTANT_VALUE, this.message);
        }
    }

    public ErrorValue() {
        super(Unit.INSTANCE);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue
    @g
    public Unit getValue() {
        throw new UnsupportedOperationException();
    }
}

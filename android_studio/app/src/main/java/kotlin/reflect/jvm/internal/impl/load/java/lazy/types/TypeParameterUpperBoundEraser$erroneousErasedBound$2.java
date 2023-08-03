package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorType;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import m8.g;

/* compiled from: TypeParameterUpperBoundEraser.kt */
/* loaded from: classes4.dex */
final class TypeParameterUpperBoundEraser$erroneousErasedBound$2 extends Lambda implements Function0<ErrorType> {
    final /* synthetic */ TypeParameterUpperBoundEraser this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TypeParameterUpperBoundEraser$erroneousErasedBound$2(TypeParameterUpperBoundEraser typeParameterUpperBoundEraser) {
        super(0);
        this.this$0 = typeParameterUpperBoundEraser;
    }

    @Override // kotlin.jvm.functions.Function0
    @g
    public final ErrorType invoke() {
        return ErrorUtils.createErrorType(ErrorTypeKind.CANNOT_COMPUTE_ERASED_BOUND, this.this$0.toString());
    }
}

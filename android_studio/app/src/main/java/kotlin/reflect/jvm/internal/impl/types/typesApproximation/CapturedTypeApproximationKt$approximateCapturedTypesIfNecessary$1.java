package kotlin.reflect.jvm.internal.impl.types.typesApproximation;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructorKt;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CapturedTypeApproximation.kt */
/* loaded from: classes4.dex */
public final class CapturedTypeApproximationKt$approximateCapturedTypesIfNecessary$1 extends Lambda implements Function1<UnwrappedType, Boolean> {
    public static final CapturedTypeApproximationKt$approximateCapturedTypesIfNecessary$1 INSTANCE = new CapturedTypeApproximationKt$approximateCapturedTypesIfNecessary$1();

    CapturedTypeApproximationKt$approximateCapturedTypesIfNecessary$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Boolean invoke(UnwrappedType it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        return Boolean.valueOf(CapturedTypeConstructorKt.isCaptured(it));
    }
}

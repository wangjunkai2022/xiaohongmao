package kotlin.reflect.jvm.internal.impl.descriptors.annotations;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import m8.g;

/* compiled from: annotationUtil.kt */
/* loaded from: classes4.dex */
final class AnnotationUtilKt$createDeprecatedAnnotation$replaceWithAnnotation$1 extends Lambda implements Function1<ModuleDescriptor, KotlinType> {
    final /* synthetic */ KotlinBuiltIns $this_createDeprecatedAnnotation;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnnotationUtilKt$createDeprecatedAnnotation$replaceWithAnnotation$1(KotlinBuiltIns kotlinBuiltIns) {
        super(1);
        this.$this_createDeprecatedAnnotation = kotlinBuiltIns;
    }

    @Override // kotlin.jvm.functions.Function1
    @g
    public final KotlinType invoke(@g ModuleDescriptor module) {
        Intrinsics.checkNotNullParameter(module, "module");
        SimpleType arrayType = module.getBuiltIns().getArrayType(Variance.INVARIANT, this.$this_createDeprecatedAnnotation.getStringType());
        Intrinsics.checkNotNullExpressionValue(arrayType, "module.builtIns.getArray…ce.INVARIANT, stringType)");
        return arrayType;
    }
}

package kotlin.reflect.jvm.internal.impl.util;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.ReflectionTypes;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.util.Check;
import m8.g;
import m8.h;

/* compiled from: modifierChecks.kt */
/* loaded from: classes4.dex */
final class IsKPropertyCheck implements Check {
    @g
    public static final IsKPropertyCheck INSTANCE = new IsKPropertyCheck();
    @g
    private static final String description = "second parameter must be of type KProperty<*> or its supertype";

    private IsKPropertyCheck() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    public boolean check(@g FunctionDescriptor functionDescriptor) {
        Intrinsics.checkNotNullParameter(functionDescriptor, "functionDescriptor");
        ValueParameterDescriptor secondParameter = functionDescriptor.getValueParameters().get(1);
        ReflectionTypes.Companion companion = ReflectionTypes.Companion;
        Intrinsics.checkNotNullExpressionValue(secondParameter, "secondParameter");
        KotlinType createKPropertyStarType = companion.createKPropertyStarType(DescriptorUtilsKt.getModule(secondParameter));
        if (createKPropertyStarType != null) {
            KotlinType type = secondParameter.getType();
            Intrinsics.checkNotNullExpressionValue(type, "secondParameter.type");
            return TypeUtilsKt.isSubtypeOf(createKPropertyStarType, TypeUtilsKt.makeNotNullable(type));
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    @g
    public String getDescription() {
        return description;
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    @h
    public String invoke(@g FunctionDescriptor functionDescriptor) {
        return Check.DefaultImpls.invoke(this, functionDescriptor);
    }
}

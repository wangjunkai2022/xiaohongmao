package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import m8.g;

/* compiled from: constantValues.kt */
/* loaded from: classes4.dex */
public final class FloatValue extends ConstantValue<Float> {
    public FloatValue(float f10) {
        super(Float.valueOf(f10));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue
    @g
    public String toString() {
        return getValue().floatValue() + ".toFloat()";
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue
    @g
    public SimpleType getType(@g ModuleDescriptor module) {
        Intrinsics.checkNotNullParameter(module, "module");
        SimpleType floatType = module.getBuiltIns().getFloatType();
        Intrinsics.checkNotNullExpressionValue(floatType, "module.builtIns.floatType");
        return floatType;
    }
}

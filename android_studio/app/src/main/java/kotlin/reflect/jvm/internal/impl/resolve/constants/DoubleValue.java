package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import m8.g;

/* compiled from: constantValues.kt */
/* loaded from: classes4.dex */
public final class DoubleValue extends ConstantValue<Double> {
    public DoubleValue(double d4) {
        super(Double.valueOf(d4));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue
    @g
    public String toString() {
        return getValue().doubleValue() + ".toDouble()";
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue
    @g
    public SimpleType getType(@g ModuleDescriptor module) {
        Intrinsics.checkNotNullParameter(module, "module");
        SimpleType doubleType = module.getBuiltIns().getDoubleType();
        Intrinsics.checkNotNullExpressionValue(doubleType, "module.builtIns.doubleType");
        return doubleType;
    }
}

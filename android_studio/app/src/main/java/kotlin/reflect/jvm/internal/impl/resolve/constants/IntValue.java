package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import m8.g;

/* compiled from: constantValues.kt */
/* loaded from: classes4.dex */
public final class IntValue extends IntegerValueConstant<Integer> {
    public IntValue(int i4) {
        super(Integer.valueOf(i4));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue
    @g
    public SimpleType getType(@g ModuleDescriptor module) {
        Intrinsics.checkNotNullParameter(module, "module");
        SimpleType intType = module.getBuiltIns().getIntType();
        Intrinsics.checkNotNullExpressionValue(intType, "module.builtIns.intType");
        return intType;
    }
}

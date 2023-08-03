package kotlin.reflect.jvm.internal.impl.resolve.constants;

import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import m8.g;

/* compiled from: constantValues.kt */
/* loaded from: classes4.dex */
public class ArrayValue extends ConstantValue<List<? extends ConstantValue<?>>> {
    @g
    private final Function1<ModuleDescriptor, KotlinType> computeType;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ArrayValue(@g List<? extends ConstantValue<?>> value, @g Function1<? super ModuleDescriptor, ? extends KotlinType> computeType) {
        super(value);
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(computeType, "computeType");
        this.computeType = computeType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue
    @g
    public KotlinType getType(@g ModuleDescriptor module) {
        Intrinsics.checkNotNullParameter(module, "module");
        KotlinType invoke = this.computeType.invoke(module);
        if (!KotlinBuiltIns.isArray(invoke) && !KotlinBuiltIns.isPrimitiveArray(invoke)) {
            KotlinBuiltIns.isUnsignedArrayType(invoke);
        }
        return invoke;
    }
}

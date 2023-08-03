package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import m8.h;

/* loaded from: classes4.dex */
public interface VariableDescriptor extends ValueDescriptor {
    @h
    ConstantValue<?> getCompileTimeInitializer();

    boolean isConst();

    boolean isLateInit();

    boolean isVar();
}

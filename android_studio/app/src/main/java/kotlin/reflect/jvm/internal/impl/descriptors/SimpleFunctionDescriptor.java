package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import m8.g;

/* loaded from: classes4.dex */
public interface SimpleFunctionDescriptor extends FunctionDescriptor {
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor
    @g
    FunctionDescriptor.CopyBuilder<? extends SimpleFunctionDescriptor> newCopyBuilder();
}

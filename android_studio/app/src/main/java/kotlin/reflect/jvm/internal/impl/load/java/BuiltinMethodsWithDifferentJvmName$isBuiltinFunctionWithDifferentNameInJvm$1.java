package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.load.kotlin.MethodSignatureMappingKt;
import m8.g;

/* compiled from: specialBuiltinMembers.kt */
/* loaded from: classes4.dex */
final class BuiltinMethodsWithDifferentJvmName$isBuiltinFunctionWithDifferentNameInJvm$1 extends Lambda implements Function1<CallableMemberDescriptor, Boolean> {
    final /* synthetic */ SimpleFunctionDescriptor $functionDescriptor;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BuiltinMethodsWithDifferentJvmName$isBuiltinFunctionWithDifferentNameInJvm$1(SimpleFunctionDescriptor simpleFunctionDescriptor) {
        super(1);
        this.$functionDescriptor = simpleFunctionDescriptor;
    }

    @Override // kotlin.jvm.functions.Function1
    @g
    public final Boolean invoke(@g CallableMemberDescriptor it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Boolean.valueOf(SpecialGenericSignatures.Companion.getSIGNATURE_TO_JVM_REPRESENTATION_NAME().containsKey(MethodSignatureMappingKt.computeJvmSignature(this.$functionDescriptor)));
    }
}

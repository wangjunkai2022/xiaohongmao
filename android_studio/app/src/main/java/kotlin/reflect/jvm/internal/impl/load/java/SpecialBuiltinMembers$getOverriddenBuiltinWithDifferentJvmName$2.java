package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import m8.g;

/* compiled from: specialBuiltinMembers.kt */
/* loaded from: classes4.dex */
final class SpecialBuiltinMembers$getOverriddenBuiltinWithDifferentJvmName$2 extends Lambda implements Function1<CallableMemberDescriptor, Boolean> {
    public static final SpecialBuiltinMembers$getOverriddenBuiltinWithDifferentJvmName$2 INSTANCE = new SpecialBuiltinMembers$getOverriddenBuiltinWithDifferentJvmName$2();

    SpecialBuiltinMembers$getOverriddenBuiltinWithDifferentJvmName$2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    @g
    public final Boolean invoke(@g CallableMemberDescriptor it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Boolean.valueOf(BuiltinMethodsWithDifferentJvmName.INSTANCE.isBuiltinFunctionWithDifferentNameInJvm((SimpleFunctionDescriptor) it));
    }
}

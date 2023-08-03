package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: specialBuiltinMembers.kt */
/* loaded from: classes4.dex */
public final class BuiltinMethodsWithSpecialGenericSignature$getSpecialSignatureInfo$builtinSignature$1 extends Lambda implements Function1<CallableMemberDescriptor, Boolean> {
    public static final BuiltinMethodsWithSpecialGenericSignature$getSpecialSignatureInfo$builtinSignature$1 INSTANCE = new BuiltinMethodsWithSpecialGenericSignature$getSpecialSignatureInfo$builtinSignature$1();

    BuiltinMethodsWithSpecialGenericSignature$getSpecialSignatureInfo$builtinSignature$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    @g
    public final Boolean invoke(@g CallableMemberDescriptor it) {
        boolean z9;
        boolean hasErasedValueParametersInJava;
        Intrinsics.checkNotNullParameter(it, "it");
        if (it instanceof FunctionDescriptor) {
            hasErasedValueParametersInJava = BuiltinMethodsWithSpecialGenericSignature.INSTANCE.getHasErasedValueParametersInJava(it);
            if (hasErasedValueParametersInJava) {
                z9 = true;
                return Boolean.valueOf(z9);
            }
        }
        z9 = false;
        return Boolean.valueOf(z9);
    }
}

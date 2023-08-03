package kotlin.reflect.jvm.internal.impl.util;

import java.util.Collection;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import m8.g;
import m8.h;

/* compiled from: modifierChecks.kt */
/* loaded from: classes4.dex */
final class OperatorChecks$checks$2 extends Lambda implements Function1<FunctionDescriptor, String> {
    public static final OperatorChecks$checks$2 INSTANCE = new OperatorChecks$checks$2();

    OperatorChecks$checks$2() {
        super(1);
    }

    private static final boolean invoke$isAny(DeclarationDescriptor declarationDescriptor) {
        return (declarationDescriptor instanceof ClassDescriptor) && KotlinBuiltIns.isAny((ClassDescriptor) declarationDescriptor);
    }

    @Override // kotlin.jvm.functions.Function1
    @h
    public final String invoke(@g FunctionDescriptor $receiver) {
        boolean z9;
        Intrinsics.checkNotNullParameter($receiver, "$this$$receiver");
        OperatorChecks operatorChecks = OperatorChecks.INSTANCE;
        DeclarationDescriptor containingDeclaration = $receiver.getContainingDeclaration();
        Intrinsics.checkNotNullExpressionValue(containingDeclaration, "containingDeclaration");
        boolean z10 = true;
        if (!invoke$isAny(containingDeclaration)) {
            Collection<? extends FunctionDescriptor> overriddenDescriptors = $receiver.getOverriddenDescriptors();
            Intrinsics.checkNotNullExpressionValue(overriddenDescriptors, "overriddenDescriptors");
            if (!overriddenDescriptors.isEmpty()) {
                for (FunctionDescriptor functionDescriptor : overriddenDescriptors) {
                    DeclarationDescriptor containingDeclaration2 = functionDescriptor.getContainingDeclaration();
                    Intrinsics.checkNotNullExpressionValue(containingDeclaration2, "it.containingDeclaration");
                    if (invoke$isAny(containingDeclaration2)) {
                        z9 = true;
                        break;
                    }
                }
            }
            z9 = false;
            if (!z9) {
                z10 = false;
            }
        }
        if (z10) {
            return null;
        }
        return "must override ''equals()'' in Any";
    }
}

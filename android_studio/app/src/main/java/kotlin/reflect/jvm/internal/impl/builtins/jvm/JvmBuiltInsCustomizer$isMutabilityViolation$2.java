package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JvmBuiltInsCustomizer.kt */
/* loaded from: classes4.dex */
public final class JvmBuiltInsCustomizer$isMutabilityViolation$2 extends Lambda implements Function1<CallableMemberDescriptor, Boolean> {
    final /* synthetic */ JvmBuiltInsCustomizer this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JvmBuiltInsCustomizer$isMutabilityViolation$2(JvmBuiltInsCustomizer jvmBuiltInsCustomizer) {
        super(1);
        this.this$0 = jvmBuiltInsCustomizer;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Boolean invoke(CallableMemberDescriptor callableMemberDescriptor) {
        boolean z9;
        JavaToKotlinClassMapper javaToKotlinClassMapper;
        if (callableMemberDescriptor.getKind() == CallableMemberDescriptor.Kind.DECLARATION) {
            javaToKotlinClassMapper = this.this$0.j2kClassMapper;
            DeclarationDescriptor containingDeclaration = callableMemberDescriptor.getContainingDeclaration();
            Intrinsics.checkNotNull(containingDeclaration, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
            if (javaToKotlinClassMapper.isMutable((ClassDescriptor) containingDeclaration)) {
                z9 = true;
                return Boolean.valueOf(z9);
            }
        }
        z9 = false;
        return Boolean.valueOf(z9);
    }
}

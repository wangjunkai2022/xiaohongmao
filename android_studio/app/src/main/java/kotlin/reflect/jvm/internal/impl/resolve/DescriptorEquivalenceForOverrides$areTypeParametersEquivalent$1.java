package kotlin.reflect.jvm.internal.impl.resolve;

import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DescriptorEquivalenceForOverrides.kt */
/* loaded from: classes4.dex */
public final class DescriptorEquivalenceForOverrides$areTypeParametersEquivalent$1 extends Lambda implements Function2<DeclarationDescriptor, DeclarationDescriptor, Boolean> {
    public static final DescriptorEquivalenceForOverrides$areTypeParametersEquivalent$1 INSTANCE = new DescriptorEquivalenceForOverrides$areTypeParametersEquivalent$1();

    DescriptorEquivalenceForOverrides$areTypeParametersEquivalent$1() {
        super(2);
    }

    @Override // kotlin.jvm.functions.Function2
    @g
    public final Boolean invoke(@h DeclarationDescriptor declarationDescriptor, @h DeclarationDescriptor declarationDescriptor2) {
        return Boolean.FALSE;
    }
}

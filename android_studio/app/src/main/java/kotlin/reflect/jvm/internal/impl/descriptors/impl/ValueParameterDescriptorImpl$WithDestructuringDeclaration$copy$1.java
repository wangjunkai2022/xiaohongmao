package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.VariableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import m8.g;

/* compiled from: ValueParameterDescriptorImpl.kt */
/* loaded from: classes4.dex */
final class ValueParameterDescriptorImpl$WithDestructuringDeclaration$copy$1 extends Lambda implements Function0<List<? extends VariableDescriptor>> {
    final /* synthetic */ ValueParameterDescriptorImpl.WithDestructuringDeclaration this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ValueParameterDescriptorImpl$WithDestructuringDeclaration$copy$1(ValueParameterDescriptorImpl.WithDestructuringDeclaration withDestructuringDeclaration) {
        super(0);
        this.this$0 = withDestructuringDeclaration;
    }

    @Override // kotlin.jvm.functions.Function0
    @g
    public final List<? extends VariableDescriptor> invoke() {
        return this.this$0.getDestructuringVariables();
    }
}

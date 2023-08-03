package kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import m8.g;
import m8.h;

/* compiled from: ContextReceiver.kt */
/* loaded from: classes4.dex */
public final class ContextReceiver extends AbstractReceiverValue implements ImplicitReceiver {
    @g
    private final CallableDescriptor declarationDescriptor;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContextReceiver(@g CallableDescriptor declarationDescriptor, @g KotlinType receiverType, @h ReceiverValue receiverValue) {
        super(receiverType, receiverValue);
        Intrinsics.checkNotNullParameter(declarationDescriptor, "declarationDescriptor");
        Intrinsics.checkNotNullParameter(receiverType, "receiverType");
        this.declarationDescriptor = declarationDescriptor;
    }

    @g
    public CallableDescriptor getDeclarationDescriptor() {
        return this.declarationDescriptor;
    }

    @g
    public String toString() {
        return "Cxt { " + getDeclarationDescriptor() + " }";
    }
}

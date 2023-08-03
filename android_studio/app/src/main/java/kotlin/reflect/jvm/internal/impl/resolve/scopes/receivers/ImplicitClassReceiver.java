package kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import m8.g;
import m8.h;

/* compiled from: ImplicitClassReceiver.kt */
/* loaded from: classes4.dex */
public class ImplicitClassReceiver implements ImplicitReceiver, ThisClassReceiver {
    @g
    private final ClassDescriptor classDescriptor;
    @g
    private final ClassDescriptor declarationDescriptor;
    @g
    private final ImplicitClassReceiver original;

    public ImplicitClassReceiver(@g ClassDescriptor classDescriptor, @h ImplicitClassReceiver implicitClassReceiver) {
        Intrinsics.checkNotNullParameter(classDescriptor, "classDescriptor");
        this.classDescriptor = classDescriptor;
        this.original = implicitClassReceiver == null ? this : implicitClassReceiver;
        this.declarationDescriptor = classDescriptor;
    }

    public boolean equals(@h Object obj) {
        ClassDescriptor classDescriptor = this.classDescriptor;
        ImplicitClassReceiver implicitClassReceiver = obj instanceof ImplicitClassReceiver ? (ImplicitClassReceiver) obj : null;
        return Intrinsics.areEqual(classDescriptor, implicitClassReceiver != null ? implicitClassReceiver.classDescriptor : null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ThisClassReceiver
    @g
    public final ClassDescriptor getClassDescriptor() {
        return this.classDescriptor;
    }

    public int hashCode() {
        return this.classDescriptor.hashCode();
    }

    @g
    public String toString() {
        return "Class{" + getType() + '}';
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ReceiverValue
    @g
    public SimpleType getType() {
        SimpleType defaultType = this.classDescriptor.getDefaultType();
        Intrinsics.checkNotNullExpressionValue(defaultType, "classDescriptor.defaultType");
        return defaultType;
    }
}

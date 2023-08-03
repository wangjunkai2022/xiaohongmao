package kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers;

import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import m8.g;

/* compiled from: ImplicitClassReceiver.kt */
/* loaded from: classes4.dex */
public interface ThisClassReceiver extends ReceiverValue {
    @g
    ClassDescriptor getClassDescriptor();
}

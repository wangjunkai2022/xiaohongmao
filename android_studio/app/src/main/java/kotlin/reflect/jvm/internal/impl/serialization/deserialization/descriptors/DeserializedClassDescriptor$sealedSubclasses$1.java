package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.Collection;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DeserializedClassDescriptor.kt */
/* loaded from: classes4.dex */
public final class DeserializedClassDescriptor$sealedSubclasses$1 extends Lambda implements Function0<Collection<? extends ClassDescriptor>> {
    final /* synthetic */ DeserializedClassDescriptor this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeserializedClassDescriptor$sealedSubclasses$1(DeserializedClassDescriptor deserializedClassDescriptor) {
        super(0);
        this.this$0 = deserializedClassDescriptor;
    }

    @Override // kotlin.jvm.functions.Function0
    @g
    public final Collection<? extends ClassDescriptor> invoke() {
        Collection<? extends ClassDescriptor> computeSubclassesForSealedClass;
        computeSubclassesForSealedClass = this.this$0.computeSubclassesForSealedClass();
        return computeSubclassesForSealedClass;
    }
}

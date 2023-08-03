package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueClassRepresentation;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DeserializedClassDescriptor.kt */
/* loaded from: classes4.dex */
public final class DeserializedClassDescriptor$valueClassRepresentation$1 extends Lambda implements Function0<ValueClassRepresentation<SimpleType>> {
    final /* synthetic */ DeserializedClassDescriptor this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeserializedClassDescriptor$valueClassRepresentation$1(DeserializedClassDescriptor deserializedClassDescriptor) {
        super(0);
        this.this$0 = deserializedClassDescriptor;
    }

    @Override // kotlin.jvm.functions.Function0
    @h
    public final ValueClassRepresentation<SimpleType> invoke() {
        ValueClassRepresentation<SimpleType> computeValueClassRepresentation;
        computeValueClassRepresentation = this.this$0.computeValueClassRepresentation();
        return computeValueClassRepresentation;
    }
}

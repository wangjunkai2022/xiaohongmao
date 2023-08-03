package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.protobuf.MessageLite;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MemberDeserializer.kt */
/* loaded from: classes4.dex */
public final class MemberDeserializer$getReceiverParameterAnnotations$1 extends Lambda implements Function0<List<? extends AnnotationDescriptor>> {
    final /* synthetic */ AnnotatedCallableKind $kind;
    final /* synthetic */ MessageLite $proto;
    final /* synthetic */ MemberDeserializer this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MemberDeserializer$getReceiverParameterAnnotations$1(MemberDeserializer memberDeserializer, MessageLite messageLite, AnnotatedCallableKind annotatedCallableKind) {
        super(0);
        this.this$0 = memberDeserializer;
        this.$proto = messageLite;
        this.$kind = annotatedCallableKind;
    }

    @Override // kotlin.jvm.functions.Function0
    @g
    public final List<? extends AnnotationDescriptor> invoke() {
        DeserializationContext deserializationContext;
        ProtoContainer asProtoContainer;
        List<AnnotationDescriptor> list;
        List<? extends AnnotationDescriptor> emptyList;
        DeserializationContext deserializationContext2;
        MemberDeserializer memberDeserializer = this.this$0;
        deserializationContext = memberDeserializer.f84766c;
        asProtoContainer = memberDeserializer.asProtoContainer(deserializationContext.getContainingDeclaration());
        if (asProtoContainer != null) {
            MemberDeserializer memberDeserializer2 = this.this$0;
            MessageLite messageLite = this.$proto;
            AnnotatedCallableKind annotatedCallableKind = this.$kind;
            deserializationContext2 = memberDeserializer2.f84766c;
            list = deserializationContext2.getComponents().getAnnotationAndConstantLoader().loadExtensionReceiverParameterAnnotations(asProtoContainer, messageLite, annotatedCallableKind);
        } else {
            list = null;
        }
        if (list == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        return list;
    }
}

package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MemberDeserializer.kt */
/* loaded from: classes4.dex */
public final class MemberDeserializer$getPropertyFieldAnnotations$1 extends Lambda implements Function0<List<? extends AnnotationDescriptor>> {
    final /* synthetic */ boolean $isDelegate;
    final /* synthetic */ ProtoBuf.Property $proto;
    final /* synthetic */ MemberDeserializer this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MemberDeserializer$getPropertyFieldAnnotations$1(MemberDeserializer memberDeserializer, boolean z9, ProtoBuf.Property property) {
        super(0);
        this.this$0 = memberDeserializer;
        this.$isDelegate = z9;
        this.$proto = property;
    }

    @Override // kotlin.jvm.functions.Function0
    @g
    public final List<? extends AnnotationDescriptor> invoke() {
        DeserializationContext deserializationContext;
        ProtoContainer asProtoContainer;
        List<? extends AnnotationDescriptor> list;
        List<? extends AnnotationDescriptor> emptyList;
        DeserializationContext deserializationContext2;
        DeserializationContext deserializationContext3;
        MemberDeserializer memberDeserializer = this.this$0;
        deserializationContext = memberDeserializer.f84766c;
        asProtoContainer = memberDeserializer.asProtoContainer(deserializationContext.getContainingDeclaration());
        if (asProtoContainer != null) {
            boolean z9 = this.$isDelegate;
            MemberDeserializer memberDeserializer2 = this.this$0;
            ProtoBuf.Property property = this.$proto;
            if (z9) {
                deserializationContext3 = memberDeserializer2.f84766c;
                list = CollectionsKt___CollectionsKt.toList(deserializationContext3.getComponents().getAnnotationAndConstantLoader().loadPropertyDelegateFieldAnnotations(asProtoContainer, property));
            } else {
                deserializationContext2 = memberDeserializer2.f84766c;
                list = CollectionsKt___CollectionsKt.toList(deserializationContext2.getComponents().getAnnotationAndConstantLoader().loadPropertyBackingFieldAnnotations(asProtoContainer, property));
            }
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

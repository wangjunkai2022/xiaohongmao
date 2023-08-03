package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedPropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.storage.NullableLazyValue;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MemberDeserializer.kt */
/* loaded from: classes4.dex */
public final class MemberDeserializer$loadProperty$5 extends Lambda implements Function0<NullableLazyValue<? extends ConstantValue<?>>> {
    final /* synthetic */ DeserializedPropertyDescriptor $property;
    final /* synthetic */ ProtoBuf.Property $proto;
    final /* synthetic */ MemberDeserializer this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MemberDeserializer.kt */
    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer$loadProperty$5$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static final class AnonymousClass1 extends Lambda implements Function0<ConstantValue<?>> {
        final /* synthetic */ DeserializedPropertyDescriptor $property;
        final /* synthetic */ ProtoBuf.Property $proto;
        final /* synthetic */ MemberDeserializer this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(MemberDeserializer memberDeserializer, ProtoBuf.Property property, DeserializedPropertyDescriptor deserializedPropertyDescriptor) {
            super(0);
            this.this$0 = memberDeserializer;
            this.$proto = property;
            this.$property = deserializedPropertyDescriptor;
        }

        @Override // kotlin.jvm.functions.Function0
        @h
        public final ConstantValue<?> invoke() {
            DeserializationContext deserializationContext;
            ProtoContainer asProtoContainer;
            DeserializationContext deserializationContext2;
            MemberDeserializer memberDeserializer = this.this$0;
            deserializationContext = memberDeserializer.f84766c;
            asProtoContainer = memberDeserializer.asProtoContainer(deserializationContext.getContainingDeclaration());
            Intrinsics.checkNotNull(asProtoContainer);
            deserializationContext2 = this.this$0.f84766c;
            AnnotationAndConstantLoader<AnnotationDescriptor, ConstantValue<?>> annotationAndConstantLoader = deserializationContext2.getComponents().getAnnotationAndConstantLoader();
            ProtoBuf.Property property = this.$proto;
            KotlinType returnType = this.$property.getReturnType();
            Intrinsics.checkNotNullExpressionValue(returnType, "property.returnType");
            return annotationAndConstantLoader.loadAnnotationDefaultValue(asProtoContainer, property, returnType);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MemberDeserializer$loadProperty$5(MemberDeserializer memberDeserializer, ProtoBuf.Property property, DeserializedPropertyDescriptor deserializedPropertyDescriptor) {
        super(0);
        this.this$0 = memberDeserializer;
        this.$proto = property;
        this.$property = deserializedPropertyDescriptor;
    }

    @Override // kotlin.jvm.functions.Function0
    public final NullableLazyValue<? extends ConstantValue<?>> invoke() {
        DeserializationContext deserializationContext;
        deserializationContext = this.this$0.f84766c;
        return deserializationContext.getStorageManager().createNullableLazyValue(new AnonymousClass1(this.this$0, this.$proto, this.$property));
    }
}

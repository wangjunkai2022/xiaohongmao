package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.protobuf.MessageLite;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoContainer;
import m8.g;

/* compiled from: AnnotationLoader.kt */
/* loaded from: classes4.dex */
public interface AnnotationLoader<A> {
    @g
    List<A> loadCallableAnnotations(@g ProtoContainer protoContainer, @g MessageLite messageLite, @g AnnotatedCallableKind annotatedCallableKind);

    @g
    List<A> loadClassAnnotations(@g ProtoContainer.Class r12);

    @g
    List<A> loadEnumEntryAnnotations(@g ProtoContainer protoContainer, @g ProtoBuf.EnumEntry enumEntry);

    @g
    List<A> loadExtensionReceiverParameterAnnotations(@g ProtoContainer protoContainer, @g MessageLite messageLite, @g AnnotatedCallableKind annotatedCallableKind);

    @g
    List<A> loadPropertyBackingFieldAnnotations(@g ProtoContainer protoContainer, @g ProtoBuf.Property property);

    @g
    List<A> loadPropertyDelegateFieldAnnotations(@g ProtoContainer protoContainer, @g ProtoBuf.Property property);

    @g
    List<A> loadTypeAnnotations(@g ProtoBuf.Type type, @g NameResolver nameResolver);

    @g
    List<A> loadTypeParameterAnnotations(@g ProtoBuf.TypeParameter typeParameter, @g NameResolver nameResolver);

    @g
    List<A> loadValueParameterAnnotations(@g ProtoContainer protoContainer, @g MessageLite messageLite, @g AnnotatedCallableKind annotatedCallableKind, int i4, @g ProtoBuf.ValueParameter valueParameter);
}

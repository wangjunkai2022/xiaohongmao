package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import m8.g;
import m8.h;

/* compiled from: AnnotationAndConstantLoader.kt */
/* loaded from: classes4.dex */
public interface AnnotationAndConstantLoader<A, C> extends AnnotationLoader<A> {
    @h
    C loadAnnotationDefaultValue(@g ProtoContainer protoContainer, @g ProtoBuf.Property property, @g KotlinType kotlinType);

    @h
    C loadPropertyConstant(@g ProtoContainer protoContainer, @g ProtoBuf.Property property, @g KotlinType kotlinType);
}

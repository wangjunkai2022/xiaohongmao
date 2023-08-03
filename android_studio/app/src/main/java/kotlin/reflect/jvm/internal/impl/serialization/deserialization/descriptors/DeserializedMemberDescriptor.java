package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import kotlin.reflect.jvm.internal.impl.descriptors.DeserializedDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.TypeTable;
import kotlin.reflect.jvm.internal.impl.protobuf.MessageLite;
import m8.g;
import m8.h;

/* compiled from: DeserializedMemberDescriptor.kt */
/* loaded from: classes4.dex */
public interface DeserializedMemberDescriptor extends DeserializedDescriptor, MemberDescriptor, DescriptorWithContainerSource {
    @h
    DeserializedContainerSource getContainerSource();

    @g
    NameResolver getNameResolver();

    @g
    MessageLite getProto();

    @g
    TypeTable getTypeTable();
}

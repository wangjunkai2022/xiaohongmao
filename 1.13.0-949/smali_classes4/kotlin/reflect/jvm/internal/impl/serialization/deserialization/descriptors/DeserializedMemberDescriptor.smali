.class public interface abstract Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedMemberDescriptor;
.super Ljava/lang/Object;
.source "DeserializedMemberDescriptor.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/DeserializedDescriptor;
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/MemberDescriptor;
.implements Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DescriptorWithContainerSource;


# virtual methods
.method public abstract getContainerSource()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerSource;
    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract getNameResolver()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;
    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract getProto()Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;
    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract getTypeTable()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;
    .annotation build Lm8/g;
    .end annotation
.end method

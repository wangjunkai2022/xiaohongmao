.class public interface abstract Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;
.super Ljava/lang/Object;
.source "ValueParameterDescriptor.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/ParameterDescriptor;
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/VariableDescriptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract copy(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;Lkotlin/reflect/jvm/internal/impl/name/Name;I)Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;
    .param p1    # Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/reflect/jvm/internal/impl/name/Name;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract declaresDefaultValue()Z
.end method

.method public abstract getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;
    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract getIndex()I
.end method

.method public abstract getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;
    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract getOverriddenDescriptors()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract getVarargElementType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract isCrossinline()Z
.end method

.method public abstract isNoinline()Z
.end method

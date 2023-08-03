.class public interface abstract Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;
.super Ljava/lang/Object;
.source "PackageViewDescriptor.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;


# virtual methods
.method public abstract getFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;
    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract getFragments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract getMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract getModule()Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;
    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract isEmpty()Z
.end method

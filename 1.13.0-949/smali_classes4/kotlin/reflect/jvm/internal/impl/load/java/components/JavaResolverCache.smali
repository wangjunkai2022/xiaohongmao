.class public interface abstract Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache;
.super Ljava/lang/Object;
.source "JavaResolverCache.java"


# static fields
.field public static final EMPTY:Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache;->EMPTY:Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache;

    return-void
.end method


# virtual methods
.method public abstract getClassResolvedFromSource(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;
    .param p1    # Lkotlin/reflect/jvm/internal/impl/name/FqName;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract recordClass(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClass;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)V
    .param p1    # Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClass;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;
        .annotation build Lm8/g;
        .end annotation
    .end param
.end method

.method public abstract recordConstructor(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaElement;Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;)V
    .param p1    # Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaElement;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;
        .annotation build Lm8/g;
        .end annotation
    .end param
.end method

.method public abstract recordField(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaField;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)V
    .param p1    # Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaField;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;
        .annotation build Lm8/g;
        .end annotation
    .end param
.end method

.method public abstract recordMethod(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaMember;Lkotlin/reflect/jvm/internal/impl/descriptors/SimpleFunctionDescriptor;)V
    .param p1    # Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaMember;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/reflect/jvm/internal/impl/descriptors/SimpleFunctionDescriptor;
        .annotation build Lm8/g;
        .end annotation
    .end param
.end method

.class public abstract Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry;
.super Ljava/lang/Object;
.source "ArrayMapOwner.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final idCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final idPerType:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lkotlin/reflect/KClass<",
            "+TK;>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry;->idPerType:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry;->idCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static final synthetic access$getIdCounter$p(Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry;->idCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method


# virtual methods
.method public abstract customComputeIfAbsent(Ljava/util/concurrent/ConcurrentHashMap;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)I
    .param p1    # Ljava/util/concurrent/ConcurrentHashMap;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/reflect/KClass;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::TK;>(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lkotlin/reflect/KClass<",
            "+TK;>;",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/reflect/KClass<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/KClass<",
            "+TK;>;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation
.end method

.method public final generateNullableAccessor(Lkotlin/reflect/KClass;)Lkotlin/reflect/jvm/internal/impl/util/NullableArrayMapAccessor;
    .locals 2
    .param p1    # Lkotlin/reflect/KClass;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::TV;KK::TK;>(",
            "Lkotlin/reflect/KClass<",
            "TKK;>;)",
            "Lkotlin/reflect/jvm/internal/impl/util/NullableArrayMapAccessor<",
            "TK;TV;TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "kClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/NullableArrayMapAccessor;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry;->getId(Lkotlin/reflect/KClass;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/util/NullableArrayMapAccessor;-><init>(Lkotlin/reflect/KClass;I)V

    return-object v0
.end method

.method public final getId(Lkotlin/reflect/KClass;)I
    .locals 2
    .param p1    # Lkotlin/reflect/KClass;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::TK;>(",
            "Lkotlin/reflect/KClass<",
            "TT;>;)I"
        }
    .end annotation

    const-string v0, "kClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry;->idPerType:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry$getId$1;

    invoke-direct {v1, p0}, Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry$getId$1;-><init>(Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry;)V

    invoke-virtual {p0, v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry;->customComputeIfAbsent(Ljava/util/concurrent/ConcurrentHashMap;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)I

    move-result p1

    return p1
.end method

.method protected final getIndices()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry;->idPerType:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "idPerType.values"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

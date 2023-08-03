.class public final Lkotlinx/coroutines/reactive/n;
.super Ljava/lang/Object;
.source "ReactiveFlow.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReactiveFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReactiveFlow.kt\nkotlinx/coroutines/reactive/ReactiveFlowKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,273:1\n12947#2,3:274\n37#3:277\n36#3,3:278\n*S KotlinDebug\n*F\n+ 1 ReactiveFlow.kt\nkotlinx/coroutines/reactive/ReactiveFlowKt\n*L\n169#1:274,3\n166#1:277\n166#1:278,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000$\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a \u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u001a,\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005H\u0007\u001a&\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\u0008\u001a\u00020\u0005H\u0000\"\u001a\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "",
        "T",
        "Lorg/reactivestreams/c;",
        "Lkotlinx/coroutines/flow/i;",
        "a",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "c",
        "coroutineContext",
        "e",
        "",
        "Lkotlinx/coroutines/reactive/c;",
        "[Lkotlinx/coroutines/reactive/c;",
        "contextInjectors",
        "kotlinx-coroutines-reactive"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field private static final a:[Lkotlinx/coroutines/reactive/c;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lkotlinx/coroutines/reactive/c;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlinx/coroutines/reactive/c;

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, [Lkotlinx/coroutines/reactive/c;

    .line 6
    sput-object v0, Lkotlinx/coroutines/reactive/n;->a:[Lkotlinx/coroutines/reactive/c;

    return-void
.end method

.method public static final a(Lorg/reactivestreams/c;)Lkotlinx/coroutines/flow/i;
    .locals 8
    .param p0    # Lorg/reactivestreams/c;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "TT;>;)",
            "Lkotlinx/coroutines/flow/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance v7, Lkotlinx/coroutines/reactive/l;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lkotlinx/coroutines/reactive/l;-><init>(Lorg/reactivestreams/c;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method public static final b(Lkotlinx/coroutines/flow/i;)Lorg/reactivestreams/c;
    .locals 2
    .param p0    # Lkotlinx/coroutines/flow/i;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/i<",
            "+TT;>;)",
            "Lorg/reactivestreams/c<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lkotlinx/coroutines/reactive/n;->d(Lkotlinx/coroutines/flow/i;Lkotlin/coroutines/CoroutineContext;ILjava/lang/Object;)Lorg/reactivestreams/c;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lkotlinx/coroutines/flow/i;Lkotlin/coroutines/CoroutineContext;)Lorg/reactivestreams/c;
    .locals 2
    .param p0    # Lkotlinx/coroutines/flow/i;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/i<",
            "+TT;>;",
            "Lkotlin/coroutines/CoroutineContext;",
            ")",
            "Lorg/reactivestreams/c<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lkotlinx/coroutines/reactive/e;

    invoke-static {}, Lkotlinx/coroutines/i1;->g()Lkotlinx/coroutines/n0;

    move-result-object v1

    invoke-virtual {v1, p1}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/reactive/e;-><init>(Lkotlinx/coroutines/flow/i;Lkotlin/coroutines/CoroutineContext;)V

    return-object v0
.end method

.method public static synthetic d(Lkotlinx/coroutines/flow/i;Lkotlin/coroutines/CoroutineContext;ILjava/lang/Object;)Lorg/reactivestreams/c;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/reactive/n;->c(Lkotlinx/coroutines/flow/i;Lkotlin/coroutines/CoroutineContext;)Lorg/reactivestreams/c;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Lorg/reactivestreams/c;Lkotlin/coroutines/CoroutineContext;)Lorg/reactivestreams/c;
    .locals 4
    .param p0    # Lorg/reactivestreams/c;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "TT;>;",
            "Lkotlin/coroutines/CoroutineContext;",
            ")",
            "Lorg/reactivestreams/c<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/reactive/n;->a:[Lkotlinx/coroutines/reactive/c;

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    .line 3
    invoke-interface {v3, p0, p1}, Lkotlinx/coroutines/reactive/c;->a(Lorg/reactivestreams/c;Lkotlin/coroutines/CoroutineContext;)Lorg/reactivestreams/c;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

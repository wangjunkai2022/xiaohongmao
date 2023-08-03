.class final synthetic Lkotlinx/coroutines/reactive/g;
.super Ljava/lang/Object;
.source "Migration.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001a\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u001a)\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u0002H\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u001a)\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u0003H\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u001a*\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\t\u001a\u00020\u0008H\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "",
        "T",
        "Lorg/reactivestreams/c;",
        "Lkotlinx/coroutines/flow/i;",
        "a",
        "(Lorg/reactivestreams/c;)Lkotlinx/coroutines/flow/i;",
        "c",
        "(Lkotlinx/coroutines/flow/i;)Lorg/reactivestreams/c;",
        "",
        "batchSize",
        "b",
        "kotlinx-coroutines-reactive"
    }
    k = 0x5
    mv = {
        0x1,
        0x6,
        0x0
    }
    xs = "kotlinx/coroutines/reactive/FlowKt"
.end annotation


# direct methods
.method public static final synthetic a(Lorg/reactivestreams/c;)Lkotlinx/coroutines/flow/i;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Replaced in favor of ReactiveFlow extension, please import kotlinx.coroutines.reactive.* instead of kotlinx.coroutines.reactive.FlowKt"
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "asFlow"
    .end annotation

    invoke-static {p0}, Lkotlinx/coroutines/reactive/n;->a(Lorg/reactivestreams/c;)Lkotlinx/coroutines/flow/i;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lorg/reactivestreams/c;I)Lkotlinx/coroutines/flow/i;
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "batchSize parameter is deprecated, use .buffer() instead to control the backpressure"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "asFlow().buffer(batchSize)"
            imports = {
                "kotlinx.coroutines.flow.*"
            }
        .end subannotation
    .end annotation

    .annotation build Lkotlinx/coroutines/z1;
    .end annotation

    invoke-static {p0}, Lkotlinx/coroutines/reactive/n;->a(Lorg/reactivestreams/c;)Lkotlinx/coroutines/flow/i;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lkotlinx/coroutines/flow/k;->q(Lkotlinx/coroutines/flow/i;ILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/i;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lkotlinx/coroutines/flow/i;)Lorg/reactivestreams/c;
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Replaced in favor of ReactiveFlow extension, please import kotlinx.coroutines.reactive.* instead of kotlinx.coroutines.reactive.FlowKt"
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "asPublisher"
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lkotlinx/coroutines/reactive/n;->d(Lkotlinx/coroutines/flow/i;Lkotlin/coroutines/CoroutineContext;ILjava/lang/Object;)Lorg/reactivestreams/c;

    move-result-object p0

    return-object p0
.end method

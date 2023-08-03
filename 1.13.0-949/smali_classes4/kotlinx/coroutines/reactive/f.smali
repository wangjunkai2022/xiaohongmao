.class public final Lkotlinx/coroutines/reactive/f;
.super Ljava/lang/Object;
.source "Migration.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "kotlinx/coroutines/reactive/g"
    }
    d2 = {}
    k = 0x4
    mv = {
        0x1,
        0x6,
        0x0
    }
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

    invoke-static {p0}, Lkotlinx/coroutines/reactive/g;->a(Lorg/reactivestreams/c;)Lkotlinx/coroutines/flow/i;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lorg/reactivestreams/c;I)Lkotlinx/coroutines/flow/i;
    .locals 0
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

    invoke-static {p0, p1}, Lkotlinx/coroutines/reactive/g;->b(Lorg/reactivestreams/c;I)Lkotlinx/coroutines/flow/i;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lkotlinx/coroutines/flow/i;)Lorg/reactivestreams/c;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Replaced in favor of ReactiveFlow extension, please import kotlinx.coroutines.reactive.* instead of kotlinx.coroutines.reactive.FlowKt"
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "asPublisher"
    .end annotation

    invoke-static {p0}, Lkotlinx/coroutines/reactive/g;->c(Lkotlinx/coroutines/flow/i;)Lorg/reactivestreams/c;

    move-result-object p0

    return-object p0
.end method

.class public final Lkotlinx/coroutines/reactive/d;
.super Ljava/lang/Object;
.source "Convert.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a(\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u00012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002H\u0007\u00a8\u0006\u0006"
    }
    d2 = {
        "T",
        "Lkotlinx/coroutines/channels/f0;",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "Lorg/reactivestreams/c;",
        "a",
        "kotlinx-coroutines-reactive"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# direct methods
.method public static final synthetic a(Lkotlinx/coroutines/channels/f0;Lkotlin/coroutines/CoroutineContext;)Lorg/reactivestreams/c;
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Deprecated in the favour of consumeAsFlow()"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "this.consumeAsFlow().asPublisher(context)"
            imports = {
                "kotlinx.coroutines.flow.consumeAsFlow"
            }
        .end subannotation
    .end annotation

    new-instance v0, Lkotlinx/coroutines/reactive/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/reactive/d$a;-><init>(Lkotlinx/coroutines/channels/f0;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v0}, Lkotlinx/coroutines/reactive/k;->b(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lorg/reactivestreams/c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lkotlinx/coroutines/channels/f0;Lkotlin/coroutines/CoroutineContext;ILjava/lang/Object;)Lorg/reactivestreams/c;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/reactive/d;->a(Lkotlinx/coroutines/channels/f0;Lkotlin/coroutines/CoroutineContext;)Lorg/reactivestreams/c;

    move-result-object p0

    return-object p0
.end method

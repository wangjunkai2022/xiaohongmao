.class public final Lkotlinx/coroutines/reactive/b;
.super Ljava/lang/Object;
.source "Channel.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channel.kt\nkotlinx/coroutines/reactive/ChannelKt\n+ 2 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt\n*L\n1#1,112:1\n103#2:113\n80#2,6:114\n104#2,2:120\n90#2:122\n86#2,4:123\n80#2,6:127\n104#2,2:133\n90#2:135\n86#2,4:136\n*S KotlinDebug\n*F\n+ 1 Channel.kt\nkotlinx/coroutines/reactive/ChannelKt\n*L\n20#1:113\n20#1:114,6\n20#1:120,2\n20#1:122\n20#1:123,4\n20#1:127,6\n20#1:133,2\n20#1:135\n20#1:136,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a7\u0010\u0005\u001a\u00020\u0003\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u00012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00030\u0002H\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u001a(\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u00012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007H\u0001\u001a(\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u00012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007H\u0007\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000c"
    }
    d2 = {
        "T",
        "Lorg/reactivestreams/c;",
        "Lkotlin/Function1;",
        "",
        "action",
        "a",
        "(Lorg/reactivestreams/c;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "request",
        "Lkotlinx/coroutines/channels/f0;",
        "e",
        "c",
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
.method public static final a(Lorg/reactivestreams/c;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p0    # Lorg/reactivestreams/c;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
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
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/reactive/b$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/reactive/b$a;

    iget v1, v0, Lkotlinx/coroutines/reactive/b$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/reactive/b$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/reactive/b$a;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/reactive/b$a;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/reactive/b$a;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/reactive/b$a;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/reactive/b$a;->c:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/o;

    iget-object p1, v0, Lkotlinx/coroutines/reactive/b$a;->b:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/f0;

    iget-object v2, v0, Lkotlinx/coroutines/reactive/b$a;->a:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v0

    move-object v0, p1

    move-object p1, v2

    :goto_1
    move-object v2, v1

    move-object v1, v5

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 4
    invoke-static {p0, p2, v4, v3}, Lkotlinx/coroutines/reactive/b;->f(Lorg/reactivestreams/c;IILjava/lang/Object;)Lkotlinx/coroutines/channels/f0;

    move-result-object p0

    .line 5
    :try_start_1
    invoke-interface {p0}, Lkotlinx/coroutines/channels/f0;->iterator()Lkotlinx/coroutines/channels/o;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v5, p2

    move-object p2, p0

    move-object p0, v5

    :goto_2
    :try_start_2
    iput-object p1, v0, Lkotlinx/coroutines/reactive/b$a;->a:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/reactive/b$a;->b:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/reactive/b$a;->c:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/reactive/b$a;->e:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/o;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v5, v0

    move-object v0, p2

    move-object p2, v2

    goto :goto_1

    :goto_3
    :try_start_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Lkotlinx/coroutines/channels/o;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object p2, v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    .line 6
    :cond_4
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 7
    invoke-static {v0, v3}, Lkotlinx/coroutines/channels/r;->b(Lkotlinx/coroutines/channels/f0;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_1
    move-exception p0

    move-object p1, v0

    goto :goto_4

    :catchall_2
    move-exception p0

    move-object p1, p2

    goto :goto_4

    :catchall_3
    move-exception p1

    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    .line 9
    :goto_4
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception p2

    .line 10
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 11
    invoke-static {p1, p0}, Lkotlinx/coroutines/channels/r;->b(Lkotlinx/coroutines/channels/f0;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw p2
.end method

.method private static final b(Lorg/reactivestreams/c;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, p2, v0, v1}, Lkotlinx/coroutines/reactive/b;->f(Lorg/reactivestreams/c;IILjava/lang/Object;)Lkotlinx/coroutines/channels/f0;

    move-result-object p0

    .line 2
    :try_start_0
    invoke-interface {p0}, Lkotlinx/coroutines/channels/f0;->iterator()Lkotlinx/coroutines/channels/o;

    move-result-object v2

    :goto_0
    const/4 v3, 0x3

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-static {p2}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {v2, v1}, Lkotlinx/coroutines/channels/o;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lkotlinx/coroutines/channels/o;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 4
    invoke-static {p0, v1}, Lkotlinx/coroutines/channels/r;->b(Lkotlinx/coroutines/channels/f0;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 8
    invoke-static {p0, p1}, Lkotlinx/coroutines/channels/r;->b(Lkotlinx/coroutines/channels/f0;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw p2
.end method

.method public static final synthetic c(Lorg/reactivestreams/c;I)Lkotlinx/coroutines/channels/f0;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Transforming publisher to channel is deprecated, use asFlow() instead"
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/reactive/p;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/reactive/p;-><init>(I)V

    .line 2
    invoke-interface {p0, v0}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    return-object v0
.end method

.method public static synthetic d(Lorg/reactivestreams/c;IILjava/lang/Object;)Lkotlinx/coroutines/channels/f0;
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/reactive/b;->c(Lorg/reactivestreams/c;I)Lkotlinx/coroutines/channels/f0;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Lorg/reactivestreams/c;I)Lkotlinx/coroutines/channels/f0;
    .locals 1
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
            "TT;>;I)",
            "Lkotlinx/coroutines/channels/f0<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/reactive/p;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/reactive/p;-><init>(I)V

    .line 2
    invoke-interface {p0, v0}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    return-object v0
.end method

.method public static synthetic f(Lorg/reactivestreams/c;IILjava/lang/Object;)Lkotlinx/coroutines/channels/f0;
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/reactive/b;->e(Lorg/reactivestreams/c;I)Lkotlinx/coroutines/channels/f0;

    move-result-object p0

    return-object p0
.end method

.class final Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$t;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PlayerViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->X0(Ljava/lang/String;Ljava/lang/Integer;)Lkotlinx/coroutines/j2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/s0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"
    }
    d2 = {
        "Lkotlinx/coroutines/s0;",
        "",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerViewModel$validatePaidRoom$1"
    f = "PlayerViewModel.kt"
    i = {
        0x0
    }
    l = {
        0xe3
    }
    m = "invokeSuspend"
    n = {
        "anchorId"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Ljava/lang/Integer;

.field final synthetic d:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Integer;Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$t;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$t;->c:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$t;->d:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$t;->e:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$t;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$t;->c:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$t;->d:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$t;->e:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$t;-><init>(Ljava/lang/Integer;Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/s0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$t;->invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/s0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/s0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$t;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$t;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$t;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$t;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$t;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_4

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$t;->c:Ljava/lang/Integer;

    if-eqz p1, :cond_2

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$t;->d:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->m0()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getId()I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, v3

    :goto_1
    if-eqz p1, :cond_c

    goto :goto_0

    .line 5
    :goto_2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$t;->d:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->n0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    move-object v1, v3

    :goto_3
    if-nez v1, :cond_5

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 6
    :cond_5
    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$t;->d:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    invoke-static {v4}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->t(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;)Lcom/qennnsad/aknkaksd/domain/usecase/room/b;

    move-result-object v4

    .line 7
    new-instance v5, Lcom/qennnsad/aknkaksd/domain/usecase/room/b$a;

    .line 8
    iget-object v6, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$t;->e:Ljava/lang/String;

    const-string v7, ""

    .line 9
    invoke-direct {v5, v6, p1, v7, v1}, Lcom/qennnsad/aknkaksd/domain/usecase/room/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 10
    iput-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$t;->a:Ljava/lang/Object;

    iput v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$t;->b:I

    invoke-virtual {v4, v5, p0}, Lcom/qennnsad/aknkaksd/domain/base/h;->b(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    move-object v0, v1

    .line 11
    :goto_4
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$t;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$t;->d:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move-object v5, p1

    check-cast v5, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateCheckBean;

    const-string v6, "2"

    .line 12
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 13
    invoke-static {v4}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->H(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/e;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/e;->e(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/room/PrivateCheckBean;)Z

    move-result v0

    goto :goto_5

    .line 14
    :cond_7
    invoke-virtual {v5}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateCheckBean;->getStream()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_9

    .line 15
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$l;

    invoke-virtual {v5}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateCheckBean;->getStream()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;

    move-result-object v1

    const-string v2, "it.stream"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$l;-><init>(Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;)V

    goto :goto_6

    .line 16
    :cond_9
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;

    const v1, 0x7f1303ac

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v3, v1, v2, v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;-><init>(Ljava/lang/Throwable;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v4, v0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->l(Ljava/lang/Object;)V

    .line 17
    :cond_a
    :goto_6
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$t;->d:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 18
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v3, v2, v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;-><init>(Ljava/lang/Throwable;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->l(Ljava/lang/Object;)V

    .line 19
    :cond_b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 20
    :cond_c
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

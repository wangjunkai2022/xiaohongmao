.class final Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PlayerViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->L(Z)Lkotlinx/coroutines/j2;
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
    c = "com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerViewModel$followRoomOwner$1"
    f = "PlayerViewModel.kt"
    i = {}
    l = {
        0xb3
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Z

.field c:I

.field final synthetic d:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

.field final synthetic e:Z


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$b;->d:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    iput-boolean p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$b;->e:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$b;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$b;->d:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$b;->e:Z

    invoke-direct {p1, v0, v1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/s0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$b;->invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$b;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$b;->c:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$b;->b:Z

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

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
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$b;->d:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->n0()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;

    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$b;->d:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    iget-boolean v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$b;->e:Z

    .line 5
    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->u(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;)Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;

    move-result-object v4

    .line 6
    new-instance v5, Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g$a;

    .line 7
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "it.id"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getCurroomnum()Ljava/lang/String;

    move-result-object p1

    const-string v7, "it.curroomnum"

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {v5, v6, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iput-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$b;->a:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$b;->b:Z

    iput v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$b;->c:I

    invoke-virtual {v4, v5, p0}, Lcom/qennnsad/aknkaksd/domain/base/h;->b(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move v0, v3

    .line 11
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    const v2, 0x7f1301b1

    if-eqz v0, :cond_3

    .line 12
    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$b;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$b;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v1, v3}, Lcom/qennnsad/aknkaksd/presentation/common/l;->l(Ljava/lang/Object;)V

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {v1, v2}, Lcom/qennnsad/aknkaksd/presentation/common/l;->o(I)V

    .line 14
    :cond_4
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6

    const p1, 0x7f1301af

    if-eqz v0, :cond_5

    .line 15
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$b;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$b;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->l(Ljava/lang/Object;)V

    goto :goto_2

    .line 16
    :cond_5
    invoke-virtual {v1, p1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->o(I)V

    .line 17
    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.class final Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$h;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PlayerViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->B0(Ljava/lang/String;)Lkotlinx/coroutines/j2;
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
    c = "com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerViewModel$loadPrivateLimitForJump$1"
    f = "PlayerViewModel.kt"
    i = {}
    l = {
        0x1d0
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$h;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$h;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$h;->c:Ljava/lang/String;

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

    new-instance p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$h;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$h;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$h;->c:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$h;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/s0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$h;->invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$h;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$h;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$h;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$h;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->y(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;)Lcom/qennnsad/aknkaksd/domain/usecase/room/n;

    move-result-object p1

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$h;->c:Ljava/lang/String;

    iput v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$h;->a:I

    invoke-virtual {p1, v1, p0}, Lcom/qennnsad/aknkaksd/domain/base/h;->b(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$h;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;

    .line 5
    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$g;

    invoke-direct {v2, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$g;-><init>(Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;)V

    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/presentation/common/l;->l(Ljava/lang/Object;)V

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$h;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 7
    sget-object v1, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Private limit for jump failed"

    invoke-virtual {v1, p1, v3, v2}, Ltimber/log/Timber$b;->z(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    sget-object p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$f;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$f;

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->l(Ljava/lang/Object;)V

    .line 9
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

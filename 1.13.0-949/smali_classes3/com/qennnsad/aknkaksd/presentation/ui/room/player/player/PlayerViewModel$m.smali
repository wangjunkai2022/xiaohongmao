.class final Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$m;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PlayerViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->K0(Ljava/lang/String;Ljava/lang/String;)Lkotlinx/coroutines/j2;
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
    c = "com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerViewModel$sendDanmu$1"
    f = "PlayerViewModel.kt"
    i = {}
    l = {
        0x11c
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$m;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$m;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$m;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$m;->d:Ljava/lang/String;

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

    new-instance p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$m;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$m;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$m;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$m;->d:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$m;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/s0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$m;->invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$m;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$m;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$m;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$m;->a:I

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
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$m;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->E(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;)Lcom/qennnsad/aknkaksd/domain/usecase/room/a0;

    move-result-object p1

    new-instance v1, Lcom/qennnsad/aknkaksd/domain/usecase/room/a0$a;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$m;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$m;->d:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Lcom/qennnsad/aknkaksd/domain/usecase/room/a0$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$m;->a:I

    invoke-virtual {p1, v1, p0}, Lcom/qennnsad/aknkaksd/domain/base/h;->b(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$m;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    .line 7
    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->r(Ljava/lang/String;)V

    .line 8
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

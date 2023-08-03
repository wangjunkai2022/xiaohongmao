.class final Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ChatDetailsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->I1(J)Lkotlinx/coroutines/j2;
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
    c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$subscribeDataEvents$1"
    f = "ChatDetailsViewModel.kt"
    i = {}
    l = {
        0x16b,
        0x170,
        0x182,
        0x18b,
        0x18f,
        0x192,
        0x19e
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;


# direct methods
.method constructor <init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0;->b:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0;

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0;->b:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    invoke-direct {p1, v0, p2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/s0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0;->invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0;->a:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0;->b:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    invoke-static {p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->T(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/domain/usecase/chat/r;

    move-result-object p1

    iget-object v1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0;->b:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    invoke-static {v1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->u(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0$a;

    iget-object v4, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0;->b:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    invoke-direct {v3, v4, v2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0$a;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x1

    iput v4, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0;->a:I

    invoke-virtual {p1, v1, v3, p0}, Lcom/im/freechat/domain/usecase/base/FlowUseCase;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    .line 5
    :cond_0
    :goto_0
    new-instance p1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0;->b:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    invoke-static {v1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->X(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/domain/usecase/messages/n;

    move-result-object v1

    iget-object v3, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0;->b:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    invoke-static {v3}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->u(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)I

    move-result v3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0$b;

    iget-object v5, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0;->b:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    invoke-direct {v4, p1, v5, v2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0$b;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0;->a:I

    invoke-virtual {v1, v3, v4, p0}, Lcom/im/freechat/domain/usecase/base/FlowUseCase;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    return-object v0

    .line 7
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0;->b:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    invoke-static {p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->U(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/domain/usecase/members/h;

    move-result-object p1

    iget-object v1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0;->b:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    invoke-static {v1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->u(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0$c;

    iget-object v4, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0;->b:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    invoke-direct {v3, v4, v2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0$c;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    iput v4, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0;->a:I

    invoke-virtual {p1, v1, v3, p0}, Lcom/im/freechat/domain/usecase/base/FlowUseCase;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 8
    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0;->b:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    invoke-static {p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->F(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/domain/usecase/chat/j;

    move-result-object p1

    iget-object v1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0;->b:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    invoke-static {v1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->u(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0$d;

    iget-object v4, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0;->b:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    invoke-direct {v3, v4, v2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0$d;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x4

    iput v4, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0;->a:I

    invoke-virtual {p1, v1, v3, p0}, Lcom/im/freechat/domain/usecase/base/FlowUseCase;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 9
    :cond_3
    :goto_3
    iget-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0;->b:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    invoke-static {p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->W(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/domain/usecase/chat/s;

    move-result-object p1

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v3, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0$e;

    iget-object v4, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0;->b:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    invoke-direct {v3, v4, v2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0$e;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x5

    iput v4, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0;->a:I

    invoke-virtual {p1, v1, v3, p0}, Lcom/im/freechat/domain/usecase/base/FlowUseCase;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 10
    :cond_4
    :goto_4
    iget-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0;->b:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    invoke-static {p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->V(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/domain/usecase/messages/k;

    move-result-object p1

    .line 11
    new-instance v1, Lcom/im/freechat/domain/usecase/messages/k$a;

    .line 12
    iget-object v3, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0;->b:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    invoke-static {v3}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->u(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)I

    move-result v3

    const-wide/16 v4, 0x0

    .line 13
    invoke-direct {v1, v3, v4, v5}, Lcom/im/freechat/domain/usecase/messages/k$a;-><init>(IJ)V

    .line 14
    new-instance v3, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0$f;

    iget-object v4, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0;->b:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    invoke-direct {v3, v4, v2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0$f;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x6

    iput v4, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0;->a:I

    invoke-virtual {p1, v1, v3, p0}, Lcom/im/freechat/domain/usecase/base/FlowUseCase;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 15
    :cond_5
    :goto_5
    iget-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0;->b:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    invoke-static {p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->E(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/domain/usecase/auth/e;

    move-result-object p1

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v3, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0$g;

    iget-object v4, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0;->b:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    invoke-direct {v3, v4, v2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0$g;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x7

    iput v2, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0;->a:I

    invoke-virtual {p1, v1, v3, p0}, Lcom/im/freechat/domain/usecase/base/FlowUseCase;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 16
    :cond_6
    :goto_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

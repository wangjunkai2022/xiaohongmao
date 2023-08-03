.class final Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ChooseChatTypeViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;->m()Lkotlinx/coroutines/j2;
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
    c = "com.im.freechat.ui.create.choosechattype.ChooseChatTypeViewModel$init$1"
    f = "ChooseChatTypeViewModel.kt"
    i = {}
    l = {
        0x13,
        0x16
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;


# direct methods
.method constructor <init>(Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel$a;->b:Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;

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

    new-instance p1, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel$a;

    iget-object v0, p0, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel$a;->b:Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;

    invoke-direct {p1, v0, p2}, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel$a;-><init>(Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/s0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel$a;->invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel$a;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel$a;->b:Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;

    invoke-static {p1}, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;->j(Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;)Lcom/im/freechat/domain/usecase/chat/g;

    move-result-object p1

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v4, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel$a$a;

    iget-object v5, p0, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel$a;->b:Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel$a$a;-><init>(Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;Lkotlin/coroutines/Continuation;)V

    iput v3, p0, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel$a;->a:I

    invoke-virtual {p1, v1, v4, p0}, Lcom/im/freechat/domain/usecase/base/FlowUseCase;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 5
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel$a;->b:Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;

    invoke-static {p1}, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;->i(Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;)Lcom/im/freechat/domain/usecase/currentuser/a;

    move-result-object p1

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput v2, p0, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel$a;->a:I

    invoke-virtual {p1, v1, p0}, Lcom/im/freechat/domain/usecase/base/a;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 6
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel$a;->b:Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    check-cast p1, Lcom/im/freechat/shared/entities/auth/UserInfo;

    .line 7
    invoke-virtual {v0}, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;->l()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 8
    :cond_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

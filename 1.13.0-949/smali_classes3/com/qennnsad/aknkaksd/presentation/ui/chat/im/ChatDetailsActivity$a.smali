.class final Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatDetailsActivity$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ChatDetailsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatDetailsActivity;->onCreate(Landroid/os/Bundle;)V
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
    c = "com.qennnsad.aknkaksd.presentation.ui.chat.im.ChatDetailsActivity$onCreate$1"
    f = "ChatDetailsActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatDetailsActivity;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatDetailsActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatDetailsActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatDetailsActivity$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatDetailsActivity$a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatDetailsActivity;

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

    new-instance p1, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatDetailsActivity$a;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatDetailsActivity$a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatDetailsActivity;

    invoke-direct {p1, v0, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatDetailsActivity$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatDetailsActivity;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/s0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatDetailsActivity$a;->invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatDetailsActivity$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatDetailsActivity$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatDetailsActivity$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 1
    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatDetailsActivity$a;->a:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatDetailsActivity$a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatDetailsActivity;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatDetailsActivity;->M()Lg5/a;

    move-result-object p1

    invoke-virtual {p1}, Lg5/a;->C()Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/AuthActivity;->k:Lcom/qennnsad/aknkaksd/presentation/module/auth/AuthActivity$a;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatDetailsActivity$a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatDetailsActivity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/qennnsad/aknkaksd/presentation/module/auth/AuthActivity$a;->d(Lcom/qennnsad/aknkaksd/presentation/module/auth/AuthActivity$a;Landroid/content/Context;Ljava/lang/Integer;ZILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatDetailsActivity$a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatDetailsActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 5
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.class final Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$b0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ChatDetailsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;-><init>(Lcom/im/freechat/domain/usecase/messages/k;Lcom/im/freechat/domain/usecase/chat/r;Lcom/im/freechat/domain/usecase/auth/e;Lcom/im/freechat/domain/usecase/chat/e;Lcom/im/freechat/domain/usecase/messages/j;Lcom/im/freechat/domain/usecase/messages/b;Lcom/im/freechat/domain/usecase/messages/n;Lcom/im/freechat/media/audio/c;Lcom/im/freechat/domain/usecase/chat/a;Lp4/e;Lcom/im/freechat/domain/usecase/members/h;Lcom/im/freechat/domain/usecase/contact/b;Lcom/im/freechat/domain/usecase/contact/f;Lcom/im/freechat/domain/usecase/contact/a;Lcom/im/freechat/domain/usecase/contact/j;Lcom/im/freechat/domain/h;Lcom/im/freechat/domain/usecase/messages/i;Lcom/im/freechat/domain/usecase/chat/q;Lcom/im/freechat/domain/usecase/chat/f;Lcom/im/freechat/domain/usecase/messages/c;Lcom/im/freechat/domain/usecase/messages/o;Lcom/im/freechat/domain/usecase/chat/j;Lcom/im/freechat/domain/usecase/messages/p;Lcom/im/freechat/domain/usecase/currentuser/h;Lcom/im/freechat/domain/usecase/currentuser/b;Lcom/im/freechat/utils/f;Lcom/im/freechat/domain/usecase/messages/a;Lcom/im/freechat/domain/usecase/messages/f;Lcom/im/freechat/domain/usecase/messages/e;Lcom/im/freechat/domain/usecase/messages/d;Lcom/im/freechat/domain/usecase/chat/s;Lcom/im/freechat/domain/usecase/messages/g;Lcom/im/freechat/domain/n;Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/Unit;",
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
        "\u0000\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"
    }
    d2 = {
        "",
        "it",
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
    c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$startTyping$1"
    f = "ChatDetailsViewModel.kt"
    i = {}
    l = {
        0x72
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
            "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$b0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$b0;->b:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

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

    new-instance p1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$b0;

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$b0;->b:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    invoke-direct {p1, v0, p2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$b0;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final h(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlin/Unit;
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
            "Lkotlin/Unit;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$b0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$b0;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$b0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Unit;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$b0;->h(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$b0;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$b0;->b:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    invoke-static {p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->S(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/domain/usecase/chat/q;

    move-result-object p1

    iget-object v1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$b0;->b:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    invoke-static {v1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->u(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    iput v2, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$b0;->a:I

    invoke-virtual {p1, v1, p0}, Lcom/im/freechat/domain/usecase/base/a;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.class final Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$c;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UserProfileViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->F(IZ)Lkotlinx/coroutines/j2;
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
    c = "com.im.freechat.ui.chat.userprofile.UserProfileViewModel$init$1"
    f = "UserProfileViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field private synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;

.field final synthetic d:I

.field final synthetic e:Z


# direct methods
.method constructor <init>(Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;IZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;",
            "IZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$c;->c:Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;

    iput p2, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$c;->d:I

    iput-boolean p3, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$c;->e:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$c;

    iget-object v1, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$c;->c:Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;

    iget v2, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$c;->d:I

    iget-boolean v3, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$c;->e:Z

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$c;-><init>(Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;IZLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$c;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/s0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$c;->invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$c;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$c;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 1
    iget v0, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$c;->a:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$c;->b:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/s0;

    .line 2
    iget-object p1, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$c;->c:Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;

    iget v1, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$c;->d:I

    invoke-virtual {p1, v1}, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->J(I)V

    .line 3
    iget-object p1, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$c;->c:Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;

    iget-boolean v1, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$c;->e:Z

    invoke-virtual {p1, v1}, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->K(Z)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    new-instance v3, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$c$c;

    iget-object p1, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$c;->c:Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;

    iget v4, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$c;->d:I

    const/4 v6, 0x0

    invoke-direct {v3, p1, v4, v6}, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$c$c;-><init>(Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;ILkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/j;->b(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/y0;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$c;->c:Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;

    new-instance v1, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$c$a;

    iget v2, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$c;->d:I

    invoke-direct {v1, v0, v2, p1, v6}, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$c$a;-><init>(Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;ILkotlinx/coroutines/y0;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0, v1}, Lcom/im/freechat/base/a;->c(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    .line 6
    iget-object p1, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$c;->c:Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;

    new-instance v0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$c$b;

    iget v1, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$c;->d:I

    invoke-direct {v0, p1, v1, v6}, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$c$b;-><init>(Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;ILkotlin/coroutines/Continuation;)V

    invoke-virtual {p1, v0}, Lcom/im/freechat/base/a;->c(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    .line 7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

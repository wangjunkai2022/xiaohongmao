.class final Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$c;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SimpleWebViewViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;->y(Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;)Lkotlinx/coroutines/j2;
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
    c = "com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewViewModel$prepareSvga$1"
    f = "SimpleWebViewViewModel.kt"
    i = {}
    l = {
        0x2f
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;

.field final synthetic c:Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;",
            "Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$c;->b:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$c;->c:Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;

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

    new-instance p1, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$c;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$c;->b:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$c;->c:Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;

    invoke-direct {p1, v0, v1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$c;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/s0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$c;->invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$c;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$c;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$c;->a:I

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
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$c;->b:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;->u(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;)Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b;

    move-result-object p1

    .line 5
    new-instance v1, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b$a;

    .line 6
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$c;->c:Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;->getCache_name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "peerage.cache_name"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$c;->c:Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;

    invoke-virtual {v4}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;->getMount_url()Ljava/lang/String;

    move-result-object v4

    const-string v5, "peerage.mount_url"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {v1, v3, v4}, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iput v2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$c;->a:I

    invoke-virtual {p1, v1, p0}, Lcom/qennnsad/aknkaksd/domain/base/h;->b(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 10
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$c;->b:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$c;->c:Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    check-cast p1, Lkotlin/Unit;

    .line 11
    new-instance p1, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/h$b;

    invoke-direct {p1, v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/h$b;-><init>(Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;)V

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->l(Ljava/lang/Object;)V

    .line 12
    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

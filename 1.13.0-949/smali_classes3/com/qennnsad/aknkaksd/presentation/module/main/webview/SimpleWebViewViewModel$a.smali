.class final Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SimpleWebViewViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;->v(I)Lkotlinx/coroutines/j2;
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
    c = "com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewViewModel$createChat$1"
    f = "SimpleWebViewViewModel.kt"
    i = {}
    l = {
        0x21
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:I

.field final synthetic c:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;


# direct methods
.method constructor <init>(ILcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$a;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$a;->b:I

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$a;->c:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;

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

    new-instance p1, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$a;

    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$a;->b:I

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$a;->c:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;

    invoke-direct {p1, v0, v1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$a;-><init>(ILcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/s0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$a;->invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$a;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

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
    invoke-static {}, Lcom/im/freechat/sdk/SDKManager;->d()Lcom/im/freechat/sdk/a;

    move-result-object p1

    .line 5
    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$a;->b:I

    .line 6
    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$a$a;

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$a;->c:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;

    invoke-direct {v3, v4}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$a$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;)V

    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$a$b;

    iget-object v5, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$a;->c:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;

    invoke-direct {v4, v5}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$a$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;)V

    iput v2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$a;->a:I

    invoke-virtual {p1, v1, v3, v4, p0}, Lcom/im/freechat/sdk/a;->b(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
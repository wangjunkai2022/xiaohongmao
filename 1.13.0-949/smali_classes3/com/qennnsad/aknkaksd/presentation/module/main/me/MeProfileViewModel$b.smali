.class final Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MeProfileViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel;->F()V
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
    c = "com.qennnsad.aknkaksd.presentation.module.main.me.MeProfileViewModel$refreshData$1"
    f = "MeProfileViewModel.kt"
    i = {}
    l = {
        0x49
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field private synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel$b;->c:Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel$b;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel$b;->c:Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel;

    invoke-direct {v0, v1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel$b;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/s0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel$b;->invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel$b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel$b;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel$b;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

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

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel$b;->b:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/s0;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlinx/coroutines/y0;

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 4
    new-instance v6, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel$b$a;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel$b;->c:Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel;

    const/4 v10, 0x0

    invoke-direct {v6, v3, v10}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel$b$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/j;->b(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/y0;

    move-result-object v3

    aput-object v3, v1, v9

    .line 5
    new-instance v6, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel$b$b;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel$b;->c:Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel;

    invoke-direct {v6, v3, v10}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel$b$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/j;->b(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/y0;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v9, 0x2

    .line 6
    new-instance v6, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel$b$c;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel$b;->c:Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel;

    invoke-direct {v6, v3, v10}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel$b$c;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/j;->b(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/y0;

    move-result-object p1

    aput-object p1, v1, v9

    .line 7
    iput v2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel$b;->a:I

    invoke-static {v1, p0}, Lkotlinx/coroutines/f;->b([Lkotlinx/coroutines/y0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 8
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

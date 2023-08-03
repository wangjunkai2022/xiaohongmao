.class final Lkotlinx/coroutines/flow/r$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Share.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/r;->d(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/flow/i;Lkotlinx/coroutines/flow/s;Lkotlinx/coroutines/flow/c0;Ljava/lang/Object;)Lkotlinx/coroutines/j2;
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
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\u0008\u0000\u0010\u0000*\u00020\u0001H\u008a@"
    }
    d2 = {
        "T",
        "Lkotlinx/coroutines/s0;",
        "",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1"
    f = "Share.kt"
    i = {}
    l = {
        0xd6,
        0xda,
        0xdb,
        0xe1
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lkotlinx/coroutines/flow/c0;

.field final synthetic c:Lkotlinx/coroutines/flow/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic d:Lkotlinx/coroutines/flow/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/s<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/coroutines/flow/c0;Lkotlinx/coroutines/flow/i;Lkotlinx/coroutines/flow/s;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/c0;",
            "Lkotlinx/coroutines/flow/i<",
            "+TT;>;",
            "Lkotlinx/coroutines/flow/s<",
            "TT;>;TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/r$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/r$a;->b:Lkotlinx/coroutines/flow/c0;

    iput-object p2, p0, Lkotlinx/coroutines/flow/r$a;->c:Lkotlinx/coroutines/flow/i;

    iput-object p3, p0, Lkotlinx/coroutines/flow/r$a;->d:Lkotlinx/coroutines/flow/s;

    iput-object p4, p0, Lkotlinx/coroutines/flow/r$a;->e:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Lkotlinx/coroutines/flow/r$a;

    iget-object v1, p0, Lkotlinx/coroutines/flow/r$a;->b:Lkotlinx/coroutines/flow/c0;

    iget-object v2, p0, Lkotlinx/coroutines/flow/r$a;->c:Lkotlinx/coroutines/flow/i;

    iget-object v3, p0, Lkotlinx/coroutines/flow/r$a;->d:Lkotlinx/coroutines/flow/s;

    iget-object v4, p0, Lkotlinx/coroutines/flow/r$a;->e:Ljava/lang/Object;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/flow/r$a;-><init>(Lkotlinx/coroutines/flow/c0;Lkotlinx/coroutines/flow/i;Lkotlinx/coroutines/flow/s;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/s0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/r$a;->invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/r$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/r$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/flow/r$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lkotlinx/coroutines/flow/r$a;->a:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_0

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

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lkotlinx/coroutines/flow/r$a;->b:Lkotlinx/coroutines/flow/c0;

    sget-object v1, Lkotlinx/coroutines/flow/c0;->a:Lkotlinx/coroutines/flow/c0$a;

    invoke-virtual {v1}, Lkotlinx/coroutines/flow/c0$a;->c()Lkotlinx/coroutines/flow/c0;

    move-result-object v6

    if-ne p1, v6, :cond_4

    .line 5
    iget-object p1, p0, Lkotlinx/coroutines/flow/r$a;->c:Lkotlinx/coroutines/flow/i;

    iget-object v1, p0, Lkotlinx/coroutines/flow/r$a;->d:Lkotlinx/coroutines/flow/s;

    iput v5, p0, Lkotlinx/coroutines/flow/r$a;->a:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/i;->collect(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 6
    :cond_4
    iget-object p1, p0, Lkotlinx/coroutines/flow/r$a;->b:Lkotlinx/coroutines/flow/c0;

    invoke-virtual {v1}, Lkotlinx/coroutines/flow/c0$a;->d()Lkotlinx/coroutines/flow/c0;

    move-result-object v1

    const/4 v5, 0x0

    if-ne p1, v1, :cond_6

    .line 7
    iget-object p1, p0, Lkotlinx/coroutines/flow/r$a;->d:Lkotlinx/coroutines/flow/s;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/s;->d()Lkotlinx/coroutines/flow/h0;

    move-result-object p1

    new-instance v1, Lkotlinx/coroutines/flow/r$a$a;

    invoke-direct {v1, v5}, Lkotlinx/coroutines/flow/r$a$a;-><init>(Lkotlin/coroutines/Continuation;)V

    iput v4, p0, Lkotlinx/coroutines/flow/r$a;->a:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/flow/k;->u0(Lkotlinx/coroutines/flow/i;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 8
    :cond_5
    :goto_1
    iget-object p1, p0, Lkotlinx/coroutines/flow/r$a;->c:Lkotlinx/coroutines/flow/i;

    iget-object v1, p0, Lkotlinx/coroutines/flow/r$a;->d:Lkotlinx/coroutines/flow/s;

    iput v3, p0, Lkotlinx/coroutines/flow/r$a;->a:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/i;->collect(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 9
    :cond_6
    iget-object p1, p0, Lkotlinx/coroutines/flow/r$a;->b:Lkotlinx/coroutines/flow/c0;

    iget-object v1, p0, Lkotlinx/coroutines/flow/r$a;->d:Lkotlinx/coroutines/flow/s;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/s;->d()Lkotlinx/coroutines/flow/h0;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlinx/coroutines/flow/c0;->a(Lkotlinx/coroutines/flow/h0;)Lkotlinx/coroutines/flow/i;

    move-result-object p1

    .line 10
    invoke-static {p1}, Lkotlinx/coroutines/flow/k;->g0(Lkotlinx/coroutines/flow/i;)Lkotlinx/coroutines/flow/i;

    move-result-object p1

    .line 11
    new-instance v1, Lkotlinx/coroutines/flow/r$a$b;

    iget-object v3, p0, Lkotlinx/coroutines/flow/r$a;->c:Lkotlinx/coroutines/flow/i;

    iget-object v4, p0, Lkotlinx/coroutines/flow/r$a;->d:Lkotlinx/coroutines/flow/s;

    iget-object v6, p0, Lkotlinx/coroutines/flow/r$a;->e:Ljava/lang/Object;

    invoke-direct {v1, v3, v4, v6, v5}, Lkotlinx/coroutines/flow/r$a$b;-><init>(Lkotlinx/coroutines/flow/i;Lkotlinx/coroutines/flow/s;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lkotlinx/coroutines/flow/r$a;->a:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/flow/k;->A(Lkotlinx/coroutines/flow/i;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 12
    :cond_7
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

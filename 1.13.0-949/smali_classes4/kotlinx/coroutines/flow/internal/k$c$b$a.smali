.class final Lkotlinx/coroutines/flow/internal/k$c$b$a;
.super Ljava/lang/Object;
.source "Combine.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/j;
.implements Lkotlin/coroutines/jvm/internal/SuspendFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/internal/k$c$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/j;",
        "Lkotlin/coroutines/jvm/internal/SuspendFunction;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003\"\u0004\u0008\u0002\u0010\u00042\u0006\u0010\u0005\u001a\u0002H\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "T1",
        "T2",
        "R",
        "value",
        "emit",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lkotlin/coroutines/CoroutineContext;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lkotlinx/coroutines/channels/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/f0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lkotlinx/coroutines/flow/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/j<",
            "TR;>;"
        }
    .end annotation
.end field

.field final synthetic e:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "TT1;TT2;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;Lkotlinx/coroutines/channels/f0;Lkotlinx/coroutines/flow/j;Lkotlin/jvm/functions/Function3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Ljava/lang/Object;",
            "Lkotlinx/coroutines/channels/f0<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlinx/coroutines/flow/j<",
            "-TR;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-TT1;-TT2;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/k$c$b$a;->a:Lkotlin/coroutines/CoroutineContext;

    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/k$c$b$a;->b:Ljava/lang/Object;

    iput-object p3, p0, Lkotlinx/coroutines/flow/internal/k$c$b$a;->c:Lkotlinx/coroutines/channels/f0;

    iput-object p4, p0, Lkotlinx/coroutines/flow/internal/k$c$b$a;->d:Lkotlinx/coroutines/flow/j;

    iput-object p5, p0, Lkotlinx/coroutines/flow/internal/k$c$b$a;->e:Lkotlin/jvm/functions/Function3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/flow/internal/k$c$b$a$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/internal/k$c$b$a$b;

    iget v1, v0, Lkotlinx/coroutines/flow/internal/k$c$b$a$b;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/internal/k$c$b$a$b;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/internal/k$c$b$a$b;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/internal/k$c$b$a$b;-><init>(Lkotlinx/coroutines/flow/internal/k$c$b$a;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/internal/k$c$b$a$b;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/flow/internal/k$c$b$a$b;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lkotlinx/coroutines/flow/internal/k$c$b$a;->a:Lkotlin/coroutines/CoroutineContext;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object v4, p0, Lkotlinx/coroutines/flow/internal/k$c$b$a;->b:Ljava/lang/Object;

    new-instance v11, Lkotlinx/coroutines/flow/internal/k$c$b$a$a;

    iget-object v6, p0, Lkotlinx/coroutines/flow/internal/k$c$b$a;->c:Lkotlinx/coroutines/channels/f0;

    iget-object v7, p0, Lkotlinx/coroutines/flow/internal/k$c$b$a;->d:Lkotlinx/coroutines/flow/j;

    iget-object v8, p0, Lkotlinx/coroutines/flow/internal/k$c$b$a;->e:Lkotlin/jvm/functions/Function3;

    const/4 v10, 0x0

    move-object v5, v11

    move-object v9, p1

    invoke-direct/range {v5 .. v10}, Lkotlinx/coroutines/flow/internal/k$c$b$a$a;-><init>(Lkotlinx/coroutines/channels/f0;Lkotlinx/coroutines/flow/j;Lkotlin/jvm/functions/Function3;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lkotlinx/coroutines/flow/internal/k$c$b$a$b;->c:I

    invoke-static {p2, v2, v4, v11, v0}, Lkotlinx/coroutines/flow/internal/e;->c(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

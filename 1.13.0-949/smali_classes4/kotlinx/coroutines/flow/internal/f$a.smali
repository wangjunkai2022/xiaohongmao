.class final Lkotlinx/coroutines/flow/internal/f$a;
.super Ljava/lang/Object;
.source "Merge.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/j;
.implements Lkotlin/coroutines/jvm/internal/SuspendFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/internal/f;->h(Lkotlinx/coroutines/channels/d0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0004\u001a\u00020\u0003\"\u0004\u0008\u0000\u0010\u00002\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "T",
        "Lkotlinx/coroutines/flow/i;",
        "inner",
        "",
        "a",
        "(Lkotlinx/coroutines/flow/i;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/coroutines/j2;

.field final synthetic b:Lkotlinx/coroutines/sync/f;

.field final synthetic c:Lkotlinx/coroutines/channels/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/d0<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic d:Lkotlinx/coroutines/flow/internal/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/internal/u<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/coroutines/j2;Lkotlinx/coroutines/sync/f;Lkotlinx/coroutines/channels/d0;Lkotlinx/coroutines/flow/internal/u;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/j2;",
            "Lkotlinx/coroutines/sync/f;",
            "Lkotlinx/coroutines/channels/d0<",
            "-TT;>;",
            "Lkotlinx/coroutines/flow/internal/u<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/f$a;->a:Lkotlinx/coroutines/j2;

    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/f$a;->b:Lkotlinx/coroutines/sync/f;

    iput-object p3, p0, Lkotlinx/coroutines/flow/internal/f$a;->c:Lkotlinx/coroutines/channels/d0;

    iput-object p4, p0, Lkotlinx/coroutines/flow/internal/f$a;->d:Lkotlinx/coroutines/flow/internal/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/flow/i;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1    # Lkotlinx/coroutines/flow/i;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/i<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/flow/internal/f$a$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/internal/f$a$b;

    iget v1, v0, Lkotlinx/coroutines/flow/internal/f$a$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/internal/f$a$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/internal/f$a$b;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/internal/f$a$b;-><init>(Lkotlinx/coroutines/flow/internal/f$a;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/internal/f$a$b;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/flow/internal/f$a$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lkotlinx/coroutines/flow/internal/f$a$b;->b:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/i;

    iget-object v0, v0, Lkotlinx/coroutines/flow/internal/f$a$b;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/flow/internal/f$a;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

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
    iget-object p2, p0, Lkotlinx/coroutines/flow/internal/f$a;->a:Lkotlinx/coroutines/j2;

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlinx/coroutines/m2;->A(Lkotlinx/coroutines/j2;)V

    .line 5
    :goto_1
    iget-object p2, p0, Lkotlinx/coroutines/flow/internal/f$a;->b:Lkotlinx/coroutines/sync/f;

    iput-object p0, v0, Lkotlinx/coroutines/flow/internal/f$a$b;->a:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/internal/f$a$b;->b:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/flow/internal/f$a$b;->e:I

    invoke-interface {p2, v0}, Lkotlinx/coroutines/sync/f;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v0, p0

    .line 6
    :goto_2
    iget-object v1, v0, Lkotlinx/coroutines/flow/internal/f$a;->c:Lkotlinx/coroutines/channels/d0;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lkotlinx/coroutines/flow/internal/f$a$a;

    iget-object p2, v0, Lkotlinx/coroutines/flow/internal/f$a;->d:Lkotlinx/coroutines/flow/internal/u;

    iget-object v0, v0, Lkotlinx/coroutines/flow/internal/f$a;->b:Lkotlinx/coroutines/sync/f;

    const/4 v5, 0x0

    invoke-direct {v4, p1, p2, v0, v5}, Lkotlinx/coroutines/flow/internal/f$a$a;-><init>(Lkotlinx/coroutines/flow/i;Lkotlinx/coroutines/flow/internal/u;Lkotlinx/coroutines/sync/f;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/j;->e(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/j2;

    .line 7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/i;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/f$a;->a(Lkotlinx/coroutines/flow/i;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

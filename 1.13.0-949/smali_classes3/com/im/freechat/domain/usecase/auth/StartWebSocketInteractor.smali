.class public final Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;
.super Lcom/im/freechat/domain/usecase/base/FlowUseCase;
.source "StartWebSocketInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/im/freechat/domain/usecase/base/FlowUseCase<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStartWebSocketInteractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StartWebSocketInteractor.kt\ncom/im/freechat/domain/usecase/auth/StartWebSocketInteractor\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,65:1\n20#2:66\n22#2:70\n47#2:71\n49#2:75\n50#3:67\n55#3:69\n50#3:72\n55#3:74\n106#4:68\n106#4:73\n*S KotlinDebug\n*F\n+ 1 StartWebSocketInteractor.kt\ncom/im/freechat/domain/usecase/auth/StartWebSocketInteractor\n*L\n61#1:66\n61#1:70\n62#1:71\n62#1:75\n61#1:67\n61#1:69\n62#1:72\n62#1:74\n61#1:68\n62#1:73\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\'\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u0012\u0006\u0010\u000f\u001a\u00020\u000c\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0006\u0010\u0017\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J!\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0094@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;",
        "Lcom/im/freechat/domain/usecase/base/FlowUseCase;",
        "",
        "",
        "params",
        "Lkotlinx/coroutines/flow/i;",
        "h",
        "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/im/freechat/domain/k;",
        "a",
        "Lcom/im/freechat/domain/k;",
        "loginRepository",
        "Lcom/im/freechat/domain/u;",
        "b",
        "Lcom/im/freechat/domain/u;",
        "webSocketRepository",
        "Lcom/im/freechat/domain/t;",
        "c",
        "Lcom/im/freechat/domain/t;",
        "syncRepository",
        "Lcom/im/freechat/domain/c;",
        "d",
        "Lcom/im/freechat/domain/c;",
        "databaseRepository",
        "<init>",
        "(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/u;Lcom/im/freechat/domain/t;Lcom/im/freechat/domain/c;)V",
        "domain"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Lcom/im/freechat/domain/k;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lcom/im/freechat/domain/u;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lcom/im/freechat/domain/t;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lcom/im/freechat/domain/c;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/u;Lcom/im/freechat/domain/t;Lcom/im/freechat/domain/c;)V
    .locals 1
    .param p1    # Lcom/im/freechat/domain/k;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/domain/u;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/im/freechat/domain/t;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lcom/im/freechat/domain/c;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "loginRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webSocketRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "syncRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "databaseRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/domain/usecase/base/FlowUseCase;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;->a:Lcom/im/freechat/domain/k;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;->b:Lcom/im/freechat/domain/u;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;->c:Lcom/im/freechat/domain/t;

    .line 5
    iput-object p4, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;->d:Lcom/im/freechat/domain/c;

    return-void
.end method

.method public static final synthetic e(Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;)Lcom/im/freechat/domain/c;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;->d:Lcom/im/freechat/domain/c;

    return-object p0
.end method

.method public static final synthetic f(Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;)Lcom/im/freechat/domain/k;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;->a:Lcom/im/freechat/domain/k;

    return-object p0
.end method

.method public static final synthetic g(Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;)Lcom/im/freechat/domain/t;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;->c:Lcom/im/freechat/domain/t;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;->h(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected h(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p2, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$a;

    iget v1, v0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$a;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$a;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$a;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$a;-><init>(Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$a;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$a;->g:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p1, v0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$a;->d:Z

    iget-object v1, v0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/im/freechat/shared/entities/auth/UserInfo;

    iget-object v2, v0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$a;->b:Ljava/lang/Object;

    check-cast v2, Lcom/im/freechat/domain/u;

    iget-object v0, v0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;

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
    iget-boolean p1, v0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$a;->d:Z

    iget-object v2, v0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$a;->b:Ljava/lang/Object;

    check-cast v2, Lcom/im/freechat/domain/u;

    iget-object v4, v0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$a;->a:Ljava/lang/Object;

    check-cast v4, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;->b:Lcom/im/freechat/domain/u;

    .line 5
    iget-object v2, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;->a:Lcom/im/freechat/domain/k;

    iput-object p0, v0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$a;->a:Ljava/lang/Object;

    iput-object p2, v0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$a;->b:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$a;->d:Z

    iput v4, v0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$a;->g:I

    invoke-interface {v2, v0}, Lcom/im/freechat/domain/k;->v(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v4, p0

    move-object v6, v2

    move-object v2, p2

    move-object p2, v6

    .line 6
    :goto_1
    check-cast p2, Lcom/im/freechat/shared/entities/auth/UserInfo;

    .line 7
    iget-object v5, v4, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;->a:Lcom/im/freechat/domain/k;

    iput-object v4, v0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$a;->a:Ljava/lang/Object;

    iput-object v2, v0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$a;->b:Ljava/lang/Object;

    iput-object p2, v0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$a;->c:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$a;->d:Z

    iput v3, v0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$a;->g:I

    invoke-interface {v5, v0}, Lcom/im/freechat/domain/k;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_5

    return-object v1

    :cond_5
    move-object v1, p2

    move-object p2, v0

    move-object v0, v4

    .line 8
    :goto_2
    check-cast p2, Ljava/lang/String;

    .line 9
    invoke-interface {v2, v1, p2, p1}, Lcom/im/freechat/domain/u;->f(Lcom/im/freechat/shared/entities/auth/UserInfo;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/i;

    move-result-object p1

    .line 10
    new-instance p2, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;-><init>(Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/k;->e1(Lkotlinx/coroutines/flow/i;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/i;

    move-result-object p1

    .line 11
    new-instance p2, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$buildFlow$$inlined$filter$1;

    invoke-direct {p2, p1}, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$buildFlow$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/i;)V

    .line 12
    new-instance p1, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$buildFlow$$inlined$map$1;

    invoke-direct {p1, p2}, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$buildFlow$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/i;)V

    return-object p1
.end method

.class public final Lcom/im/freechat/domain/usecase/currentuser/k;
.super Lcom/im/freechat/domain/usecase/base/a;
.source "SetShowLastOnlineInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/im/freechat/domain/usecase/base/a<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u001f\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0011\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001b\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0002H\u0094@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0011\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0010\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/im/freechat/domain/usecase/currentuser/k;",
        "Lcom/im/freechat/domain/usecase/base/a;",
        "",
        "",
        "params",
        "c",
        "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/im/freechat/domain/k;",
        "a",
        "Lcom/im/freechat/domain/k;",
        "loginRepository",
        "Lcom/im/freechat/domain/c;",
        "b",
        "Lcom/im/freechat/domain/c;",
        "databaseRepository",
        "Lcom/im/freechat/domain/t;",
        "Lcom/im/freechat/domain/t;",
        "syncRepository",
        "<init>",
        "(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/c;Lcom/im/freechat/domain/t;)V",
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

.field private final b:Lcom/im/freechat/domain/c;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lcom/im/freechat/domain/t;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/c;Lcom/im/freechat/domain/t;)V
    .locals 1
    .param p1    # Lcom/im/freechat/domain/k;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/domain/c;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/im/freechat/domain/t;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "loginRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "databaseRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "syncRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/domain/usecase/base/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/domain/usecase/currentuser/k;->a:Lcom/im/freechat/domain/k;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/domain/usecase/currentuser/k;->b:Lcom/im/freechat/domain/c;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/domain/usecase/currentuser/k;->c:Lcom/im/freechat/domain/t;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/domain/usecase/currentuser/k;->c(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected c(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 24
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/im/freechat/domain/usecase/currentuser/k$a;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/im/freechat/domain/usecase/currentuser/k$a;

    iget v3, v2, Lcom/im/freechat/domain/usecase/currentuser/k$a;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/im/freechat/domain/usecase/currentuser/k$a;->f:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/im/freechat/domain/usecase/currentuser/k$a;

    invoke-direct {v2, v0, v1}, Lcom/im/freechat/domain/usecase/currentuser/k$a;-><init>(Lcom/im/freechat/domain/usecase/currentuser/k;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/im/freechat/domain/usecase/currentuser/k$a;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 1
    iget v4, v2, Lcom/im/freechat/domain/usecase/currentuser/k$a;->f:I

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v4, :cond_5

    if-eq v4, v9, :cond_4

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v4, v2, Lcom/im/freechat/domain/usecase/currentuser/k$a;->b:Ljava/lang/Object;

    check-cast v4, Lcom/im/freechat/shared/entities/auth/UserInfo;

    iget-object v6, v2, Lcom/im/freechat/domain/usecase/currentuser/k$a;->a:Ljava/lang/Object;

    check-cast v6, Lcom/im/freechat/domain/usecase/currentuser/k;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    iget-object v4, v2, Lcom/im/freechat/domain/usecase/currentuser/k$a;->b:Ljava/lang/Object;

    check-cast v4, Lcom/im/freechat/shared/entities/auth/UserInfo;

    iget-object v7, v2, Lcom/im/freechat/domain/usecase/currentuser/k$a;->a:Ljava/lang/Object;

    check-cast v7, Lcom/im/freechat/domain/usecase/currentuser/k;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    iget-boolean v4, v2, Lcom/im/freechat/domain/usecase/currentuser/k$a;->c:Z

    iget-object v9, v2, Lcom/im/freechat/domain/usecase/currentuser/k$a;->a:Ljava/lang/Object;

    check-cast v9, Lcom/im/freechat/domain/usecase/currentuser/k;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Lcom/im/freechat/domain/usecase/currentuser/k;->a:Lcom/im/freechat/domain/k;

    iput-object v0, v2, Lcom/im/freechat/domain/usecase/currentuser/k$a;->a:Ljava/lang/Object;

    move/from16 v4, p1

    iput-boolean v4, v2, Lcom/im/freechat/domain/usecase/currentuser/k$a;->c:Z

    iput v9, v2, Lcom/im/freechat/domain/usecase/currentuser/k$a;->f:I

    invoke-interface {v1, v2}, Lcom/im/freechat/domain/k;->v(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_6

    return-object v3

    :cond_6
    move-object v9, v0

    .line 5
    :goto_1
    move-object v10, v1

    check-cast v10, Lcom/im/freechat/shared/entities/auth/UserInfo;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    if-eqz v4, :cond_7

    const-wide v19, 0x7fffffffffffffffL

    goto :goto_2

    :cond_7
    const-wide/16 v19, 0x1

    :goto_2
    const/16 v21, 0x0

    const/16 v22, 0x2ff

    const/16 v23, 0x0

    .line 6
    invoke-static/range {v10 .. v23}, Lcom/im/freechat/shared/entities/auth/UserInfo;->copy$default(Lcom/im/freechat/shared/entities/auth/UserInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;ZJLjava/lang/String;ILjava/lang/Object;)Lcom/im/freechat/shared/entities/auth/UserInfo;

    move-result-object v1

    if-eqz v4, :cond_9

    .line 7
    iget-object v4, v9, Lcom/im/freechat/domain/usecase/currentuser/k;->c:Lcom/im/freechat/domain/t;

    iput-object v9, v2, Lcom/im/freechat/domain/usecase/currentuser/k$a;->a:Ljava/lang/Object;

    iput-object v1, v2, Lcom/im/freechat/domain/usecase/currentuser/k$a;->b:Ljava/lang/Object;

    iput v8, v2, Lcom/im/freechat/domain/usecase/currentuser/k$a;->f:I

    invoke-interface {v4, v2}, Lcom/im/freechat/domain/t;->H(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_8

    return-object v3

    :cond_8
    move-object v4, v1

    move-object v7, v9

    goto :goto_3

    .line 8
    :cond_9
    iget-object v4, v9, Lcom/im/freechat/domain/usecase/currentuser/k;->c:Lcom/im/freechat/domain/t;

    iput-object v9, v2, Lcom/im/freechat/domain/usecase/currentuser/k$a;->a:Ljava/lang/Object;

    iput-object v1, v2, Lcom/im/freechat/domain/usecase/currentuser/k$a;->b:Ljava/lang/Object;

    iput v7, v2, Lcom/im/freechat/domain/usecase/currentuser/k$a;->f:I

    invoke-interface {v4, v2}, Lcom/im/freechat/domain/t;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_8

    return-object v3

    .line 9
    :goto_3
    iget-object v1, v7, Lcom/im/freechat/domain/usecase/currentuser/k;->a:Lcom/im/freechat/domain/k;

    iput-object v7, v2, Lcom/im/freechat/domain/usecase/currentuser/k$a;->a:Ljava/lang/Object;

    iput-object v4, v2, Lcom/im/freechat/domain/usecase/currentuser/k$a;->b:Ljava/lang/Object;

    iput v6, v2, Lcom/im/freechat/domain/usecase/currentuser/k$a;->f:I

    invoke-interface {v1, v4, v2}, Lcom/im/freechat/domain/k;->p(Lcom/im/freechat/shared/entities/auth/UserInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_a

    return-object v3

    :cond_a
    move-object v6, v7

    .line 10
    :goto_4
    iget-object v1, v6, Lcom/im/freechat/domain/usecase/currentuser/k;->b:Lcom/im/freechat/domain/c;

    const/4 v6, 0x0

    iput-object v6, v2, Lcom/im/freechat/domain/usecase/currentuser/k$a;->a:Ljava/lang/Object;

    iput-object v6, v2, Lcom/im/freechat/domain/usecase/currentuser/k$a;->b:Ljava/lang/Object;

    iput v5, v2, Lcom/im/freechat/domain/usecase/currentuser/k$a;->f:I

    invoke-interface {v1, v4, v2}, Lcom/im/freechat/domain/c;->D(Lcom/im/freechat/shared/entities/auth/UserInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_b

    return-object v3

    .line 11
    :cond_b
    :goto_5
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

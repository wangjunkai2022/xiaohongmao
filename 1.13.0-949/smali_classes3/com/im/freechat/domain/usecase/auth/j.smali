.class public final Lcom/im/freechat/domain/usecase/auth/j;
.super Lcom/im/freechat/domain/usecase/base/a;
.source "SignInViaSmsInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/domain/usecase/auth/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/im/freechat/domain/usecase/base/a<",
        "Lcom/im/freechat/domain/usecase/auth/j$a;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0008B\u0017\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u0012\u0006\u0010\u0012\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001b\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0002H\u0094@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u000c\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u0017\u0010\u0012\u001a\u00020\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/im/freechat/domain/usecase/auth/j;",
        "Lcom/im/freechat/domain/usecase/base/a;",
        "Lcom/im/freechat/domain/usecase/auth/j$a;",
        "",
        "params",
        "e",
        "(Lcom/im/freechat/domain/usecase/auth/j$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/im/freechat/domain/k;",
        "a",
        "Lcom/im/freechat/domain/k;",
        "d",
        "()Lcom/im/freechat/domain/k;",
        "loginRepository",
        "Lcom/im/freechat/domain/c;",
        "b",
        "Lcom/im/freechat/domain/c;",
        "c",
        "()Lcom/im/freechat/domain/c;",
        "databaseRepository",
        "<init>",
        "(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/c;)V",
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


# direct methods
.method public constructor <init>(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/c;)V
    .locals 1
    .param p1    # Lcom/im/freechat/domain/k;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/domain/c;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "loginRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "databaseRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/domain/usecase/base/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/domain/usecase/auth/j;->a:Lcom/im/freechat/domain/k;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/domain/usecase/auth/j;->b:Lcom/im/freechat/domain/c;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/im/freechat/domain/usecase/auth/j$a;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/domain/usecase/auth/j;->e(Lcom/im/freechat/domain/usecase/auth/j$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c()Lcom/im/freechat/domain/c;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/domain/usecase/auth/j;->b:Lcom/im/freechat/domain/c;

    return-object v0
.end method

.method public final d()Lcom/im/freechat/domain/k;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/domain/usecase/auth/j;->a:Lcom/im/freechat/domain/k;

    return-object v0
.end method

.method protected e(Lcom/im/freechat/domain/usecase/auth/j$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .param p1    # Lcom/im/freechat/domain/usecase/auth/j$a;
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
            "Lcom/im/freechat/domain/usecase/auth/j$a;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p2, Lcom/im/freechat/domain/usecase/auth/j$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/domain/usecase/auth/j$b;

    iget v1, v0, Lcom/im/freechat/domain/usecase/auth/j$b;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/domain/usecase/auth/j$b;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/domain/usecase/auth/j$b;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/domain/usecase/auth/j$b;-><init>(Lcom/im/freechat/domain/usecase/auth/j;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/im/freechat/domain/usecase/auth/j$b;->f:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/domain/usecase/auth/j$b;->h:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p1, v0, Lcom/im/freechat/domain/usecase/auth/j$b;->e:Z

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-boolean p1, v0, Lcom/im/freechat/domain/usecase/auth/j$b;->e:Z

    iget-object v2, v0, Lcom/im/freechat/domain/usecase/auth/j$b;->b:Ljava/lang/Object;

    check-cast v2, Lcom/im/freechat/shared/entities/auth/UserInfo;

    iget-object v4, v0, Lcom/im/freechat/domain/usecase/auth/j$b;->a:Ljava/lang/Object;

    check-cast v4, Lcom/im/freechat/domain/usecase/auth/j;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget-object p1, v0, Lcom/im/freechat/domain/usecase/auth/j$b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/im/freechat/domain/usecase/auth/j;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget p1, v0, Lcom/im/freechat/domain/usecase/auth/j$b;->d:I

    iget-object v2, v0, Lcom/im/freechat/domain/usecase/auth/j$b;->c:Ljava/lang/Object;

    check-cast v2, Lcom/im/freechat/shared/entities/auth/PhoneNumber;

    iget-object v6, v0, Lcom/im/freechat/domain/usecase/auth/j$b;->b:Ljava/lang/Object;

    check-cast v6, Lcom/im/freechat/domain/k;

    iget-object v8, v0, Lcom/im/freechat/domain/usecase/auth/j$b;->a:Ljava/lang/Object;

    check-cast v8, Lcom/im/freechat/domain/usecase/auth/j;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/im/freechat/domain/usecase/auth/j;->a:Lcom/im/freechat/domain/k;

    .line 5
    invoke-virtual {p1}, Lcom/im/freechat/domain/usecase/auth/j$a;->b()Lcom/im/freechat/shared/entities/auth/PhoneNumber;

    move-result-object v2

    .line 6
    invoke-virtual {p1}, Lcom/im/freechat/domain/usecase/auth/j$a;->a()I

    move-result p1

    .line 7
    iget-object v8, p0, Lcom/im/freechat/domain/usecase/auth/j;->a:Lcom/im/freechat/domain/k;

    iput-object p0, v0, Lcom/im/freechat/domain/usecase/auth/j$b;->a:Ljava/lang/Object;

    iput-object p2, v0, Lcom/im/freechat/domain/usecase/auth/j$b;->b:Ljava/lang/Object;

    iput-object v2, v0, Lcom/im/freechat/domain/usecase/auth/j$b;->c:Ljava/lang/Object;

    iput p1, v0, Lcom/im/freechat/domain/usecase/auth/j$b;->d:I

    iput v6, v0, Lcom/im/freechat/domain/usecase/auth/j$b;->h:I

    invoke-interface {v8, v0}, Lcom/im/freechat/domain/k;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_6

    return-object v1

    :cond_6
    move-object v8, p0

    move-object v9, v6

    move-object v6, p2

    move-object p2, v9

    .line 8
    :goto_1
    check-cast p2, Ljava/lang/String;

    .line 9
    iput-object v8, v0, Lcom/im/freechat/domain/usecase/auth/j$b;->a:Ljava/lang/Object;

    iput-object v7, v0, Lcom/im/freechat/domain/usecase/auth/j$b;->b:Ljava/lang/Object;

    iput-object v7, v0, Lcom/im/freechat/domain/usecase/auth/j$b;->c:Ljava/lang/Object;

    iput v5, v0, Lcom/im/freechat/domain/usecase/auth/j$b;->h:I

    invoke-interface {v6, v2, p1, p2, v0}, Lcom/im/freechat/domain/k;->f(Lcom/im/freechat/shared/entities/auth/PhoneNumber;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    move-object p1, v8

    :goto_2
    check-cast p2, Lkotlin/Pair;

    invoke-virtual {p2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/im/freechat/shared/entities/auth/UserInfo;

    invoke-virtual {p2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 10
    iget-object v5, p1, Lcom/im/freechat/domain/usecase/auth/j;->a:Lcom/im/freechat/domain/k;

    iput-object p1, v0, Lcom/im/freechat/domain/usecase/auth/j$b;->a:Ljava/lang/Object;

    iput-object v2, v0, Lcom/im/freechat/domain/usecase/auth/j$b;->b:Ljava/lang/Object;

    iput-boolean p2, v0, Lcom/im/freechat/domain/usecase/auth/j$b;->e:Z

    iput v4, v0, Lcom/im/freechat/domain/usecase/auth/j$b;->h:I

    invoke-interface {v5, v2, v0}, Lcom/im/freechat/domain/k;->p(Lcom/im/freechat/shared/entities/auth/UserInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_8

    return-object v1

    :cond_8
    move-object v4, p1

    move p1, p2

    .line 11
    :goto_3
    iget-object p2, v4, Lcom/im/freechat/domain/usecase/auth/j;->b:Lcom/im/freechat/domain/c;

    iput-object v7, v0, Lcom/im/freechat/domain/usecase/auth/j$b;->a:Ljava/lang/Object;

    iput-object v7, v0, Lcom/im/freechat/domain/usecase/auth/j$b;->b:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/im/freechat/domain/usecase/auth/j$b;->e:Z

    iput v3, v0, Lcom/im/freechat/domain/usecase/auth/j$b;->h:I

    invoke-interface {p2, v2, v0}, Lcom/im/freechat/domain/c;->D(Lcom/im/freechat/shared/entities/auth/UserInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_9

    return-object v1

    .line 12
    :cond_9
    :goto_4
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.class public final Lcom/im/freechat/domain/usecase/chat/b;
.super Lcom/im/freechat/domain/usecase/base/a;
.source "CreateGroupChatInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/domain/usecase/chat/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/im/freechat/domain/usecase/base/a<",
        "Lcom/im/freechat/domain/usecase/chat/b$a;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
    message = "Not yet implemented on backend"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0008B\u001f\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0011\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001b\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0002H\u0094@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0011\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0010\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/im/freechat/domain/usecase/chat/b;",
        "Lcom/im/freechat/domain/usecase/base/a;",
        "Lcom/im/freechat/domain/usecase/chat/b$a;",
        "",
        "params",
        "c",
        "(Lcom/im/freechat/domain/usecase/chat/b$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/im/freechat/domain/k;",
        "a",
        "Lcom/im/freechat/domain/k;",
        "loginRepository",
        "Lcom/im/freechat/domain/t;",
        "b",
        "Lcom/im/freechat/domain/t;",
        "syncRepository",
        "Lcom/im/freechat/domain/g;",
        "Lcom/im/freechat/domain/g;",
        "fileRepository",
        "<init>",
        "(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/t;Lcom/im/freechat/domain/g;)V",
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

.field private final b:Lcom/im/freechat/domain/t;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lcom/im/freechat/domain/g;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/t;Lcom/im/freechat/domain/g;)V
    .locals 1
    .param p1    # Lcom/im/freechat/domain/k;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/domain/t;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/im/freechat/domain/g;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "loginRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "syncRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/domain/usecase/base/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/domain/usecase/chat/b;->a:Lcom/im/freechat/domain/k;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/domain/usecase/chat/b;->b:Lcom/im/freechat/domain/t;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/domain/usecase/chat/b;->c:Lcom/im/freechat/domain/g;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/im/freechat/domain/usecase/chat/b$a;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/domain/usecase/chat/b;->c(Lcom/im/freechat/domain/usecase/chat/b$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected c(Lcom/im/freechat/domain/usecase/chat/b$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .param p1    # Lcom/im/freechat/domain/usecase/chat/b$a;
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
            "Lcom/im/freechat/domain/usecase/chat/b$a;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p2, Lcom/im/freechat/domain/usecase/chat/b$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/domain/usecase/chat/b$b;

    iget v1, v0, Lcom/im/freechat/domain/usecase/chat/b$b;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/domain/usecase/chat/b$b;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/domain/usecase/chat/b$b;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/domain/usecase/chat/b$b;-><init>(Lcom/im/freechat/domain/usecase/chat/b;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/im/freechat/domain/usecase/chat/b$b;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/domain/usecase/chat/b$b;->g:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Lcom/im/freechat/domain/usecase/chat/b$b;->d:I

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Lcom/im/freechat/domain/usecase/chat/b$b;->c:Ljava/lang/Object;

    check-cast p1, Lcom/im/freechat/shared/entities/auth/UserInfo;

    iget-object v2, v0, Lcom/im/freechat/domain/usecase/chat/b$b;->b:Ljava/lang/Object;

    check-cast v2, Lcom/im/freechat/domain/usecase/chat/b$a;

    iget-object v4, v0, Lcom/im/freechat/domain/usecase/chat/b$b;->a:Ljava/lang/Object;

    check-cast v4, Lcom/im/freechat/domain/usecase/chat/b;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p1, v0, Lcom/im/freechat/domain/usecase/chat/b$b;->b:Ljava/lang/Object;

    check-cast p1, Lcom/im/freechat/domain/usecase/chat/b$a;

    iget-object v2, v0, Lcom/im/freechat/domain/usecase/chat/b$b;->a:Ljava/lang/Object;

    check-cast v2, Lcom/im/freechat/domain/usecase/chat/b;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/im/freechat/domain/usecase/chat/b;->a:Lcom/im/freechat/domain/k;

    iput-object p0, v0, Lcom/im/freechat/domain/usecase/chat/b$b;->a:Ljava/lang/Object;

    iput-object p1, v0, Lcom/im/freechat/domain/usecase/chat/b$b;->b:Ljava/lang/Object;

    iput v5, v0, Lcom/im/freechat/domain/usecase/chat/b$b;->g:I

    invoke-interface {p2, v0}, Lcom/im/freechat/domain/k;->v(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    .line 5
    :goto_1
    check-cast p2, Lcom/im/freechat/shared/entities/auth/UserInfo;

    .line 6
    invoke-virtual {p1}, Lcom/im/freechat/domain/usecase/chat/b$a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 7
    iget-object v5, v2, Lcom/im/freechat/domain/usecase/chat/b;->b:Lcom/im/freechat/domain/t;

    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/auth/UserInfo;->getUserId()I

    move-result v6

    invoke-virtual {p1}, Lcom/im/freechat/domain/usecase/chat/b$a;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/im/freechat/domain/usecase/chat/b$a;->c()Ljava/util/List;

    move-result-object v8

    iput-object v2, v0, Lcom/im/freechat/domain/usecase/chat/b$b;->a:Ljava/lang/Object;

    iput-object p1, v0, Lcom/im/freechat/domain/usecase/chat/b$b;->b:Ljava/lang/Object;

    iput-object p2, v0, Lcom/im/freechat/domain/usecase/chat/b$b;->c:Ljava/lang/Object;

    iput v4, v0, Lcom/im/freechat/domain/usecase/chat/b$b;->g:I

    invoke-interface {v5, v6, v7, v8, v0}, Lcom/im/freechat/domain/t;->y(ILjava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_6

    return-object v1

    :cond_6
    move-object v9, v2

    move-object v2, p1

    move-object p1, p2

    move-object p2, v4

    move-object v4, v9

    :goto_2
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 8
    invoke-virtual {v2}, Lcom/im/freechat/domain/usecase/chat/b$a;->a()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 9
    iget-object v5, v4, Lcom/im/freechat/domain/usecase/chat/b;->c:Lcom/im/freechat/domain/g;

    invoke-virtual {v2}, Lcom/im/freechat/domain/usecase/chat/b$a;->a()Ljava/lang/String;

    move-result-object v2

    const-string v6, "avatar"

    invoke-interface {v5, v6, v2}, Lcom/im/freechat/domain/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 10
    iget-object v4, v4, Lcom/im/freechat/domain/usecase/chat/b;->b:Lcom/im/freechat/domain/t;

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/auth/UserInfo;->getUserId()I

    move-result p1

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/im/freechat/domain/usecase/chat/b$b;->a:Ljava/lang/Object;

    iput-object v5, v0, Lcom/im/freechat/domain/usecase/chat/b$b;->b:Ljava/lang/Object;

    iput-object v5, v0, Lcom/im/freechat/domain/usecase/chat/b$b;->c:Ljava/lang/Object;

    iput p2, v0, Lcom/im/freechat/domain/usecase/chat/b$b;->d:I

    iput v3, v0, Lcom/im/freechat/domain/usecase/chat/b$b;->g:I

    invoke-interface {v4, p1, p2, v2, v0}, Lcom/im/freechat/domain/t;->U(IILjava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    move p1, p2

    :goto_3
    move p2, p1

    .line 11
    :cond_8
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 12
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Chat Name should not be empty for group chat"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

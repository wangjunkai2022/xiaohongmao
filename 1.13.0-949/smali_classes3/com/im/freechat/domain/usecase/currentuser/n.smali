.class public final Lcom/im/freechat/domain/usecase/currentuser/n;
.super Lcom/im/freechat/domain/usecase/base/a;
.source "UpdateAvatarInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/im/freechat/domain/usecase/base/a<",
        "Lcom/im/freechat/shared/entities/FileInfo;",
        "Lcom/im/freechat/shared/entities/auth/UserInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\'\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0011\u001a\u00020\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001b\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0002H\u0094@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0011\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/im/freechat/domain/usecase/currentuser/n;",
        "Lcom/im/freechat/domain/usecase/base/a;",
        "Lcom/im/freechat/shared/entities/FileInfo;",
        "Lcom/im/freechat/shared/entities/auth/UserInfo;",
        "params",
        "c",
        "(Lcom/im/freechat/shared/entities/FileInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/im/freechat/domain/g;",
        "a",
        "Lcom/im/freechat/domain/g;",
        "fileRepository",
        "Lcom/im/freechat/domain/c;",
        "b",
        "Lcom/im/freechat/domain/c;",
        "databaseRepository",
        "Lcom/im/freechat/domain/t;",
        "Lcom/im/freechat/domain/t;",
        "syncRepository",
        "Lcom/im/freechat/domain/k;",
        "d",
        "Lcom/im/freechat/domain/k;",
        "loginRepository",
        "<init>",
        "(Lcom/im/freechat/domain/g;Lcom/im/freechat/domain/c;Lcom/im/freechat/domain/t;Lcom/im/freechat/domain/k;)V",
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
.field private final a:Lcom/im/freechat/domain/g;
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

.field private final d:Lcom/im/freechat/domain/k;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/im/freechat/domain/g;Lcom/im/freechat/domain/c;Lcom/im/freechat/domain/t;Lcom/im/freechat/domain/k;)V
    .locals 1
    .param p1    # Lcom/im/freechat/domain/g;
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
    .param p4    # Lcom/im/freechat/domain/k;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "fileRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "databaseRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "syncRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loginRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/domain/usecase/base/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/domain/usecase/currentuser/n;->a:Lcom/im/freechat/domain/g;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/domain/usecase/currentuser/n;->b:Lcom/im/freechat/domain/c;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/domain/usecase/currentuser/n;->c:Lcom/im/freechat/domain/t;

    .line 5
    iput-object p4, p0, Lcom/im/freechat/domain/usecase/currentuser/n;->d:Lcom/im/freechat/domain/k;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/im/freechat/shared/entities/FileInfo;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/domain/usecase/currentuser/n;->c(Lcom/im/freechat/shared/entities/FileInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected c(Lcom/im/freechat/shared/entities/FileInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 27
    .param p1    # Lcom/im/freechat/shared/entities/FileInfo;
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
            "Lcom/im/freechat/shared/entities/FileInfo;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/shared/entities/auth/UserInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/im/freechat/domain/usecase/currentuser/n$a;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/im/freechat/domain/usecase/currentuser/n$a;

    iget v3, v2, Lcom/im/freechat/domain/usecase/currentuser/n$a;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/im/freechat/domain/usecase/currentuser/n$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/im/freechat/domain/usecase/currentuser/n$a;

    invoke-direct {v2, v0, v1}, Lcom/im/freechat/domain/usecase/currentuser/n$a;-><init>(Lcom/im/freechat/domain/usecase/currentuser/n;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/im/freechat/domain/usecase/currentuser/n$a;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v10

    .line 1
    iget v3, v2, Lcom/im/freechat/domain/usecase/currentuser/n$a;->e:I

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_5

    if-eq v3, v5, :cond_4

    if-eq v3, v4, :cond_3

    if-eq v3, v12, :cond_2

    if-ne v3, v11, :cond_1

    iget-object v2, v2, Lcom/im/freechat/domain/usecase/currentuser/n$a;->a:Ljava/lang/Object;

    check-cast v2, Lcom/im/freechat/shared/entities/auth/UserInfo;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v3, v2, Lcom/im/freechat/domain/usecase/currentuser/n$a;->b:Ljava/lang/Object;

    check-cast v3, Lcom/im/freechat/shared/entities/auth/UserInfo;

    iget-object v4, v2, Lcom/im/freechat/domain/usecase/currentuser/n$a;->a:Ljava/lang/Object;

    check-cast v4, Lcom/im/freechat/domain/usecase/currentuser/n;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v3

    goto/16 :goto_3

    :cond_3
    iget-object v3, v2, Lcom/im/freechat/domain/usecase/currentuser/n$a;->b:Ljava/lang/Object;

    check-cast v3, Lcom/im/freechat/shared/entities/auth/UserInfo;

    iget-object v4, v2, Lcom/im/freechat/domain/usecase/currentuser/n$a;->a:Ljava/lang/Object;

    check-cast v4, Lcom/im/freechat/domain/usecase/currentuser/n;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v13, v3

    goto :goto_2

    :cond_4
    iget-object v3, v2, Lcom/im/freechat/domain/usecase/currentuser/n$a;->b:Ljava/lang/Object;

    check-cast v3, Lcom/im/freechat/shared/entities/FileInfo;

    iget-object v5, v2, Lcom/im/freechat/domain/usecase/currentuser/n$a;->a:Ljava/lang/Object;

    check-cast v5, Lcom/im/freechat/domain/usecase/currentuser/n;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v13, v5

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Lcom/im/freechat/domain/usecase/currentuser/n;->d:Lcom/im/freechat/domain/k;

    iput-object v0, v2, Lcom/im/freechat/domain/usecase/currentuser/n$a;->a:Ljava/lang/Object;

    move-object/from16 v3, p1

    iput-object v3, v2, Lcom/im/freechat/domain/usecase/currentuser/n$a;->b:Ljava/lang/Object;

    iput v5, v2, Lcom/im/freechat/domain/usecase/currentuser/n$a;->e:I

    invoke-interface {v1, v2}, Lcom/im/freechat/domain/k;->v(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v10, :cond_6

    return-object v10

    :cond_6
    move-object v13, v0

    .line 5
    :goto_1
    check-cast v1, Lcom/im/freechat/shared/entities/auth/UserInfo;

    .line 6
    iget-object v5, v13, Lcom/im/freechat/domain/usecase/currentuser/n;->a:Lcom/im/freechat/domain/g;

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/auth/UserInfo;->getToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/im/freechat/shared/entities/FileInfo;->getUri()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/im/freechat/shared/entities/FileInfo;->getMimeType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/im/freechat/shared/entities/FileInfo;->getSize()J

    move-result-wide v14

    iput-object v13, v2, Lcom/im/freechat/domain/usecase/currentuser/n$a;->a:Ljava/lang/Object;

    iput-object v1, v2, Lcom/im/freechat/domain/usecase/currentuser/n$a;->b:Ljava/lang/Object;

    iput v4, v2, Lcom/im/freechat/domain/usecase/currentuser/n$a;->e:I

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-wide v7, v14

    move-object v9, v2

    invoke-interface/range {v3 .. v9}, Lcom/im/freechat/domain/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v10, :cond_7

    return-object v10

    :cond_7
    move-object v4, v13

    move-object v13, v1

    move-object v1, v3

    :goto_2
    move-object/from16 v18, v1

    check-cast v18, Ljava/lang/String;

    if-eqz v18, :cond_a

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x3ef

    const/16 v26, 0x0

    .line 7
    invoke-static/range {v13 .. v26}, Lcom/im/freechat/shared/entities/auth/UserInfo;->copy$default(Lcom/im/freechat/shared/entities/auth/UserInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;ZJLjava/lang/String;ILjava/lang/Object;)Lcom/im/freechat/shared/entities/auth/UserInfo;

    move-result-object v1

    .line 8
    iget-object v3, v4, Lcom/im/freechat/domain/usecase/currentuser/n;->d:Lcom/im/freechat/domain/k;

    iput-object v4, v2, Lcom/im/freechat/domain/usecase/currentuser/n$a;->a:Ljava/lang/Object;

    iput-object v1, v2, Lcom/im/freechat/domain/usecase/currentuser/n$a;->b:Ljava/lang/Object;

    iput v12, v2, Lcom/im/freechat/domain/usecase/currentuser/n$a;->e:I

    invoke-interface {v3, v1, v2}, Lcom/im/freechat/domain/k;->p(Lcom/im/freechat/shared/entities/auth/UserInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v10, :cond_8

    return-object v10

    .line 9
    :cond_8
    :goto_3
    iget-object v3, v4, Lcom/im/freechat/domain/usecase/currentuser/n;->b:Lcom/im/freechat/domain/c;

    iput-object v1, v2, Lcom/im/freechat/domain/usecase/currentuser/n$a;->a:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/im/freechat/domain/usecase/currentuser/n$a;->b:Ljava/lang/Object;

    iput v11, v2, Lcom/im/freechat/domain/usecase/currentuser/n$a;->e:I

    invoke-interface {v3, v1, v2}, Lcom/im/freechat/domain/c;->D(Lcom/im/freechat/shared/entities/auth/UserInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v10, :cond_9

    return-object v10

    :cond_9
    move-object v2, v1

    :goto_4
    return-object v2

    :cond_a
    return-object v13
.end method

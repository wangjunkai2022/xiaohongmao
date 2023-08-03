.class public final Lcom/im/freechat/domain/usecase/auth/b;
.super Lcom/im/freechat/domain/usecase/base/a;
.source "ExternalLoginInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/domain/usecase/auth/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/im/freechat/domain/usecase/base/a<",
        "Lcom/im/freechat/domain/usecase/auth/b$a;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0008B\u001f\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0011\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001b\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0002H\u0094@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0011\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0010\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/im/freechat/domain/usecase/auth/b;",
        "Lcom/im/freechat/domain/usecase/base/a;",
        "Lcom/im/freechat/domain/usecase/auth/b$a;",
        "",
        "params",
        "c",
        "(Lcom/im/freechat/domain/usecase/auth/b$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/im/freechat/domain/k;",
        "a",
        "Lcom/im/freechat/domain/k;",
        "loginRepository",
        "Lcom/im/freechat/domain/t;",
        "b",
        "Lcom/im/freechat/domain/t;",
        "syncRepository",
        "Lcom/im/freechat/domain/c;",
        "Lcom/im/freechat/domain/c;",
        "databaseRepository",
        "<init>",
        "(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/t;Lcom/im/freechat/domain/c;)V",
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

.field private final c:Lcom/im/freechat/domain/c;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/t;Lcom/im/freechat/domain/c;)V
    .locals 1
    .param p1    # Lcom/im/freechat/domain/k;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/domain/t;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/im/freechat/domain/c;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "loginRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "syncRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "databaseRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/domain/usecase/base/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/domain/usecase/auth/b;->a:Lcom/im/freechat/domain/k;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/domain/usecase/auth/b;->b:Lcom/im/freechat/domain/t;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/domain/usecase/auth/b;->c:Lcom/im/freechat/domain/c;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/im/freechat/domain/usecase/auth/b$a;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/domain/usecase/auth/b;->c(Lcom/im/freechat/domain/usecase/auth/b$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected c(Lcom/im/freechat/domain/usecase/auth/b$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19
    .param p1    # Lcom/im/freechat/domain/usecase/auth/b$a;
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
            "Lcom/im/freechat/domain/usecase/auth/b$a;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/im/freechat/domain/usecase/auth/b$b;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/im/freechat/domain/usecase/auth/b$b;

    iget v3, v2, Lcom/im/freechat/domain/usecase/auth/b$b;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/im/freechat/domain/usecase/auth/b$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/im/freechat/domain/usecase/auth/b$b;

    invoke-direct {v2, v0, v1}, Lcom/im/freechat/domain/usecase/auth/b$b;-><init>(Lcom/im/freechat/domain/usecase/auth/b;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/im/freechat/domain/usecase/auth/b$b;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v14

    .line 1
    iget v3, v2, Lcom/im/freechat/domain/usecase/auth/b$b;->e:I

    const/4 v15, 0x0

    const/4 v13, 0x1

    packed-switch v3, :pswitch_data_0

    .line 2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :pswitch_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/16 v16, 0x1

    goto/16 :goto_7

    :pswitch_1
    iget-object v3, v2, Lcom/im/freechat/domain/usecase/auth/b$b;->a:Ljava/lang/Object;

    check-cast v3, Lcom/im/freechat/domain/usecase/auth/b;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/16 v16, 0x1

    goto/16 :goto_6

    :pswitch_2
    iget-object v3, v2, Lcom/im/freechat/domain/usecase/auth/b$b;->a:Ljava/lang/Object;

    check-cast v3, Lcom/im/freechat/domain/usecase/auth/b;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/16 v16, 0x1

    goto/16 :goto_5

    :pswitch_3
    iget-object v3, v2, Lcom/im/freechat/domain/usecase/auth/b$b;->a:Ljava/lang/Object;

    check-cast v3, Lcom/im/freechat/domain/usecase/auth/b;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/16 v16, 0x1

    goto/16 :goto_4

    :pswitch_4
    iget-object v3, v2, Lcom/im/freechat/domain/usecase/auth/b$b;->b:Ljava/lang/Object;

    check-cast v3, Lcom/im/freechat/domain/usecase/auth/b$a;

    iget-object v4, v2, Lcom/im/freechat/domain/usecase/auth/b$b;->a:Ljava/lang/Object;

    check-cast v4, Lcom/im/freechat/domain/usecase/auth/b;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v4

    goto :goto_2

    :pswitch_5
    iget-object v3, v2, Lcom/im/freechat/domain/usecase/auth/b$b;->b:Ljava/lang/Object;

    check-cast v3, Lcom/im/freechat/domain/usecase/auth/b$a;

    iget-object v4, v2, Lcom/im/freechat/domain/usecase/auth/b$b;->a:Ljava/lang/Object;

    check-cast v4, Lcom/im/freechat/domain/usecase/auth/b;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v3

    goto :goto_1

    :pswitch_6
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Lcom/im/freechat/domain/usecase/auth/b;->a:Lcom/im/freechat/domain/k;

    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/domain/usecase/auth/b$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/im/freechat/domain/k;->g(Ljava/lang/String;)V

    const-wide/16 v3, 0x32

    .line 5
    iput-object v0, v2, Lcom/im/freechat/domain/usecase/auth/b$b;->a:Ljava/lang/Object;

    move-object/from16 v1, p1

    iput-object v1, v2, Lcom/im/freechat/domain/usecase/auth/b$b;->b:Ljava/lang/Object;

    iput v13, v2, Lcom/im/freechat/domain/usecase/auth/b$b;->e:I

    invoke-static {v3, v4, v2}, Lkotlinx/coroutines/b1;->b(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v14, :cond_1

    return-object v14

    :cond_1
    move-object v4, v0

    .line 6
    :goto_1
    iget-object v3, v4, Lcom/im/freechat/domain/usecase/auth/b;->b:Lcom/im/freechat/domain/t;

    invoke-virtual {v1}, Lcom/im/freechat/domain/usecase/auth/b$a;->c()I

    move-result v5

    iput-object v4, v2, Lcom/im/freechat/domain/usecase/auth/b$b;->a:Ljava/lang/Object;

    iput-object v1, v2, Lcom/im/freechat/domain/usecase/auth/b$b;->b:Ljava/lang/Object;

    const/4 v6, 0x2

    iput v6, v2, Lcom/im/freechat/domain/usecase/auth/b$b;->e:I

    invoke-interface {v3, v5, v2}, Lcom/im/freechat/domain/t;->getUser(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v14, :cond_2

    return-object v14

    :cond_2
    move-object v11, v4

    move-object/from16 v18, v3

    move-object v3, v1

    move-object/from16 v1, v18

    .line 7
    :goto_2
    check-cast v1, Lcom/im/freechat/shared/entities/contact/UserModel;

    .line 8
    iget-object v4, v11, Lcom/im/freechat/domain/usecase/auth/b;->a:Lcom/im/freechat/domain/k;

    .line 9
    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getNickname()Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getAvatar()Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getUserId()I

    move-result v7

    .line 12
    invoke-virtual {v3}, Lcom/im/freechat/domain/usecase/auth/b$a;->b()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getManagementRole()Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    .line 13
    :goto_3
    invoke-virtual {v3}, Lcom/im/freechat/domain/usecase/auth/b$a;->d()Z

    move-result v9

    .line 14
    invoke-virtual {v3}, Lcom/im/freechat/domain/usecase/auth/b$a;->a()Ljava/lang/String;

    move-result-object v10

    .line 15
    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getLastOnline()J

    move-result-wide v16

    .line 16
    iput-object v11, v2, Lcom/im/freechat/domain/usecase/auth/b$b;->a:Ljava/lang/Object;

    iput-object v15, v2, Lcom/im/freechat/domain/usecase/auth/b$b;->b:Ljava/lang/Object;

    const/4 v1, 0x3

    iput v1, v2, Lcom/im/freechat/domain/usecase/auth/b$b;->e:I

    const-string v1, "123456"

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move-object v9, v1

    move-object v1, v11

    move-wide/from16 v11, v16

    const/16 v16, 0x1

    move-object v13, v2

    invoke-interface/range {v3 .. v13}, Lcom/im/freechat/domain/k;->j(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v14, :cond_4

    return-object v14

    :cond_4
    move-object v3, v1

    .line 17
    :goto_4
    iget-object v1, v3, Lcom/im/freechat/domain/usecase/auth/b;->a:Lcom/im/freechat/domain/k;

    iput-object v3, v2, Lcom/im/freechat/domain/usecase/auth/b$b;->a:Ljava/lang/Object;

    const/4 v4, 0x4

    iput v4, v2, Lcom/im/freechat/domain/usecase/auth/b$b;->e:I

    invoke-interface {v1, v2}, Lcom/im/freechat/domain/k;->v(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v14, :cond_5

    return-object v14

    .line 18
    :cond_5
    :goto_5
    check-cast v1, Lcom/im/freechat/shared/entities/auth/UserInfo;

    .line 19
    iget-object v4, v3, Lcom/im/freechat/domain/usecase/auth/b;->c:Lcom/im/freechat/domain/c;

    iput-object v3, v2, Lcom/im/freechat/domain/usecase/auth/b$b;->a:Ljava/lang/Object;

    const/4 v5, 0x5

    iput v5, v2, Lcom/im/freechat/domain/usecase/auth/b$b;->e:I

    invoke-interface {v4, v1, v2}, Lcom/im/freechat/domain/c;->D(Lcom/im/freechat/shared/entities/auth/UserInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v14, :cond_6

    return-object v14

    .line 20
    :cond_6
    :goto_6
    iget-object v1, v3, Lcom/im/freechat/domain/usecase/auth/b;->a:Lcom/im/freechat/domain/k;

    iput-object v15, v2, Lcom/im/freechat/domain/usecase/auth/b$b;->a:Ljava/lang/Object;

    const/4 v3, 0x6

    iput v3, v2, Lcom/im/freechat/domain/usecase/auth/b$b;->e:I

    invoke-interface {v1, v2}, Lcom/im/freechat/domain/k;->h(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v14, :cond_7

    return-object v14

    :cond_7
    :goto_7
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

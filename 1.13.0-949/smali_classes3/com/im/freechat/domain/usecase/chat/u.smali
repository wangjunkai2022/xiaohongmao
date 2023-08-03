.class public final Lcom/im/freechat/domain/usecase/chat/u;
.super Lcom/im/freechat/domain/usecase/base/a;
.source "SyncChatsInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/im/freechat/domain/usecase/base/a<",
        "Lkotlin/Unit;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001b\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0094@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/im/freechat/domain/usecase/chat/u;",
        "Lcom/im/freechat/domain/usecase/base/a;",
        "",
        "params",
        "d",
        "(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/im/freechat/domain/k;",
        "a",
        "Lcom/im/freechat/domain/k;",
        "loginRepository",
        "Lcom/im/freechat/domain/t;",
        "b",
        "Lcom/im/freechat/domain/t;",
        "syncRepository",
        "Lcom/im/freechat/domain/c;",
        "c",
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
    iput-object p1, p0, Lcom/im/freechat/domain/usecase/chat/u;->a:Lcom/im/freechat/domain/k;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/domain/usecase/chat/u;->b:Lcom/im/freechat/domain/t;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/domain/usecase/chat/u;->c:Lcom/im/freechat/domain/c;

    return-void
.end method

.method public static final synthetic c(Lcom/im/freechat/domain/usecase/chat/u;)Lcom/im/freechat/domain/t;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/domain/usecase/chat/u;->b:Lcom/im/freechat/domain/t;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/domain/usecase/chat/u;->d(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected d(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .param p1    # Lkotlin/Unit;
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
            "Lkotlin/Unit;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of p1, p2, Lcom/im/freechat/domain/usecase/chat/u$a;

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Lcom/im/freechat/domain/usecase/chat/u$a;

    iget v0, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->g:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_0

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->g:I

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/im/freechat/domain/usecase/chat/u$a;

    invoke-direct {p1, p0, p2}, Lcom/im/freechat/domain/usecase/chat/u$a;-><init>(Lcom/im/freechat/domain/usecase/chat/u;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->g:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_0
    iget-object p1, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->a:Ljava/lang/Object;

    check-cast p1, Lcom/im/freechat/domain/usecase/chat/u;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_8

    :catchall_0
    move-exception p2

    goto/16 :goto_a

    :catch_0
    move-exception p2

    goto/16 :goto_9

    :pswitch_1
    iget-object v1, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iget-object v4, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->b:Ljava/lang/Object;

    check-cast v4, Lcom/im/freechat/shared/entities/auth/UserInfo;

    iget-object v5, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->a:Ljava/lang/Object;

    check-cast v5, Lcom/im/freechat/domain/usecase/chat/u;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v10, v5

    move-object v5, v1

    move-object v1, v10

    goto/16 :goto_7

    :pswitch_2
    iget-object v1, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iget-object v4, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->b:Ljava/lang/Object;

    check-cast v4, Lcom/im/freechat/shared/entities/auth/UserInfo;

    iget-object v5, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->a:Ljava/lang/Object;

    check-cast v5, Lcom/im/freechat/domain/usecase/chat/u;

    :try_start_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v10, v5

    move-object v5, v1

    move-object v1, v10

    goto/16 :goto_6

    :pswitch_3
    iget-object v1, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->d:Ljava/lang/Object;

    check-cast v1, Lcom/im/freechat/domain/t;

    iget-object v4, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    iget-object v5, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->b:Ljava/lang/Object;

    check-cast v5, Lcom/im/freechat/shared/entities/auth/UserInfo;

    iget-object v6, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->a:Ljava/lang/Object;

    check-cast v6, Lcom/im/freechat/domain/usecase/chat/u;

    :try_start_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v10, v4

    move-object v4, v1

    move-object v1, v6

    :goto_1
    move-object v6, v5

    move-object v5, v10

    goto/16 :goto_5

    :catchall_1
    move-exception p2

    move-object p1, v6

    goto/16 :goto_a

    :catch_1
    move-exception p2

    move-object p1, v6

    goto/16 :goto_9

    :pswitch_4
    iget-object v1, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iget-object v4, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->b:Ljava/lang/Object;

    check-cast v4, Lcom/im/freechat/shared/entities/auth/UserInfo;

    iget-object v5, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->a:Ljava/lang/Object;

    check-cast v5, Lcom/im/freechat/domain/usecase/chat/u;

    :try_start_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v10, v4

    move-object v4, v1

    move-object v1, v5

    move-object v5, v10

    goto/16 :goto_4

    :catchall_2
    move-exception p2

    move-object p1, v5

    goto/16 :goto_a

    :catch_2
    move-exception p2

    move-object p1, v5

    goto/16 :goto_9

    :pswitch_5
    iget-object v1, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->b:Ljava/lang/Object;

    check-cast v1, Lcom/im/freechat/shared/entities/auth/UserInfo;

    iget-object v4, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->a:Ljava/lang/Object;

    check-cast v4, Lcom/im/freechat/domain/usecase/chat/u;

    :try_start_5
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object v10, v4

    move-object v4, v1

    move-object v1, v10

    goto :goto_3

    :catchall_3
    move-exception p2

    move-object p1, v4

    goto/16 :goto_a

    :catch_3
    move-exception p2

    move-object p1, v4

    goto/16 :goto_9

    :pswitch_6
    iget-object v1, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->a:Ljava/lang/Object;

    check-cast v1, Lcom/im/freechat/domain/usecase/chat/u;

    :try_start_6
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception p2

    move-object p1, v1

    goto/16 :goto_a

    :catch_4
    move-exception p2

    move-object p1, v1

    goto/16 :goto_9

    :pswitch_7
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/im/freechat/domain/usecase/chat/u;->b:Lcom/im/freechat/domain/t;

    invoke-interface {p2}, Lcom/im/freechat/domain/t;->w()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 5
    :cond_1
    :try_start_7
    iget-object p2, p0, Lcom/im/freechat/domain/usecase/chat/u;->b:Lcom/im/freechat/domain/t;

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Lcom/im/freechat/domain/t;->u(Z)V

    .line 6
    iget-object p2, p0, Lcom/im/freechat/domain/usecase/chat/u;->a:Lcom/im/freechat/domain/k;

    iput-object p0, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->a:Ljava/lang/Object;

    iput v1, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->g:I

    invoke-interface {p2, p1}, Lcom/im/freechat/domain/k;->v(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-ne p2, v0, :cond_2

    return-object v0

    :cond_2
    move-object v1, p0

    .line 7
    :goto_2
    :try_start_8
    check-cast p2, Lcom/im/freechat/shared/entities/auth/UserInfo;

    .line 8
    iget-object v4, v1, Lcom/im/freechat/domain/usecase/chat/u;->b:Lcom/im/freechat/domain/t;

    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/auth/UserInfo;->getUserId()I

    move-result v5

    iput-object v1, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->a:Ljava/lang/Object;

    iput-object p2, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->b:Ljava/lang/Object;

    const/4 v6, 0x2

    iput v6, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->g:I

    invoke-interface {v4, v5, p1}, Lcom/im/freechat/domain/t;->F(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_3

    return-object v0

    :cond_3
    move-object v10, v4

    move-object v4, p2

    move-object p2, v10

    .line 9
    :goto_3
    check-cast p2, Ljava/util/Map;

    .line 10
    iget-object v5, v1, Lcom/im/freechat/domain/usecase/chat/u;->c:Lcom/im/freechat/domain/c;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v6

    iput-object v1, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->a:Ljava/lang/Object;

    iput-object v4, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->b:Ljava/lang/Object;

    iput-object p2, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->c:Ljava/lang/Object;

    const/4 v7, 0x3

    iput v7, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->g:I

    invoke-interface {v5, v6, p1}, Lcom/im/freechat/domain/c;->E(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_4

    return-object v0

    :cond_4
    move-object v5, v4

    move-object v4, p2

    .line 11
    :goto_4
    iget-object p2, v1, Lcom/im/freechat/domain/usecase/chat/u;->b:Lcom/im/freechat/domain/t;

    iget-object v6, v1, Lcom/im/freechat/domain/usecase/chat/u;->a:Lcom/im/freechat/domain/k;

    iput-object v1, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->a:Ljava/lang/Object;

    iput-object v5, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->b:Ljava/lang/Object;

    iput-object v4, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->c:Ljava/lang/Object;

    iput-object p2, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->d:Ljava/lang/Object;

    const/4 v7, 0x4

    iput v7, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->g:I

    invoke-interface {v6, p1}, Lcom/im/freechat/domain/k;->w(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_5

    return-object v0

    :cond_5
    move-object v10, v4

    move-object v4, p2

    move-object p2, v6

    goto/16 :goto_1

    :goto_5
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    iput-object v1, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->a:Ljava/lang/Object;

    iput-object v6, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->b:Ljava/lang/Object;

    iput-object v5, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->c:Ljava/lang/Object;

    iput-object v3, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->d:Ljava/lang/Object;

    const/4 v9, 0x5

    iput v9, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->g:I

    invoke-interface {v4, v7, v8, p2, p1}, Lcom/im/freechat/domain/t;->C(JLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_6

    return-object v0

    :cond_6
    move-object v4, v6

    :goto_6
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .line 12
    iget-object p2, v1, Lcom/im/freechat/domain/usecase/chat/u;->a:Lcom/im/freechat/domain/k;

    iput-object v1, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->a:Ljava/lang/Object;

    iput-object v4, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->b:Ljava/lang/Object;

    iput-object v5, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->c:Ljava/lang/Object;

    const/4 v8, 0x6

    iput v8, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->g:I

    invoke-interface {p2, v6, v7, p1}, Lcom/im/freechat/domain/k;->s(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_7

    return-object v0

    .line 13
    :cond_7
    :goto_7
    new-instance p2, Lcom/im/freechat/domain/usecase/chat/u$b;

    invoke-direct {p2, v1, v4, v3}, Lcom/im/freechat/domain/usecase/chat/u$b;-><init>(Lcom/im/freechat/domain/usecase/chat/u;Lcom/im/freechat/shared/entities/auth/UserInfo;Lkotlin/coroutines/Continuation;)V

    iput-object v1, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->a:Ljava/lang/Object;

    iput-object v3, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->b:Ljava/lang/Object;

    iput-object v3, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->c:Ljava/lang/Object;

    const/4 v3, 0x7

    iput v3, p1, Lcom/im/freechat/domain/usecase/chat/u$a;->g:I

    invoke-static {v5, p2, p1}, Lcom/im/freechat/domain/f;->b(Ljava/util/Map;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_8
    move-object p1, v1

    .line 14
    :goto_8
    iget-object p1, p1, Lcom/im/freechat/domain/usecase/chat/u;->b:Lcom/im/freechat/domain/t;

    invoke-interface {p1, v2}, Lcom/im/freechat/domain/t;->u(Z)V

    .line 15
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_5
    move-exception p2

    move-object p1, p0

    goto :goto_a

    :catch_5
    move-exception p2

    move-object p1, p0

    .line 16
    :goto_9
    :try_start_9
    throw p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 17
    :goto_a
    iget-object p1, p1, Lcom/im/freechat/domain/usecase/chat/u;->b:Lcom/im/freechat/domain/t;

    invoke-interface {p1, v2}, Lcom/im/freechat/domain/t;->u(Z)V

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

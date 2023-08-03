.class public final Lcom/im/freechat/domain/usecase/messages/j;
.super Lcom/im/freechat/domain/usecase/base/a;
.source "SendMessageInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/domain/usecase/messages/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/im/freechat/domain/usecase/base/a<",
        "Lcom/im/freechat/domain/usecase/messages/j$a;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSendMessageInteractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SendMessageInteractor.kt\ncom/im/freechat/domain/usecase/messages/SendMessageInteractor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,71:1\n1549#2:72\n1620#2,3:73\n*S KotlinDebug\n*F\n+ 1 SendMessageInteractor.kt\ncom/im/freechat/domain/usecase/messages/SendMessageInteractor\n*L\n38#1:72\n38#1:73,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0008B\u0017\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001b\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0002H\u0094@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/im/freechat/domain/usecase/messages/j;",
        "Lcom/im/freechat/domain/usecase/base/a;",
        "Lcom/im/freechat/domain/usecase/messages/j$a;",
        "",
        "params",
        "c",
        "(Lcom/im/freechat/domain/usecase/messages/j$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/im/freechat/domain/k;",
        "a",
        "Lcom/im/freechat/domain/k;",
        "loginRepository",
        "Lcom/im/freechat/domain/t;",
        "b",
        "Lcom/im/freechat/domain/t;",
        "syncRepository",
        "<init>",
        "(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/t;)V",
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


# direct methods
.method public constructor <init>(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/t;)V
    .locals 1
    .param p1    # Lcom/im/freechat/domain/k;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/domain/t;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "loginRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "syncRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/domain/usecase/base/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/domain/usecase/messages/j;->a:Lcom/im/freechat/domain/k;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/domain/usecase/messages/j;->b:Lcom/im/freechat/domain/t;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/im/freechat/domain/usecase/messages/j$a;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/domain/usecase/messages/j;->c(Lcom/im/freechat/domain/usecase/messages/j$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected c(Lcom/im/freechat/domain/usecase/messages/j$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .param p1    # Lcom/im/freechat/domain/usecase/messages/j$a;
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
            "Lcom/im/freechat/domain/usecase/messages/j$a;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p2, Lcom/im/freechat/domain/usecase/messages/j$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/domain/usecase/messages/j$b;

    iget v1, v0, Lcom/im/freechat/domain/usecase/messages/j$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/domain/usecase/messages/j$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/domain/usecase/messages/j$b;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/domain/usecase/messages/j$b;-><init>(Lcom/im/freechat/domain/usecase/messages/j;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v10, v0

    iget-object p2, v10, Lcom/im/freechat/domain/usecase/messages/j$b;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, v10, Lcom/im/freechat/domain/usecase/messages/j$b;->e:I

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v6, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    :goto_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_3
    iget-object p1, v10, Lcom/im/freechat/domain/usecase/messages/j$b;->b:Ljava/lang/Object;

    check-cast p1, Lcom/im/freechat/domain/usecase/messages/j$a;

    iget-object v1, v10, Lcom/im/freechat/domain/usecase/messages/j$b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/im/freechat/domain/usecase/messages/j;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/im/freechat/domain/usecase/messages/j;->a:Lcom/im/freechat/domain/k;

    iput-object p0, v10, Lcom/im/freechat/domain/usecase/messages/j$b;->a:Ljava/lang/Object;

    iput-object p1, v10, Lcom/im/freechat/domain/usecase/messages/j$b;->b:Ljava/lang/Object;

    iput v6, v10, Lcom/im/freechat/domain/usecase/messages/j$b;->e:I

    invoke-interface {p2, v10}, Lcom/im/freechat/domain/k;->v(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_5

    return-object v0

    :cond_5
    move-object v1, p0

    :goto_2
    check-cast p2, Lcom/im/freechat/shared/entities/auth/UserInfo;

    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/auth/UserInfo;->getUserId()I

    move-result p2

    .line 5
    invoke-virtual {p1}, Lcom/im/freechat/domain/usecase/messages/j$a;->c()Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;

    move-result-object v7

    sget-object v8, Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;->EDIT:Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;

    const/4 v9, 0x0

    if-ne v7, v8, :cond_7

    invoke-virtual {p1}, Lcom/im/freechat/domain/usecase/messages/j$a;->h()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 6
    invoke-virtual {p1}, Lcom/im/freechat/domain/usecase/messages/j$a;->a()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v6

    if-eqz p2, :cond_6

    .line 7
    iget-object v1, v1, Lcom/im/freechat/domain/usecase/messages/j;->b:Lcom/im/freechat/domain/t;

    .line 8
    invoke-virtual {p1}, Lcom/im/freechat/domain/usecase/messages/j$a;->b()I

    move-result v2

    .line 9
    invoke-virtual {p1}, Lcom/im/freechat/domain/usecase/messages/j$a;->d()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/im/freechat/shared/entities/message/Message;

    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/message/Message;->getMessageId()J

    move-result-wide v3

    .line 10
    invoke-virtual {p1}, Lcom/im/freechat/domain/usecase/messages/j$a;->h()Ljava/lang/String;

    move-result-object p1

    .line 11
    iput-object v9, v10, Lcom/im/freechat/domain/usecase/messages/j$b;->a:Ljava/lang/Object;

    iput-object v9, v10, Lcom/im/freechat/domain/usecase/messages/j$b;->b:Ljava/lang/Object;

    iput v5, v10, Lcom/im/freechat/domain/usecase/messages/j$b;->e:I

    move-object v5, p1

    move-object v6, v10

    invoke-interface/range {v1 .. v6}, Lcom/im/freechat/domain/t;->T(IJLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_e

    return-object v0

    .line 12
    :cond_6
    iget-object v1, v1, Lcom/im/freechat/domain/usecase/messages/j;->b:Lcom/im/freechat/domain/t;

    .line 13
    invoke-virtual {p1}, Lcom/im/freechat/domain/usecase/messages/j$a;->b()I

    move-result v2

    .line 14
    invoke-virtual {p1}, Lcom/im/freechat/domain/usecase/messages/j$a;->d()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/im/freechat/shared/entities/message/Message;

    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/message/Message;->getMessageId()J

    move-result-wide v5

    .line 15
    invoke-virtual {p1}, Lcom/im/freechat/domain/usecase/messages/j$a;->h()Ljava/lang/String;

    move-result-object p1

    .line 16
    iput-object v9, v10, Lcom/im/freechat/domain/usecase/messages/j$b;->a:Ljava/lang/Object;

    iput-object v9, v10, Lcom/im/freechat/domain/usecase/messages/j$b;->b:Ljava/lang/Object;

    iput v4, v10, Lcom/im/freechat/domain/usecase/messages/j$b;->e:I

    move-wide v3, v5

    move-object v5, p1

    move-object v6, v10

    invoke-interface/range {v1 .. v6}, Lcom/im/freechat/domain/t;->A(IJLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_e

    return-object v0

    .line 17
    :cond_7
    invoke-virtual {p1}, Lcom/im/freechat/domain/usecase/messages/j$a;->c()Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;

    move-result-object v4

    sget-object v5, Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;->FORWARD:Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;

    if-ne v4, v5, :cond_9

    .line 18
    iget-object v1, v1, Lcom/im/freechat/domain/usecase/messages/j;->b:Lcom/im/freechat/domain/t;

    .line 19
    invoke-virtual {p1}, Lcom/im/freechat/domain/usecase/messages/j$a;->b()I

    move-result v4

    .line 20
    invoke-virtual {p1}, Lcom/im/freechat/domain/usecase/messages/j$a;->d()Ljava/util/List;

    move-result-object v2

    .line 21
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v2, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 23
    check-cast v6, Lcom/im/freechat/shared/entities/message/Message;

    .line 24
    invoke-virtual {v6}, Lcom/im/freechat/shared/entities/message/Message;->getMessageId()J

    move-result-wide v6

    invoke-static {v6, v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 25
    :cond_8
    invoke-virtual {p1}, Lcom/im/freechat/domain/usecase/messages/j$a;->h()Ljava/lang/String;

    move-result-object v6

    .line 26
    invoke-virtual {p1}, Lcom/im/freechat/domain/usecase/messages/j$a;->a()Ljava/util/List;

    move-result-object v7

    .line 27
    invoke-virtual {p1}, Lcom/im/freechat/domain/usecase/messages/j$a;->e()Z

    move-result v8

    .line 28
    invoke-virtual {p1}, Lcom/im/freechat/domain/usecase/messages/j$a;->f()Ljava/util/Map;

    move-result-object p1

    .line 29
    iput-object v9, v10, Lcom/im/freechat/domain/usecase/messages/j$b;->a:Ljava/lang/Object;

    iput-object v9, v10, Lcom/im/freechat/domain/usecase/messages/j$b;->b:Ljava/lang/Object;

    iput v3, v10, Lcom/im/freechat/domain/usecase/messages/j$b;->e:I

    move v2, p2

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, p1

    move-object v9, v10

    invoke-interface/range {v1 .. v9}, Lcom/im/freechat/domain/t;->E(IILjava/util/List;Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_e

    return-object v0

    .line 30
    :cond_9
    invoke-virtual {p1}, Lcom/im/freechat/domain/usecase/messages/j$a;->h()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_a

    goto :goto_4

    :cond_a
    const/4 v3, 0x0

    goto :goto_5

    :cond_b
    :goto_4
    const/4 v3, 0x1

    :goto_5
    if-eqz v3, :cond_c

    invoke-virtual {p1}, Lcom/im/freechat/domain/usecase/messages/j$a;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v6

    if-eqz v3, :cond_e

    .line 31
    :cond_c
    iget-object v1, v1, Lcom/im/freechat/domain/usecase/messages/j;->b:Lcom/im/freechat/domain/t;

    .line 32
    invoke-virtual {p1}, Lcom/im/freechat/domain/usecase/messages/j$a;->b()I

    move-result v3

    .line 33
    invoke-virtual {p1}, Lcom/im/freechat/domain/usecase/messages/j$a;->h()Ljava/lang/String;

    move-result-object v4

    .line 34
    invoke-virtual {p1}, Lcom/im/freechat/domain/usecase/messages/j$a;->a()Ljava/util/List;

    move-result-object v5

    .line 35
    invoke-virtual {p1}, Lcom/im/freechat/domain/usecase/messages/j$a;->c()Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;

    move-result-object v6

    sget-object v7, Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;->QUOTE:Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;

    if-ne v6, v7, :cond_d

    invoke-virtual {p1}, Lcom/im/freechat/domain/usecase/messages/j$a;->d()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/im/freechat/shared/entities/message/Message;

    invoke-virtual {v6}, Lcom/im/freechat/shared/entities/message/Message;->getMessageId()J

    move-result-wide v6

    invoke-static {v6, v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_6

    :cond_d
    move-object v6, v9

    .line 36
    :goto_6
    invoke-virtual {p1}, Lcom/im/freechat/domain/usecase/messages/j$a;->e()Z

    move-result v7

    .line 37
    invoke-virtual {p1}, Lcom/im/freechat/domain/usecase/messages/j$a;->f()Ljava/util/Map;

    move-result-object v8

    .line 38
    invoke-virtual {p1}, Lcom/im/freechat/domain/usecase/messages/j$a;->g()Z

    move-result p1

    .line 39
    iput-object v9, v10, Lcom/im/freechat/domain/usecase/messages/j$b;->a:Ljava/lang/Object;

    iput-object v9, v10, Lcom/im/freechat/domain/usecase/messages/j$b;->b:Ljava/lang/Object;

    iput v2, v10, Lcom/im/freechat/domain/usecase/messages/j$b;->e:I

    move v2, p2

    move v9, p1

    invoke-interface/range {v1 .. v10}, Lcom/im/freechat/domain/t;->Q(IILjava/lang/String;Ljava/util/List;Ljava/lang/Long;ZLjava/util/Map;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_e

    return-object v0

    .line 40
    :cond_e
    :goto_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.class public final Lcom/im/freechat/domain/usecase/contact/h;
.super Lcom/im/freechat/domain/usecase/base/a;
.source "SyncContactsInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/im/freechat/domain/usecase/base/a<",
        "Lkotlin/Unit;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSyncContactsInteractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SyncContactsInteractor.kt\ncom/im/freechat/domain/usecase/contact/SyncContactsInteractor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,53:1\n1549#2:54\n1620#2,3:55\n*S KotlinDebug\n*F\n+ 1 SyncContactsInteractor.kt\ncom/im/freechat/domain/usecase/contact/SyncContactsInteractor\n*L\n32#1:54\n32#1:55,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u0012\u0006\u0010\u0019\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ)\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001b\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0002H\u0094@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/im/freechat/domain/usecase/contact/h;",
        "Lcom/im/freechat/domain/usecase/base/a;",
        "",
        "",
        "token",
        "Lcom/im/freechat/shared/entities/contact/ContactType;",
        "type",
        "",
        "Lcom/im/freechat/shared/entities/contact/UserModel;",
        "d",
        "(Ljava/lang/String;Lcom/im/freechat/shared/entities/contact/ContactType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "params",
        "e",
        "(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/im/freechat/domain/k;",
        "a",
        "Lcom/im/freechat/domain/k;",
        "loginRepository",
        "Lcom/im/freechat/domain/p;",
        "b",
        "Lcom/im/freechat/domain/p;",
        "remoteRepository",
        "Lcom/im/freechat/domain/c;",
        "c",
        "Lcom/im/freechat/domain/c;",
        "databaseRepository",
        "<init>",
        "(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/p;Lcom/im/freechat/domain/c;)V",
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

.field private final b:Lcom/im/freechat/domain/p;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lcom/im/freechat/domain/c;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/p;Lcom/im/freechat/domain/c;)V
    .locals 1
    .param p1    # Lcom/im/freechat/domain/k;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/domain/p;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/im/freechat/domain/c;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "loginRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "databaseRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/domain/usecase/base/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/domain/usecase/contact/h;->a:Lcom/im/freechat/domain/k;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/domain/usecase/contact/h;->b:Lcom/im/freechat/domain/p;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/domain/usecase/contact/h;->c:Lcom/im/freechat/domain/c;

    return-void
.end method

.method public static final synthetic c(Lcom/im/freechat/domain/usecase/contact/h;Ljava/lang/String;Lcom/im/freechat/shared/entities/contact/ContactType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/im/freechat/domain/usecase/contact/h;->d(Ljava/lang/String;Lcom/im/freechat/shared/entities/contact/ContactType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final d(Ljava/lang/String;Lcom/im/freechat/shared/entities/contact/ContactType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/im/freechat/shared/entities/contact/ContactType;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/im/freechat/domain/usecase/contact/h$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/im/freechat/domain/usecase/contact/h$a;

    iget v1, v0, Lcom/im/freechat/domain/usecase/contact/h$a;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/domain/usecase/contact/h$a;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/domain/usecase/contact/h$a;

    invoke-direct {v0, p0, p3}, Lcom/im/freechat/domain/usecase/contact/h$a;-><init>(Lcom/im/freechat/domain/usecase/contact/h;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/im/freechat/domain/usecase/contact/h$a;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/domain/usecase/contact/h$a;->g:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/im/freechat/domain/usecase/contact/h$a;->d:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object p2, v0, Lcom/im/freechat/domain/usecase/contact/h$a;->c:Ljava/lang/Object;

    check-cast p2, Lcom/im/freechat/shared/entities/contact/ContactType;

    iget-object v2, v0, Lcom/im/freechat/domain/usecase/contact/h$a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Lcom/im/freechat/domain/usecase/contact/h$a;->a:Ljava/lang/Object;

    check-cast v4, Lcom/im/freechat/domain/usecase/contact/h;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, v0

    move-object v0, p2

    move-object p2, v2

    :goto_1
    move-object v2, v1

    move-object v1, v7

    goto :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    move-object v4, p0

    const/4 v2, 0x1

    const/4 v5, 0x1

    move-object v7, p2

    move-object p2, p1

    move-object p1, p3

    move-object p3, v7

    :goto_2
    if-eqz v2, :cond_5

    .line 5
    iget-object v2, v4, Lcom/im/freechat/domain/usecase/contact/h;->b:Lcom/im/freechat/domain/p;

    iput-object v4, v0, Lcom/im/freechat/domain/usecase/contact/h$a;->a:Ljava/lang/Object;

    iput-object p2, v0, Lcom/im/freechat/domain/usecase/contact/h$a;->b:Ljava/lang/Object;

    iput-object p3, v0, Lcom/im/freechat/domain/usecase/contact/h$a;->c:Ljava/lang/Object;

    iput-object p1, v0, Lcom/im/freechat/domain/usecase/contact/h$a;->d:Ljava/lang/Object;

    iput v3, v0, Lcom/im/freechat/domain/usecase/contact/h$a;->g:I

    invoke-interface {v2, p2, p3, v5, v0}, Lcom/im/freechat/domain/p;->e(Ljava/lang/String;Lcom/im/freechat/shared/entities/contact/ContactType;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v7, v0

    move-object v0, p3

    move-object p3, v2

    goto :goto_1

    .line 6
    :goto_3
    check-cast p3, Lcom/im/freechat/shared/entities/PagedList;

    .line 7
    invoke-virtual {p3}, Lcom/im/freechat/shared/entities/PagedList;->getList()Ljava/util/List;

    move-result-object v5

    invoke-static {p1, v5}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 8
    invoke-virtual {p3}, Lcom/im/freechat/shared/entities/PagedList;->getPageInfo()Lcom/im/freechat/shared/entities/PageInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/im/freechat/shared/entities/PageInfo;->getPage()I

    move-result v5

    invoke-virtual {p3}, Lcom/im/freechat/shared/entities/PagedList;->getPageInfo()Lcom/im/freechat/shared/entities/PageInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/im/freechat/shared/entities/PageInfo;->getTotalPage()I

    move-result v6

    if-ge v5, v6, :cond_4

    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    .line 9
    :goto_4
    invoke-virtual {p3}, Lcom/im/freechat/shared/entities/PagedList;->getPageInfo()Lcom/im/freechat/shared/entities/PageInfo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/im/freechat/shared/entities/PageInfo;->getPage()I

    move-result p3

    add-int/2addr p3, v3

    move v7, v5

    move v5, p3

    move-object p3, v0

    move-object v0, v1

    move-object v1, v2

    move v2, v7

    goto :goto_2

    :cond_5
    return-object p1
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/domain/usecase/contact/h;->e(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 25
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

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/im/freechat/domain/usecase/contact/h$b;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/im/freechat/domain/usecase/contact/h$b;

    iget v3, v2, Lcom/im/freechat/domain/usecase/contact/h$b;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/im/freechat/domain/usecase/contact/h$b;->f:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/im/freechat/domain/usecase/contact/h$b;

    invoke-direct {v2, v0, v1}, Lcom/im/freechat/domain/usecase/contact/h$b;-><init>(Lcom/im/freechat/domain/usecase/contact/h;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/im/freechat/domain/usecase/contact/h$b;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 1
    iget v4, v2, Lcom/im/freechat/domain/usecase/contact/h$b;->f:I

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v4, :cond_5

    if-eq v4, v8, :cond_4

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
    iget-object v4, v2, Lcom/im/freechat/domain/usecase/contact/h$b;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/Collection;

    iget-object v6, v2, Lcom/im/freechat/domain/usecase/contact/h$b;->b:Ljava/lang/Object;

    check-cast v6, Lcom/im/freechat/shared/entities/auth/UserInfo;

    iget-object v7, v2, Lcom/im/freechat/domain/usecase/contact/h$b;->a:Ljava/lang/Object;

    check-cast v7, Lcom/im/freechat/domain/usecase/contact/h;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget-object v4, v2, Lcom/im/freechat/domain/usecase/contact/h$b;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/Collection;

    iget-object v7, v2, Lcom/im/freechat/domain/usecase/contact/h$b;->b:Ljava/lang/Object;

    check-cast v7, Lcom/im/freechat/shared/entities/auth/UserInfo;

    iget-object v8, v2, Lcom/im/freechat/domain/usecase/contact/h$b;->a:Ljava/lang/Object;

    check-cast v8, Lcom/im/freechat/domain/usecase/contact/h;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object v4, v2, Lcom/im/freechat/domain/usecase/contact/h$b;->a:Ljava/lang/Object;

    check-cast v4, Lcom/im/freechat/domain/usecase/contact/h;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Lcom/im/freechat/domain/usecase/contact/h;->a:Lcom/im/freechat/domain/k;

    iput-object v0, v2, Lcom/im/freechat/domain/usecase/contact/h$b;->a:Ljava/lang/Object;

    iput v8, v2, Lcom/im/freechat/domain/usecase/contact/h$b;->f:I

    invoke-interface {v1, v2}, Lcom/im/freechat/domain/k;->v(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_6

    return-object v3

    :cond_6
    move-object v4, v0

    .line 5
    :goto_1
    check-cast v1, Lcom/im/freechat/shared/entities/auth/UserInfo;

    .line 6
    sget-object v8, Lcom/im/freechat/shared/entities/contact/UserModel;->Companion:Lcom/im/freechat/shared/entities/contact/UserModel$Companion;

    invoke-virtual {v8}, Lcom/im/freechat/shared/entities/contact/UserModel$Companion;->serviceContact()Lcom/im/freechat/shared/entities/contact/UserModel;

    move-result-object v8

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 7
    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/auth/UserInfo;->getToken()Ljava/lang/String;

    move-result-object v9

    .line 8
    sget-object v10, Lcom/im/freechat/shared/entities/contact/ContactType;->FOLLOW:Lcom/im/freechat/shared/entities/contact/ContactType;

    .line 9
    iput-object v4, v2, Lcom/im/freechat/domain/usecase/contact/h$b;->a:Ljava/lang/Object;

    iput-object v1, v2, Lcom/im/freechat/domain/usecase/contact/h$b;->b:Ljava/lang/Object;

    iput-object v8, v2, Lcom/im/freechat/domain/usecase/contact/h$b;->c:Ljava/lang/Object;

    iput v7, v2, Lcom/im/freechat/domain/usecase/contact/h$b;->f:I

    invoke-direct {v4, v9, v10, v2}, Lcom/im/freechat/domain/usecase/contact/h;->d(Ljava/lang/String;Lcom/im/freechat/shared/entities/contact/ContactType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_7

    return-object v3

    :cond_7
    move-object/from16 v23, v7

    move-object v7, v1

    move-object/from16 v1, v23

    move-object/from16 v24, v8

    move-object v8, v4

    move-object/from16 v4, v24

    .line 10
    :goto_2
    check-cast v1, Ljava/lang/Iterable;

    .line 11
    invoke-static {v4, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    .line 12
    invoke-virtual {v7}, Lcom/im/freechat/shared/entities/auth/UserInfo;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 13
    sget-object v9, Lcom/im/freechat/shared/entities/contact/ContactType;->BLOCK:Lcom/im/freechat/shared/entities/contact/ContactType;

    .line 14
    iput-object v8, v2, Lcom/im/freechat/domain/usecase/contact/h$b;->a:Ljava/lang/Object;

    iput-object v7, v2, Lcom/im/freechat/domain/usecase/contact/h$b;->b:Ljava/lang/Object;

    iput-object v4, v2, Lcom/im/freechat/domain/usecase/contact/h$b;->c:Ljava/lang/Object;

    iput v6, v2, Lcom/im/freechat/domain/usecase/contact/h$b;->f:I

    invoke-direct {v8, v1, v9, v2}, Lcom/im/freechat/domain/usecase/contact/h;->d(Ljava/lang/String;Lcom/im/freechat/shared/entities/contact/ContactType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_8

    return-object v3

    :cond_8
    move-object v6, v7

    move-object v7, v8

    .line 15
    :goto_3
    check-cast v1, Ljava/lang/Iterable;

    .line 16
    invoke-static {v4, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 17
    new-instance v4, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v1, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 19
    move-object v9, v8

    check-cast v9, Lcom/im/freechat/shared/entities/contact/UserModel;

    .line 20
    invoke-virtual {v9}, Lcom/im/freechat/shared/entities/contact/UserModel;->getUserId()I

    move-result v8

    invoke-virtual {v6}, Lcom/im/freechat/shared/entities/auth/UserInfo;->getUserId()I

    move-result v10

    if-ne v8, v10, :cond_9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x3bf

    const/16 v22, 0x0

    invoke-static/range {v9 .. v22}, Lcom/im/freechat/shared/entities/contact/UserModel;->copy$default(Lcom/im/freechat/shared/entities/contact/UserModel;Ljava/lang/String;Ljava/lang/String;ILcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;Ljava/lang/String;ZZZJLjava/lang/String;ILjava/lang/Object;)Lcom/im/freechat/shared/entities/contact/UserModel;

    move-result-object v9

    :cond_9
    invoke-interface {v4, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 21
    :cond_a
    iget-object v1, v7, Lcom/im/freechat/domain/usecase/contact/h;->c:Lcom/im/freechat/domain/c;

    const/4 v6, 0x0

    iput-object v6, v2, Lcom/im/freechat/domain/usecase/contact/h$b;->a:Ljava/lang/Object;

    iput-object v6, v2, Lcom/im/freechat/domain/usecase/contact/h$b;->b:Ljava/lang/Object;

    iput-object v6, v2, Lcom/im/freechat/domain/usecase/contact/h$b;->c:Ljava/lang/Object;

    iput v5, v2, Lcom/im/freechat/domain/usecase/contact/h$b;->f:I

    invoke-interface {v1, v4, v2}, Lcom/im/freechat/domain/c;->i(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_b

    return-object v3

    .line 22
    :cond_b
    :goto_5
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

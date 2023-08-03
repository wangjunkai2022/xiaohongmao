.class public abstract Lcom/im/freechat/data/sources/database/entities/BaseDao;
.super Ljava/lang/Object;
.source "BaseDao.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseDao.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseDao.kt\ncom/im/freechat/data/sources/database/entities/BaseDao\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,43:1\n1851#2,2:44\n*S KotlinDebug\n*F\n+ 1 BaseDao.kt\ncom/im/freechat/data/sources/database/entities/BaseDao\n*L\n38#1:44,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0006\u0008&\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u0000H\'\u00a2\u0006\u0002\u0010\u0007J\u0019\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00028\u0000H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\nJ%\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000bH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\rJ\u0019\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u0000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\nJ\u001f\u0010\u000e\u001a\u00020\u00052\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000bH\u0097@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\rJ\u0019\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u0000H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\nJ\u001f\u0010\u0010\u001a\u00020\u00052\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000bH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\r\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/database/entities/BaseDao;",
        "T",
        "",
        "()V",
        "delete",
        "",
        "value",
        "(Ljava/lang/Object;)V",
        "insert",
        "",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "values",
        "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "insertOrUpdate",
        "list",
        "update",
        "data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic insertOrUpdate$suspendImpl(Lcom/im/freechat/data/sources/database/entities/BaseDao;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lcom/im/freechat/data/sources/database/entities/BaseDao$insertOrUpdate$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/data/sources/database/entities/BaseDao$insertOrUpdate$1;

    iget v1, v0, Lcom/im/freechat/data/sources/database/entities/BaseDao$insertOrUpdate$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/sources/database/entities/BaseDao$insertOrUpdate$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/BaseDao$insertOrUpdate$1;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/data/sources/database/entities/BaseDao$insertOrUpdate$1;-><init>(Lcom/im/freechat/data/sources/database/entities/BaseDao;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/im/freechat/data/sources/database/entities/BaseDao$insertOrUpdate$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/sources/database/entities/BaseDao$insertOrUpdate$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    iget-object p1, v0, Lcom/im/freechat/data/sources/database/entities/BaseDao$insertOrUpdate$1;->L$1:Ljava/lang/Object;

    iget-object p0, v0, Lcom/im/freechat/data/sources/database/entities/BaseDao$insertOrUpdate$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/im/freechat/data/sources/database/entities/BaseDao;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Lcom/im/freechat/data/sources/database/entities/BaseDao$insertOrUpdate$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/im/freechat/data/sources/database/entities/BaseDao$insertOrUpdate$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/im/freechat/data/sources/database/entities/BaseDao$insertOrUpdate$1;->label:I

    invoke-virtual {p0, p1, v0}, Lcom/im/freechat/data/sources/database/entities/BaseDao;->insert(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long p2, v4, v6

    if-nez p2, :cond_6

    const/4 p2, 0x0

    .line 5
    iput-object p2, v0, Lcom/im/freechat/data/sources/database/entities/BaseDao$insertOrUpdate$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/im/freechat/data/sources/database/entities/BaseDao$insertOrUpdate$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/im/freechat/data/sources/database/entities/BaseDao$insertOrUpdate$1;->label:I

    invoke-virtual {p0, p1, v0}, Lcom/im/freechat/data/sources/database/entities/BaseDao;->update(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    .line 6
    :cond_5
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static synthetic insertOrUpdate$suspendImpl(Lcom/im/freechat/data/sources/database/entities/BaseDao;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation build Landroidx/room/Transaction;
    .end annotation

    instance-of v0, p2, Lcom/im/freechat/data/sources/database/entities/BaseDao$insertOrUpdate$2;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/data/sources/database/entities/BaseDao$insertOrUpdate$2;

    iget v1, v0, Lcom/im/freechat/data/sources/database/entities/BaseDao$insertOrUpdate$2;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/sources/database/entities/BaseDao$insertOrUpdate$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/BaseDao$insertOrUpdate$2;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/data/sources/database/entities/BaseDao$insertOrUpdate$2;-><init>(Lcom/im/freechat/data/sources/database/entities/BaseDao;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/im/freechat/data/sources/database/entities/BaseDao$insertOrUpdate$2;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 7
    iget v2, v0, Lcom/im/freechat/data/sources/database/entities/BaseDao$insertOrUpdate$2;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/im/freechat/data/sources/database/entities/BaseDao$insertOrUpdate$2;->L$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/Iterator;

    iget-object p1, v0, Lcom/im/freechat/data/sources/database/entities/BaseDao$insertOrUpdate$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/im/freechat/data/sources/database/entities/BaseDao;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 11
    iput-object p1, v0, Lcom/im/freechat/data/sources/database/entities/BaseDao$insertOrUpdate$2;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcom/im/freechat/data/sources/database/entities/BaseDao$insertOrUpdate$2;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/im/freechat/data/sources/database/entities/BaseDao$insertOrUpdate$2;->label:I

    invoke-virtual {p1, p2, v0}, Lcom/im/freechat/data/sources/database/entities/BaseDao;->insertOrUpdate(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 12
    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public abstract delete(Ljava/lang/Object;)V
    .annotation build Landroidx/room/Delete;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract insert(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Insert;
        onConflict = 0x5
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract insert(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Insert;
        onConflict = 0x5
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public insertOrUpdate(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/BaseDao;->insertOrUpdate$suspendImpl(Lcom/im/freechat/data/sources/database/entities/BaseDao;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insertOrUpdate(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
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

    invoke-static {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/BaseDao;->insertOrUpdate$suspendImpl(Lcom/im/freechat/data/sources/database/entities/BaseDao;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract update(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Update;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract update(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Update;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
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
.end method

.class public abstract Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;
.super Ljava/lang/Object;
.source "AttachmentDao.kt"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\'\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001f\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0008J\u001f\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00062\u0006\u0010\u000b\u001a\u00020\u0007H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000cJ%\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00062\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0008J\u0019\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\nH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0010J\u0019\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0011H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0012J\u001f\u0010\u000e\u001a\u00020\u00042\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0006H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0008J\u001f\u0010\u0014\u001a\u00020\u00042\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0006H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0008J\u0019\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\nH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0010J!\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u0007H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001aJ!\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u0007H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001aJ!\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u001eH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001fJ\u0019\u0010 \u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\nH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0010J!\u0010!\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u001eH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001fJ)\u0010$\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u001e2\u0006\u0010%\u001a\u00020\u0007H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010&\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;",
        "",
        "()V",
        "deleteByMediaIds",
        "",
        "ids",
        "",
        "",
        "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getAttachmentByMessageId",
        "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
        "id",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getAttachmentsByIds",
        "insert",
        "entity",
        "(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/im/freechat/data/sources/database/entities/attachment/HttpAttachmentEntity;",
        "(Lcom/im/freechat/data/sources/database/entities/attachment/HttpAttachmentEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "entities",
        "insertAll",
        "insertOrUpdate",
        "value",
        "setAttachmentId",
        "oldId",
        "newId",
        "(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setAttachmentIdUnsafe",
        "setAttachmentLocalPath",
        "path",
        "",
        "(JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "update",
        "updatePreviewUrl",
        "mediaId",
        "url",
        "updateRemoteUrl",
        "size",
        "(JLjava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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

.method static synthetic insertOrUpdate$suspendImpl(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$insertOrUpdate$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$insertOrUpdate$1;

    iget v1, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$insertOrUpdate$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$insertOrUpdate$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$insertOrUpdate$1;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$insertOrUpdate$1;-><init>(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$insertOrUpdate$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$insertOrUpdate$1;->label:I

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
    iget-object p0, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$insertOrUpdate$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    iget-object p0, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$insertOrUpdate$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$insertOrUpdate$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$insertOrUpdate$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$insertOrUpdate$1;->label:I

    invoke-virtual {p0, p1, v0}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;->insert(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    iput-object p2, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$insertOrUpdate$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$insertOrUpdate$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$insertOrUpdate$1;->label:I

    invoke-virtual {p0, p1, v0}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;->update(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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


# virtual methods
.method public abstract deleteByMediaIds(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM attachment WHERE media_id IN (:ids)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
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

.method public abstract getAttachmentByMessageId(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM attachment WHERE parent_message_id = :id"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract getAttachmentsByIds(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM attachment WHERE media_id IN (:ids)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract insert(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Insert;
        entity = Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;
        onConflict = 0x5
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
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

.method public abstract insert(Lcom/im/freechat/data/sources/database/entities/attachment/HttpAttachmentEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/im/freechat/data/sources/database/entities/attachment/HttpAttachmentEntity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Insert;
        entity = Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;
        onConflict = 0x5
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/sources/database/entities/attachment/HttpAttachmentEntity;",
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
        entity = Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;
        onConflict = 0x5
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/attachment/HttpAttachmentEntity;",
            ">;",
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

.method public abstract insertAll(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Insert;
        entity = Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;
        onConflict = 0x5
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
            ">;",
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

.method public insertOrUpdate(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;
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
            "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;->insertOrUpdate$suspendImpl(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final setAttachmentId(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .param p5    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p5, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$setAttachmentId$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$setAttachmentId$1;

    iget v1, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$setAttachmentId$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$setAttachmentId$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$setAttachmentId$1;

    invoke-direct {v0, p0, p5}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$setAttachmentId$1;-><init>(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p5, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$setAttachmentId$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 1
    iget v1, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$setAttachmentId$1;->label:I

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v2, :cond_3

    if-eq v1, v9, :cond_2

    if-ne v1, v8, :cond_1

    iget-object p1, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$setAttachmentId$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroid/database/sqlite/SQLiteConstraintException;

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-wide p1, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$setAttachmentId$1;->J$1:J

    iget-wide p3, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$setAttachmentId$1;->J$0:J

    iget-object v1, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$setAttachmentId$1;->L$1:Ljava/lang/Object;

    check-cast v1, Landroid/database/sqlite/SQLiteConstraintException;

    iget-object v2, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$setAttachmentId$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v4, p1

    move-object p1, v1

    move-object v1, v2

    move-wide v2, p3

    goto :goto_2

    :cond_3
    iget-wide p3, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$setAttachmentId$1;->J$1:J

    iget-wide p1, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$setAttachmentId$1;->J$0:J

    iget-object v1, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$setAttachmentId$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;

    :try_start_0
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p5

    goto :goto_1

    :cond_4
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    iput-object p0, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$setAttachmentId$1;->L$0:Ljava/lang/Object;

    iput-wide p1, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$setAttachmentId$1;->J$0:J

    iput-wide p3, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$setAttachmentId$1;->J$1:J

    iput v2, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$setAttachmentId$1;->label:I

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;->setAttachmentIdUnsafe(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p1, v7, :cond_7

    return-object v7

    :catch_1
    move-exception p5

    move-object v1, p0

    .line 5
    :goto_1
    invoke-static {p3, p4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v1, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$setAttachmentId$1;->L$0:Ljava/lang/Object;

    iput-object p5, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$setAttachmentId$1;->L$1:Ljava/lang/Object;

    iput-wide p1, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$setAttachmentId$1;->J$0:J

    iput-wide p3, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$setAttachmentId$1;->J$1:J

    iput v9, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$setAttachmentId$1;->label:I

    invoke-virtual {v1, v2, v0}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;->deleteByMediaIds(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v7, :cond_5

    return-object v7

    :cond_5
    move-wide v2, p1

    move-wide v4, p3

    move-object p1, p5

    .line 6
    :goto_2
    iput-object p1, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$setAttachmentId$1;->L$0:Ljava/lang/Object;

    const/4 p2, 0x0

    iput-object p2, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$setAttachmentId$1;->L$1:Ljava/lang/Object;

    iput v8, v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao$setAttachmentId$1;->label:I

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;->setAttachmentIdUnsafe(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v7, :cond_6

    return-object v7

    .line 7
    :cond_6
    :goto_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteConstraintException;->printStackTrace()V

    .line 8
    :cond_7
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public abstract setAttachmentIdUnsafe(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p5    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE attachment SET media_id = :newId WHERE media_id = :oldId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
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

.method public abstract setAttachmentLocalPath(JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE attachment SET local_path = :path WHERE media_id = :id"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
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

.method public abstract update(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;
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
            "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
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

.method public abstract updatePreviewUrl(JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE attachment SET preview_remote_url = :url WHERE media_id = :mediaId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
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

.method public abstract updateRemoteUrl(JLjava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p6    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE attachment SET file_size = :size, remote_url = :url WHERE media_id = :mediaId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "J",
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

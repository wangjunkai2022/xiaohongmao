.class Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$13;
.super Ljava/lang/Object;
.source "AttachmentDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;->updatePreviewUrl(JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;

.field final synthetic val$mediaId:J

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$url",
            "val$mediaId"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$13;->this$0:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;

    iput-object p2, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$13;->val$url:Ljava/lang/String;

    iput-wide p3, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$13;->val$mediaId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$13;->call()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public call()Lkotlin/Unit;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-static {}, Lio/sentry/c3;->D()Lio/sentry/v0;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "db"

    const-string v2, "com.im.freechat.data.sources.database.entities.attachment.AttachmentDao"

    invoke-interface {v0, v1, v2}, Lio/sentry/v0;->H(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/v0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$13;->this$0:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;

    invoke-static {v1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;->access$500(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    iget-object v3, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$13;->val$url:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 5
    invoke-interface {v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 v2, 0x2

    .line 7
    iget-wide v3, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$13;->val$mediaId:J

    invoke-interface {v1, v2, v3, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 8
    iget-object v2, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$13;->this$0:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;

    invoke-static {v2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;->access$100(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 9
    iget-object v2, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$13;->this$0:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;

    invoke-static {v2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;->access$100(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    if-eqz v0, :cond_2

    sget-object v2, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    invoke-interface {v0, v2}, Lio/sentry/v0;->c(Lio/sentry/SpanStatus;)V

    .line 10
    :cond_2
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$13;->this$0:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;

    invoke-static {v3}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;->access$100(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lio/sentry/v0;->h()V

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$13;->this$0:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;

    invoke-static {v0}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;->access$500(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-object v2

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    if-eqz v0, :cond_4

    .line 12
    :try_start_1
    sget-object v3, Lio/sentry/SpanStatus;->INTERNAL_ERROR:Lio/sentry/SpanStatus;

    invoke-interface {v0, v3}, Lio/sentry/v0;->c(Lio/sentry/SpanStatus;)V

    invoke-interface {v0, v2}, Lio/sentry/v0;->s(Ljava/lang/Throwable;)V

    :cond_4
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    iget-object v3, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$13;->this$0:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;

    invoke-static {v3}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;->access$100(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lio/sentry/v0;->h()V

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$13;->this$0:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;

    invoke-static {v0}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;->access$500(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 14
    throw v2
.end method

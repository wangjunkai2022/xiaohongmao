.class Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$14;
.super Ljava/lang/Object;
.source "DownloadDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->removeDownloads(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.field final synthetic this$0:Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;

.field final synthetic val$mediaIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$mediaIds"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$14;->this$0:Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;

    iput-object p2, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$14;->val$mediaIds:Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$14;->call()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public call()Lkotlin/Unit;
    .locals 6
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

    const-string v2, "com.im.freechat.data.sources.database.entities.download.DownloadDao"

    invoke-interface {v0, v1, v2}, Lio/sentry/v0;->H(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/v0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DELETE FROM download WHERE media_id IN ("

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v2, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$14;->val$mediaIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 6
    invoke-static {v1, v2}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v2, ")"

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$14;->this$0:Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;

    invoke-static {v2}, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/room/RoomDatabase;->compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$14;->val$mediaIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_1

    .line 11
    invoke-interface {v1, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 12
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v1, v3, v4, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 13
    :cond_2
    iget-object v2, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$14;->this$0:Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;

    invoke-static {v2}, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 14
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$14;->this$0:Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;

    invoke-static {v1}, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    if-eqz v0, :cond_3

    sget-object v1, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    invoke-interface {v0, v1}, Lio/sentry/v0;->c(Lio/sentry/SpanStatus;)V

    .line 15
    :cond_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$14;->this$0:Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;

    invoke-static {v2}, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lio/sentry/v0;->h()V

    :cond_4
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    if-eqz v0, :cond_5

    :try_start_1
    sget-object v2, Lio/sentry/SpanStatus;->INTERNAL_ERROR:Lio/sentry/SpanStatus;

    invoke-interface {v0, v2}, Lio/sentry/v0;->c(Lio/sentry/SpanStatus;)V

    invoke-interface {v0, v1}, Lio/sentry/v0;->s(Ljava/lang/Throwable;)V

    :cond_5
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    iget-object v2, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$14;->this$0:Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;

    invoke-static {v2}, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lio/sentry/v0;->h()V

    .line 16
    :cond_6
    throw v1
.end method

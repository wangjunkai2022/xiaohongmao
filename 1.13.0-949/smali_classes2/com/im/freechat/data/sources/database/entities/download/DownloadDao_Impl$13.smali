.class Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$13;
.super Ljava/lang/Object;
.source "DownloadDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->getDownload(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$_statement"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$13;->this$0:Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;

    iput-object p2, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$13;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 2
    invoke-static {}, Lio/sentry/c3;->D()Lio/sentry/v0;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "db"

    const-string v4, "com.im.freechat.data.sources.database.entities.download.DownloadDao"

    invoke-interface {v0, v3, v4}, Lio/sentry/v0;->H(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/v0;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 3
    :goto_0
    iget-object v0, v1, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$13;->this$0:Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;

    invoke-static {v0}, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v4, v1, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$13;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v5, 0x0

    invoke-static {v0, v4, v5, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "chat_id"

    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "media_id"

    .line 4
    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "download_manager_id"

    .line 5
    invoke-static {v4, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "local_path"

    .line 6
    invoke-static {v4, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "remote_url"

    .line 7
    invoke-static {v4, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "file_size"

    .line 8
    invoke-static {v4, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "downloaded"

    .line 9
    invoke-static {v4, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "status"

    .line 10
    invoke-static {v4, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 11
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 12
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 13
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 14
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 15
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object/from16 v19, v2

    goto :goto_1

    .line 16
    :cond_1
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    .line 17
    :goto_1
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    move-object/from16 v20, v2

    goto :goto_3

    .line 18
    :cond_2
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 19
    :goto_3
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 20
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 21
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 22
    new-instance v2, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;

    move-object v13, v2

    invoke-direct/range {v13 .. v25}, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;-><init>(IJJLjava/lang/String;Ljava/lang/String;JJI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :cond_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    if-eqz v3, :cond_4

    sget-object v0, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    invoke-interface {v3, v0}, Lio/sentry/v0;->t(Lio/sentry/SpanStatus;)V

    .line 24
    :cond_4
    iget-object v0, v1, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$13;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    if-eqz v3, :cond_5

    .line 25
    :try_start_1
    sget-object v2, Lio/sentry/SpanStatus;->INTERNAL_ERROR:Lio/sentry/SpanStatus;

    invoke-interface {v3, v2}, Lio/sentry/v0;->c(Lio/sentry/SpanStatus;)V

    invoke-interface {v3, v0}, Lio/sentry/v0;->s(Ljava/lang/Throwable;)V

    :cond_5
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    if-eqz v3, :cond_6

    invoke-interface {v3}, Lio/sentry/v0;->h()V

    .line 26
    :cond_6
    iget-object v2, v1, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$13;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 27
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$13;->call()Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;

    move-result-object v0

    return-object v0
.end method

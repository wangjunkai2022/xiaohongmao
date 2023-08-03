.class Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$5;
.super Ljava/lang/Object;
.source "DownloadDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->insert(Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;

.field final synthetic val$value:Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;


# direct methods
.method constructor <init>(Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$value"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$5;->this$0:Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;

    iput-object p2, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$5;->val$value:Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Long;
    .locals 4
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
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$5;->this$0:Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;

    invoke-static {v1}, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$5;->this$0:Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;

    invoke-static {v1}, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->access$100(Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;)Landroidx/room/EntityInsertionAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$5;->val$value:Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;

    invoke-virtual {v1, v2}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v1

    .line 4
    iget-object v3, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$5;->this$0:Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;

    invoke-static {v3}, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    if-eqz v0, :cond_1

    sget-object v3, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    invoke-interface {v0, v3}, Lio/sentry/v0;->c(Lio/sentry/SpanStatus;)V

    .line 5
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$5;->this$0:Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;

    invoke-static {v2}, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/v0;->h()V

    :cond_2
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_1
    sget-object v2, Lio/sentry/SpanStatus;->INTERNAL_ERROR:Lio/sentry/SpanStatus;

    invoke-interface {v0, v2}, Lio/sentry/v0;->c(Lio/sentry/SpanStatus;)V

    invoke-interface {v0, v1}, Lio/sentry/v0;->s(Ljava/lang/Throwable;)V

    :cond_3
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object v2, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$5;->this$0:Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;

    invoke-static {v2}, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lio/sentry/v0;->h()V

    .line 6
    :cond_4
    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$5;->call()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

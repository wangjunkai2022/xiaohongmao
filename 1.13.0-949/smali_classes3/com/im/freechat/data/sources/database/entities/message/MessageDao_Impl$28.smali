.class Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$28;
.super Ljava/lang/Object;
.source "MessageDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->getOthersUnreadMessageCount(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
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

    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$28;->this$0:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

    iput-object p2, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$28;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-static {}, Lio/sentry/c3;->D()Lio/sentry/v0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "db"

    const-string v3, "com.im.freechat.data.sources.database.entities.message.MessageDao"

    invoke-interface {v0, v2, v3}, Lio/sentry/v0;->H(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/v0;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$28;->this$0:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

    invoke-static {v2}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->access$100(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$28;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_2
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    if-eqz v0, :cond_3

    sget-object v2, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    invoke-interface {v0, v2}, Lio/sentry/v0;->t(Lio/sentry/SpanStatus;)V

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$28;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    if-eqz v0, :cond_4

    .line 8
    :try_start_1
    sget-object v3, Lio/sentry/SpanStatus;->INTERNAL_ERROR:Lio/sentry/SpanStatus;

    invoke-interface {v0, v3}, Lio/sentry/v0;->c(Lio/sentry/SpanStatus;)V

    invoke-interface {v0, v1}, Lio/sentry/v0;->s(Ljava/lang/Throwable;)V

    :cond_4
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lio/sentry/v0;->h()V

    .line 9
    :cond_5
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$28;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 10
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
    invoke-virtual {p0}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$28;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

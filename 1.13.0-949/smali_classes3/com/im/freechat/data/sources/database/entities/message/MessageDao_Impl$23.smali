.class Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$23;
.super Ljava/lang/Object;
.source "MessageDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->setMessageIdUnsafe(JJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.field final synthetic this$0:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

.field final synthetic val$newId:J

.field final synthetic val$oldId:J

.field final synthetic val$sendTime:J


# direct methods
.method constructor <init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;JJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$newId",
            "val$sendTime",
            "val$oldId"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$23;->this$0:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

    iput-wide p2, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$23;->val$newId:J

    iput-wide p4, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$23;->val$sendTime:J

    iput-wide p6, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$23;->val$oldId:J

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
    invoke-virtual {p0}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$23;->call()Lkotlin/Unit;

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

    const-string v2, "com.im.freechat.data.sources.database.entities.message.MessageDao"

    invoke-interface {v0, v1, v2}, Lio/sentry/v0;->H(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/v0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$23;->this$0:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

    invoke-static {v1}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->access$900(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    iget-wide v3, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$23;->val$newId:J

    invoke-interface {v1, v2, v3, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 v2, 0x2

    .line 5
    iget-wide v3, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$23;->val$sendTime:J

    invoke-interface {v1, v2, v3, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 v2, 0x3

    .line 6
    iget-wide v3, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$23;->val$oldId:J

    invoke-interface {v1, v2, v3, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 7
    iget-object v2, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$23;->this$0:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

    invoke-static {v2}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->access$100(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 8
    iget-object v2, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$23;->this$0:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

    invoke-static {v2}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->access$100(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    if-eqz v0, :cond_1

    sget-object v2, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    invoke-interface {v0, v2}, Lio/sentry/v0;->c(Lio/sentry/SpanStatus;)V

    .line 9
    :cond_1
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$23;->this$0:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

    invoke-static {v3}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->access$100(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/v0;->h()V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$23;->this$0:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

    invoke-static {v0}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->access$900(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-object v2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    if-eqz v0, :cond_3

    .line 11
    :try_start_1
    sget-object v3, Lio/sentry/SpanStatus;->INTERNAL_ERROR:Lio/sentry/SpanStatus;

    invoke-interface {v0, v3}, Lio/sentry/v0;->c(Lio/sentry/SpanStatus;)V

    invoke-interface {v0, v2}, Lio/sentry/v0;->s(Ljava/lang/Throwable;)V

    :cond_3
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object v3, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$23;->this$0:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

    invoke-static {v3}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->access$100(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lio/sentry/v0;->h()V

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$23;->this$0:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

    invoke-static {v0}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->access$900(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 13
    throw v2
.end method

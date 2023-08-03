.class public final Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;
.super Lcom/im/freechat/data/sources/database/entities/download/DownloadDao;
.source "DownloadDao_Impl.java"


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfDownloadEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfDownloadEntity:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfRemoveDownload:Landroidx/room/SharedSQLiteStatement;

.field private final __updateAdapterOfDownloadEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "__db"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 3
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$1;-><init>(Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->__insertionAdapterOfDownloadEntity:Landroidx/room/EntityInsertionAdapter;

    .line 4
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$2;-><init>(Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->__deletionAdapterOfDownloadEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 5
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$3;-><init>(Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->__updateAdapterOfDownloadEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 6
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$4;-><init>(Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->__preparedStmtOfRemoveDownload:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method public static synthetic a(Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->lambda$insertOrUpdate$0(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$000(Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static synthetic access$100(Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->__insertionAdapterOfDownloadEntity:Landroidx/room/EntityInsertionAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->__updateAdapterOfDownloadEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->__preparedStmtOfRemoveDownload:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$401(Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/BaseDao;->insertOrUpdate(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getRequiredConverters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$insertOrUpdate$0(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->access$401(Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public delete(Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
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
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 4
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->__deletionAdapterOfDownloadEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v1, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 5
    iget-object p1, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    if-eqz v0, :cond_1

    sget-object p1, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    invoke-interface {v0, p1}, Lio/sentry/v0;->c(Lio/sentry/SpanStatus;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object p1, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/v0;->h()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    if-eqz v0, :cond_3

    .line 6
    :try_start_1
    sget-object v1, Lio/sentry/SpanStatus;->INTERNAL_ERROR:Lio/sentry/SpanStatus;

    invoke-interface {v0, v1}, Lio/sentry/v0;->c(Lio/sentry/SpanStatus;)V

    invoke-interface {v0, p1}, Lio/sentry/v0;->s(Ljava/lang/Throwable;)V

    :cond_3
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lio/sentry/v0;->h()V

    :cond_4
    throw p1
.end method

.method public bridge synthetic delete(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;

    invoke-virtual {p0, p1}, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->delete(Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;)V

    return-void
.end method

.method public getDownload(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "mediaId",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT * FROM download WHERE media_id = ?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 3
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$13;

    invoke-direct {v1, p0, v0}, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$13;-><init>(Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getDownloads(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "mediaIds",
            "continuation"
        }
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
            "Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SELECT * FROM download WHERE media_id IN ("

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 6
    invoke-static {v0, v1}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v2, ")"

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    add-int/2addr v1, v2

    .line 9
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-nez v3, :cond_0

    .line 11
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 14
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v3, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$12;

    invoke-direct {v3, p0, v0}, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$12;-><init>(Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v1, v2, p1, v3, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getDownloads()Lkotlinx/coroutines/flow/i;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM download"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 2
    iget-object v2, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v3, "download"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$11;

    invoke-direct {v4, p0, v0}, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$11;-><init>(Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v2, v1, v3, v4}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/i;

    move-result-object v0

    return-object v0
.end method

.method public varargs getFilesByStatuses([I)Lkotlinx/coroutines/flow/i;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "statuses"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SELECT * FROM download WHERE status IN ("

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    array-length v1, p1

    .line 4
    invoke-static {v0, v1}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v2, ")"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    add-int/2addr v1, v2

    .line 7
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 8
    array-length v1, p1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    if-ge v4, v1, :cond_0

    aget v6, p1, v4

    int-to-long v6, v6

    .line 9
    invoke-virtual {v0, v5, v6, v7}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    add-int/2addr v5, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "download"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$10;

    invoke-direct {v3, p0, v0}, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$10;-><init>(Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {p1, v2, v1, v3}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/i;

    move-result-object p1

    return-object p1
.end method

.method public insert(Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "value",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$5;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$5;-><init>(Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic insert(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "value",
            "continuation"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->insert(Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insert(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "values",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$6;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$6;-><init>(Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insertOrUpdate(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "list",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/download/a;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/download/a;-><init>(Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;Ljava/util/List;)V

    invoke-static {v0, v1, p2}, Landroidx/room/RoomDatabaseKt;->withTransaction(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public removeDownload(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "mediaId",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$9;-><init>(Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;J)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public removeDownloads(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "mediaIds",
            "continuation"
        }
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

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$14;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$14;-><init>(Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public update(Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "value",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$7;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$7;-><init>(Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic update(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "value",
            "continuation"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->update(Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public update(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "values",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$8;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl$8;-><init>(Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

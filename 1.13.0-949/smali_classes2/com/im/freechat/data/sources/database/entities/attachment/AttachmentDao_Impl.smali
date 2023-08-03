.class public final Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;
.super Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;
.source "AttachmentDao_Impl.java"


# instance fields
.field private final __converters:Lcom/im/freechat/data/sources/database/Converters;

.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfAttachmentEntity:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfHttpAttachmentEntityAsAttachmentEntity:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/im/freechat/data/sources/database/entities/attachment/HttpAttachmentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfSetAttachmentIdUnsafe:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfSetAttachmentLocalPath:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdatePreviewUrl:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateRemoteUrl:Landroidx/room/SharedSQLiteStatement;

.field private final __updateAdapterOfAttachmentEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
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
    invoke-direct {p0}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;-><init>()V

    .line 2
    new-instance v0, Lcom/im/freechat/data/sources/database/Converters;

    invoke-direct {v0}, Lcom/im/freechat/data/sources/database/Converters;-><init>()V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;->__converters:Lcom/im/freechat/data/sources/database/Converters;

    .line 3
    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 4
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$1;-><init>(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;->__insertionAdapterOfHttpAttachmentEntityAsAttachmentEntity:Landroidx/room/EntityInsertionAdapter;

    .line 5
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$2;-><init>(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;->__insertionAdapterOfAttachmentEntity:Landroidx/room/EntityInsertionAdapter;

    .line 6
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$3;-><init>(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;->__updateAdapterOfAttachmentEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 7
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$4;-><init>(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;->__preparedStmtOfUpdatePreviewUrl:Landroidx/room/SharedSQLiteStatement;

    .line 8
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$5;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$5;-><init>(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;->__preparedStmtOfUpdateRemoteUrl:Landroidx/room/SharedSQLiteStatement;

    .line 9
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$6;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$6;-><init>(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;->__preparedStmtOfSetAttachmentIdUnsafe:Landroidx/room/SharedSQLiteStatement;

    .line 10
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$7;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$7;-><init>(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;->__preparedStmtOfSetAttachmentLocalPath:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method static synthetic access$000(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;)Lcom/im/freechat/data/sources/database/Converters;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;->__converters:Lcom/im/freechat/data/sources/database/Converters;

    return-object p0
.end method

.method static synthetic access$100(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static synthetic access$200(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;->__insertionAdapterOfHttpAttachmentEntityAsAttachmentEntity:Landroidx/room/EntityInsertionAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;->__insertionAdapterOfAttachmentEntity:Landroidx/room/EntityInsertionAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;->__updateAdapterOfAttachmentEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;->__preparedStmtOfUpdatePreviewUrl:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$600(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;->__preparedStmtOfUpdateRemoteUrl:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$700(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;->__preparedStmtOfSetAttachmentIdUnsafe:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$800(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;->__preparedStmtOfSetAttachmentLocalPath:Landroidx/room/SharedSQLiteStatement;

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


# virtual methods
.method public deleteByMediaIds(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ids",
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

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$19;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$19;-><init>(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAttachmentByMessageId(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "id",
            "continuation"
        }
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

    const-string v0, "SELECT * FROM attachment WHERE parent_message_id = ?"

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
    iget-object p2, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$17;

    invoke-direct {v1, p0, v0}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$17;-><init>(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAttachmentsByIds(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ids",
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
            "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SELECT * FROM attachment WHERE media_id IN ("

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

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

    .line 9
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 12
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v3, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$18;

    invoke-direct {v3, p0, v0}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$18;-><init>(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v1, v2, p1, v3, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insert(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "entity",
            "continuation"
        }
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

    .line 2
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$9;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$9;-><init>(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insert(Lcom/im/freechat/data/sources/database/entities/attachment/HttpAttachmentEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "entity",
            "continuation"
        }
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

    .line 1
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$8;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$8;-><init>(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;Lcom/im/freechat/data/sources/database/entities/attachment/HttpAttachmentEntity;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "entities",
            "continuation"
        }
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

    .line 3
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$10;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$10;-><init>(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insertAll(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "entities",
            "continuation"
        }
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

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$11;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$11;-><init>(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setAttachmentIdUnsafe(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "oldId",
            "newId",
            "continuation"
        }
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

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v7, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$15;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p3

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$15;-><init>(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;JJ)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v7, p5}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setAttachmentLocalPath(JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "id",
            "path",
            "continuation"
        }
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

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$16;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$16;-><init>(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;Ljava/lang/String;J)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p4}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public update(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "entity",
            "continuation"
        }
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

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$12;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$12;-><init>(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updatePreviewUrl(JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "mediaId",
            "url",
            "continuation"
        }
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

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$13;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$13;-><init>(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;Ljava/lang/String;J)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p4}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateRemoteUrl(JLjava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "mediaId",
            "url",
            "size",
            "continuation"
        }
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

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v8, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$14;

    move-object v1, v8

    move-object v2, p0

    move-wide v3, p4

    move-object v5, p3

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl$14;-><init>(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;JLjava/lang/String;J)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v8, p6}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

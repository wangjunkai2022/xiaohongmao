.class public final Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;
.super Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;
.source "FriendStatusDao_Impl.java"


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfFriendStatusEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfFriendStatusEntity:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteByUserId:Landroidx/room/SharedSQLiteStatement;

.field private final __updateAdapterOfFriendStatusEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;",
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
    invoke-direct {p0}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 3
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$1;-><init>(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->__insertionAdapterOfFriendStatusEntity:Landroidx/room/EntityInsertionAdapter;

    .line 4
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$2;-><init>(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->__deletionAdapterOfFriendStatusEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 5
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$3;-><init>(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->__updateAdapterOfFriendStatusEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 6
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$4;-><init>(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->__preparedStmtOfDeleteByUserId:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method private __Status_enumToString(Lcom/im/freechat/shared/entities/chat/Status;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "_value"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    sget-object v0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$15;->$SwitchMap$com$im$freechat$shared$entities$chat$Status:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t convert enum to string, unknown enum value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p1, "NONE"

    return-object p1

    :pswitch_1
    const-string p1, "FRIEND"

    return-object p1

    :pswitch_2
    const-string p1, "REQUEST_REJECTED"

    return-object p1

    :pswitch_3
    const-string p1, "REQUEST_RECEIVED"

    return-object p1

    :pswitch_4
    const-string p1, "REQUEST_SENT"

    return-object p1

    :pswitch_5
    const-string p1, "CURRENT_USER"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private __Status_stringToEnum(Ljava/lang/String;)Lcom/im/freechat/shared/entities/chat/Status;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "_value"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, -0x1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "FRIEND"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_1
    const-string v1, "NONE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_2
    const-string v1, "CURRENT_USER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const-string v1, "REQUEST_SENT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_4
    const-string v1, "REQUEST_REJECTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_5
    const-string v1, "REQUEST_RECEIVED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t convert value to enum, unknown value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :pswitch_0
    sget-object p1, Lcom/im/freechat/shared/entities/chat/Status;->FRIEND:Lcom/im/freechat/shared/entities/chat/Status;

    return-object p1

    .line 4
    :pswitch_1
    sget-object p1, Lcom/im/freechat/shared/entities/chat/Status;->NONE:Lcom/im/freechat/shared/entities/chat/Status;

    return-object p1

    .line 5
    :pswitch_2
    sget-object p1, Lcom/im/freechat/shared/entities/chat/Status;->CURRENT_USER:Lcom/im/freechat/shared/entities/chat/Status;

    return-object p1

    .line 6
    :pswitch_3
    sget-object p1, Lcom/im/freechat/shared/entities/chat/Status;->REQUEST_SENT:Lcom/im/freechat/shared/entities/chat/Status;

    return-object p1

    .line 7
    :pswitch_4
    sget-object p1, Lcom/im/freechat/shared/entities/chat/Status;->REQUEST_REJECTED:Lcom/im/freechat/shared/entities/chat/Status;

    return-object p1

    .line 8
    :pswitch_5
    sget-object p1, Lcom/im/freechat/shared/entities/chat/Status;->REQUEST_RECEIVED:Lcom/im/freechat/shared/entities/chat/Status;

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x597da64f -> :sswitch_5
        -0x4d8e7bb2 -> :sswitch_4
        -0x26705098 -> :sswitch_3
        -0x1c8fbd0f -> :sswitch_2
        0x24a738 -> :sswitch_1
        0x7c18fe9e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic a(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->lambda$insertOrUpdate$0(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$000(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;Lcom/im/freechat/shared/entities/chat/Status;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->__Status_enumToString(Lcom/im/freechat/shared/entities/chat/Status;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static synthetic access$200(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->__insertionAdapterOfFriendStatusEntity:Landroidx/room/EntityInsertionAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->__updateAdapterOfFriendStatusEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->__preparedStmtOfDeleteByUserId:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$500(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;Ljava/lang/String;)Lcom/im/freechat/shared/entities/chat/Status;
    .locals 0

    invoke-direct {p0, p1}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->__Status_stringToEnum(Ljava/lang/String;)Lcom/im/freechat/shared/entities/chat/Status;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$601(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;->deleteIrrelevantChatRequests(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$701(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/BaseDao;->insertOrUpdate(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->lambda$deleteIrrelevantChatRequests$1(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

.method private synthetic lambda$deleteIrrelevantChatRequests$1(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->access$601(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$insertOrUpdate$0(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->access$701(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public delete(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;)V
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

    const-string v2, "com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao"

    invoke-interface {v0, v1, v2}, Lio/sentry/v0;->H(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/v0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 4
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->__deletionAdapterOfFriendStatusEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v1, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 5
    iget-object p1, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    if-eqz v0, :cond_1

    sget-object p1, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    invoke-interface {v0, p1}, Lio/sentry/v0;->c(Lio/sentry/SpanStatus;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object p1, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

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
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

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
    check-cast p1, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;

    invoke-virtual {p0, p1}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->delete(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;)V

    return-void
.end method

.method public deleteByUserId(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "userId",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$9;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$9;-><init>(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;I)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deleteChatRequestsByIds(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "relevantIds",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$14;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$14;-><init>(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deleteIrrelevantChatRequests(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "relevantIds",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/friendstatus/b;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/friendstatus/b;-><init>(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;Ljava/util/List;)V

    invoke-static {v0, v1, p2}, Landroidx/room/RoomDatabaseKt;->withTransaction(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAllRequestsIds(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT target_user_id FROM friend_status"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 2
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v4, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$13;

    invoke-direct {v4, p0, v0}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$13;-><init>(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v3, v1, v2, v4, p1}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAllWithStatus(Ljava/util/List;)Lkotlinx/coroutines/flow/i;
    .locals 4
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
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/im/freechat/shared/entities/chat/Status;",
            ">;)",
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/friendstatus/UserRelationStatus;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SELECT * FROM friend_status LEFT JOIN user ON friend_status.target_user_id = user.user_id WHERE status IN ("

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

    check-cast v3, Lcom/im/freechat/shared/entities/chat/Status;

    if-nez v3, :cond_0

    .line 9
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 10
    :cond_0
    invoke-direct {p0, v3}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->__Status_enumToString(Lcom/im/freechat/shared/entities/chat/Status;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "friend_status"

    const-string v3, "user"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$10;

    invoke-direct {v3, p0, v0}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$10;-><init>(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {p1, v2, v1, v3}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/i;

    move-result-object p1

    return-object p1
.end method

.method public getByUserId(I)Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "targetUserId"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/sentry/c3;->D()Lio/sentry/v0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "db"

    const-string v3, "com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao"

    invoke-interface {v0, v2, v3}, Lio/sentry/v0;->H(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/v0;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "SELECT * FROM friend_status WHERE target_user_id = ? LIMIT 1"

    const/4 v3, 0x1

    .line 2
    invoke-static {v2, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    int-to-long v4, p1

    .line 3
    invoke-virtual {v2, v3, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 4
    iget-object p1, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 5
    iget-object p1, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v3, "target_user_id"

    invoke-static {p1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "invited_time"

    .line 6
    invoke-static {p1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "reason"

    .line 7
    invoke-static {p1, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "status"

    .line 8
    invoke-static {p1, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 9
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 10
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 11
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 12
    invoke-interface {p1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    move-object v12, v1

    goto :goto_2

    .line 13
    :cond_1
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 14
    :goto_2
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->__Status_stringToEnum(Ljava/lang/String;)Lcom/im/freechat/shared/entities/chat/Status;

    move-result-object v13

    .line 15
    new-instance v1, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;-><init>(IJLjava/lang/String;Lcom/im/freechat/shared/entities/chat/Status;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    if-eqz v0, :cond_3

    sget-object p1, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    invoke-interface {v0, p1}, Lio/sentry/v0;->t(Lio/sentry/SpanStatus;)V

    .line 17
    :cond_3
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    if-eqz v0, :cond_4

    .line 18
    :try_start_1
    sget-object v3, Lio/sentry/SpanStatus;->INTERNAL_ERROR:Lio/sentry/SpanStatus;

    invoke-interface {v0, v3}, Lio/sentry/v0;->c(Lio/sentry/SpanStatus;)V

    invoke-interface {v0, v1}, Lio/sentry/v0;->s(Ljava/lang/Throwable;)V

    :cond_4
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lio/sentry/v0;->h()V

    .line 19
    :cond_5
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 20
    throw v1
.end method

.method public getChatRequestByTargetId(I)Lkotlinx/coroutines/flow/i;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "targetUserId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlinx/coroutines/flow/i<",
            "Lcom/im/freechat/data/sources/database/entities/friendstatus/UserRelationStatus;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM friend_status LEFT JOIN user ON friend_status.target_user_id = user.user_id WHERE target_user_id = ? LIMIT 1"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    int-to-long v2, p1

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 3
    iget-object p1, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "friend_status"

    const-string v2, "user"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$12;

    invoke-direct {v2, p0, v0}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$12;-><init>(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {p1, v0, v1, v2}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/i;

    move-result-object p1

    return-object p1
.end method

.method public insert(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$5;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$5;-><init>(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;)V

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
    check-cast p1, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->insert(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;",
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
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$6;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$6;-><init>(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;Ljava/util/List;)V

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
            "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/friendstatus/a;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/friendstatus/a;-><init>(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;Ljava/util/List;)V

    invoke-static {v0, v1, p2}, Landroidx/room/RoomDatabaseKt;->withTransaction(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public listenCountWithStatus(Ljava/util/List;)Lkotlinx/coroutines/flow/i;
    .locals 4
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
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/im/freechat/shared/entities/chat/Status;",
            ">;)",
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SELECT COUNT(target_user_id) FROM friend_status WHERE status IN ("

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

    check-cast v3, Lcom/im/freechat/shared/entities/chat/Status;

    if-nez v3, :cond_0

    .line 9
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 10
    :cond_0
    invoke-direct {p0, v3}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->__Status_enumToString(Lcom/im/freechat/shared/entities/chat/Status;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "friend_status"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$11;

    invoke-direct {v3, p0, v0}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$11;-><init>(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {p1, v2, v1, v3}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/i;

    move-result-object p1

    return-object p1
.end method

.method public update(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$7;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$7;-><init>(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;)V

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
    check-cast p1, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->update(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$8;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$8;-><init>(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateChatRequest(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "request"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/sentry/c3;->D()Lio/sentry/v0;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "db"

    const-string v2, "com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao"

    invoke-interface {v0, v1, v2}, Lio/sentry/v0;->H(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/v0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 3
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->__updateAdapterOfFriendStatusEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v1, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 4
    iget-object p1, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    if-eqz v0, :cond_1

    sget-object p1, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    invoke-interface {v0, p1}, Lio/sentry/v0;->c(Lio/sentry/SpanStatus;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object p1, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

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

    .line 5
    :try_start_1
    sget-object v1, Lio/sentry/SpanStatus;->INTERNAL_ERROR:Lio/sentry/SpanStatus;

    invoke-interface {v0, v1}, Lio/sentry/v0;->c(Lio/sentry/SpanStatus;)V

    invoke-interface {v0, p1}, Lio/sentry/v0;->s(Ljava/lang/Throwable;)V

    :cond_3
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lio/sentry/v0;->h()V

    :cond_4
    throw p1
.end method

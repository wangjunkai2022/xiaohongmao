.class public final Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;
.super Lcom/im/freechat/data/sources/database/entities/contact/UserDao;
.source "UserDao_Impl.java"


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfMemberContactAsUserEntity:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfPartialContactEntityAsUserEntity:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/im/freechat/data/sources/database/entities/contact/PartialContactEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfUserEntity:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfBlockContact:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfRemoveContact:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfSetAvatar:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfSetBio:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfSetNickname:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateOnlineStatus:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateOnlineStatusByUserId:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateUserMask:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateUserName:Landroidx/room/SharedSQLiteStatement;

.field private final __updateAdapterOfMemberContactAsUserEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;",
            ">;"
        }
    .end annotation
.end field

.field private final __updateAdapterOfPartialContactEntityAsUserEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/im/freechat/data/sources/database/entities/contact/PartialContactEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __updateAdapterOfUserEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;",
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
    invoke-direct {p0}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 3
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$1;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__insertionAdapterOfMemberContactAsUserEntity:Landroidx/room/EntityInsertionAdapter;

    .line 4
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$2;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__insertionAdapterOfPartialContactEntityAsUserEntity:Landroidx/room/EntityInsertionAdapter;

    .line 5
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$3;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__insertionAdapterOfUserEntity:Landroidx/room/EntityInsertionAdapter;

    .line 6
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$4;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__updateAdapterOfMemberContactAsUserEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 7
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$5;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$5;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__updateAdapterOfPartialContactEntityAsUserEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 8
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$6;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$6;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__updateAdapterOfUserEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 9
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$7;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$7;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__preparedStmtOfUpdateOnlineStatus:Landroidx/room/SharedSQLiteStatement;

    .line 10
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$8;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$8;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__preparedStmtOfUpdateOnlineStatusByUserId:Landroidx/room/SharedSQLiteStatement;

    .line 11
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$9;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$9;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__preparedStmtOfUpdateUserMask:Landroidx/room/SharedSQLiteStatement;

    .line 12
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$10;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$10;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__preparedStmtOfUpdateUserName:Landroidx/room/SharedSQLiteStatement;

    .line 13
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$11;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$11;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__preparedStmtOfRemoveContact:Landroidx/room/SharedSQLiteStatement;

    .line 14
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$12;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$12;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__preparedStmtOfBlockContact:Landroidx/room/SharedSQLiteStatement;

    .line 15
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$13;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$13;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__preparedStmtOfSetBio:Landroidx/room/SharedSQLiteStatement;

    .line 16
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$14;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$14;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__preparedStmtOfSetAvatar:Landroidx/room/SharedSQLiteStatement;

    .line 17
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$15;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$15;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__preparedStmtOfSetNickname:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method public static synthetic a(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->lambda$insertOrUpdateAll$2(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$000(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static synthetic access$100(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__insertionAdapterOfMemberContactAsUserEntity:Landroidx/room/EntityInsertionAdapter;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__preparedStmtOfUpdateUserName:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__preparedStmtOfRemoveContact:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__preparedStmtOfBlockContact:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__preparedStmtOfSetBio:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__preparedStmtOfSetAvatar:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__preparedStmtOfSetNickname:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$1601(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->insertOrUpdateAll(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1701(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->insertOrUpdate(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1801(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->synchronizeDatabase(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__insertionAdapterOfPartialContactEntityAsUserEntity:Landroidx/room/EntityInsertionAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__insertionAdapterOfUserEntity:Landroidx/room/EntityInsertionAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__updateAdapterOfMemberContactAsUserEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__updateAdapterOfPartialContactEntityAsUserEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__updateAdapterOfUserEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__preparedStmtOfUpdateOnlineStatus:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$800(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__preparedStmtOfUpdateOnlineStatusByUserId:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$900(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__preparedStmtOfUpdateUserMask:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method public static synthetic b(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->lambda$insertOrUpdate$1(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->lambda$synchronizeDatabase$0(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

.method private synthetic lambda$insertOrUpdate$1(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->access$1701(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$insertOrUpdateAll$2(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->access$1601(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$synchronizeDatabase$0(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->access$1801(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public blockContact(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "contactId",
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

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$27;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$27;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;I)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public followContact(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "contactId",
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

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$29;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$29;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;I)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getContact(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
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
            "Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT * FROM user WHERE user_id = ?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    int-to-long v2, p1

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 3
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$36;

    invoke-direct {v2, p0, v0}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$36;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {v1, v0, p1, v2, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getContacts(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "userIds",
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
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SELECT * FROM user WHERE user_id IN ("

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

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_0

    .line 9
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v1, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 12
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v3, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$38;

    invoke-direct {v3, p0, v0}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$38;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v1, v2, p1, v3, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentUser(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT * FROM user WHERE is_current = 1"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 2
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v4, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$35;

    invoke-direct {v4, p0, v0}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$35;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v3, v1, v2, v4, p1}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insert(Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$16;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$16;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insert(Lcom/im/freechat/data/sources/database/entities/contact/PartialContactEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lcom/im/freechat/data/sources/database/entities/contact/PartialContactEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$17;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$17;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Lcom/im/freechat/data/sources/database/entities/contact/PartialContactEntity;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insert(Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$18;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$18;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;)V

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
            "Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/contact/b;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/contact/b;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Ljava/util/List;)V

    invoke-static {v0, v1, p2}, Landroidx/room/RoomDatabaseKt;->withTransaction(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insertOrUpdateAll(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/contact/a;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/contact/a;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Ljava/util/List;)V

    invoke-static {v0, v1, p2}, Landroidx/room/RoomDatabaseKt;->withTransaction(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public listenAllContacts()Lkotlinx/coroutines/flow/i;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM user"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 2
    iget-object v2, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v3, "user"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$34;

    invoke-direct {v4, p0, v0}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$34;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v2, v1, v3, v4}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/i;

    move-result-object v0

    return-object v0
.end method

.method public removeContact(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$26;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$26;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;I)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setAvatar(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "userId",
            "avatarUrl",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$32;

    invoke-direct {v1, p0, p2, p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$32;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Ljava/lang/String;I)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setBio(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "userId",
            "bio",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$31;

    invoke-direct {v1, p0, p2, p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$31;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Ljava/lang/String;I)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setNickname(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "userId",
            "nickname",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$33;

    invoke-direct {v1, p0, p2, p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$33;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Ljava/lang/String;I)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public subscribeContact(I)Lkotlinx/coroutines/flow/i;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlinx/coroutines/flow/i<",
            "Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM user WHERE user_id = ?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    int-to-long v2, p1

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 3
    iget-object p1, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "user"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$37;

    invoke-direct {v2, p0, v0}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$37;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {p1, v0, v1, v2}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/i;

    move-result-object p1

    return-object p1
.end method

.method public synchronizeDatabase(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lcom/im/freechat/data/sources/database/entities/contact/PartialContactEntity;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/contact/c;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/contact/c;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Ljava/util/List;)V

    invoke-static {v0, v1, p2}, Landroidx/room/RoomDatabaseKt;->withTransaction(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public unblockContact(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "contactId",
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

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$28;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$28;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;I)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public unfollowContact(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "contactId",
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

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$30;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$30;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;I)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public update(Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$19;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$19;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public update(Lcom/im/freechat/data/sources/database/entities/contact/PartialContactEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lcom/im/freechat/data/sources/database/entities/contact/PartialContactEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$20;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$20;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Lcom/im/freechat/data/sources/database/entities/contact/PartialContactEntity;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public update(Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$21;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$21;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateOnlineStatus(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "last",
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

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$22;

    invoke-direct {v1, p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$22;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;J)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateOnlineStatusByUserId(ILjava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "userId",
            "lastOnline",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Long;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$23;

    invoke-direct {v1, p0, p2, p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$23;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Ljava/lang/Long;I)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateUserMask(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "userId",
            "userMask",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$24;

    invoke-direct {v1, p0, p2, p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$24;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Ljava/lang/String;I)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateUserName(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "userId",
            "userName",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$25;

    invoke-direct {v1, p0, p2, p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl$25;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;Ljava/lang/String;I)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

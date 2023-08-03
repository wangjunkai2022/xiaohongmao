.class public abstract Lcom/im/freechat/data/sources/database/entities/contact/UserDao;
.super Ljava/lang/Object;
.source "UserDao.kt"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUserDao.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserDao.kt\ncom/im/freechat/data/sources/database/entities/contact/UserDao\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,121:1\n1851#2,2:122\n1851#2,2:124\n1851#2,2:126\n*S KotlinDebug\n*F\n+ 1 UserDao.kt\ncom/im/freechat/data/sources/database/entities/contact/UserDao\n*L\n42#1:122,2\n63#1:124,2\n70#1:126,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0008\'\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u00086\u00107J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0002H\'J\u0013\u0010\u0006\u001a\u00020\u0004H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001d\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ%\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0008H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001d\u0010\u0012\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000e\u001a\u00020\rH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0016\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00022\u0006\u0010\u000e\u001a\u00020\rH\'J\'\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0003H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J#\u0010\u001a\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u0018H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ#\u0010\u001d\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u0018H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001d\u0010\u001bJ\u001b\u0010\u001e\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\rH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001e\u0010\u0013J!\u0010!\u001a\u00020\n2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u0003H\u0097@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008!\u0010\u0017J\u001b\u0010#\u001a\u00020\n2\u0006\u0010\"\u001a\u00020\u0004H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008#\u0010$J\u001b\u0010#\u001a\u00020\n2\u0006\u0010\"\u001a\u00020\u001fH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008#\u0010%J!\u0010&\u001a\u00020\n2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0097@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008&\u0010\u0017J!\u0010#\u001a\u00020\n2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\'0\u0003H\u0097@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008#\u0010\u0017J\u001b\u0010#\u001a\u00020\n2\u0006\u0010\"\u001a\u00020\'H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008#\u0010(J\u001b\u0010)\u001a\u00020\u00082\u0006\u0010\"\u001a\u00020\'H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008)\u0010(J\u001b\u0010*\u001a\u00020\n2\u0006\u0010\"\u001a\u00020\'H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008*\u0010(J\u001b\u0010*\u001a\u00020\n2\u0006\u0010\"\u001a\u00020\u001fH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008*\u0010%J\u001b\u0010*\u001a\u00020\n2\u0006\u0010\"\u001a\u00020\u0004H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008*\u0010$J\u001b\u0010)\u001a\u00020\u00082\u0006\u0010\"\u001a\u00020\u001fH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008)\u0010%J\u001b\u0010)\u001a\u00020\u00082\u0006\u0010\"\u001a\u00020\u0004H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008)\u0010$J\u001b\u0010,\u001a\u00020\n2\u0006\u0010+\u001a\u00020\rH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008,\u0010\u0013J\u001b\u0010-\u001a\u00020\n2\u0006\u0010+\u001a\u00020\rH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008-\u0010\u0013J\u001b\u0010.\u001a\u00020\n2\u0006\u0010+\u001a\u00020\rH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008.\u0010\u0013J\u001b\u0010/\u001a\u00020\n2\u0006\u0010+\u001a\u00020\rH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008/\u0010\u0013J#\u00101\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u00100\u001a\u00020\u0018H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00081\u0010\u001bJ#\u00103\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u00102\u001a\u00020\u0018H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00083\u0010\u001bJ#\u00105\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u00104\u001a\u00020\u0018H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00085\u0010\u001b\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u00068"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/database/entities/contact/UserDao;",
        "",
        "Lkotlinx/coroutines/flow/i;",
        "",
        "Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;",
        "listenAllContacts",
        "getCurrentUser",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "last",
        "",
        "updateOnlineStatus",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "userId",
        "lastOnline",
        "updateOnlineStatusByUserId",
        "(ILjava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getContact",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "subscribeContact",
        "userIds",
        "getContacts",
        "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "userMask",
        "updateUserMask",
        "(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "userName",
        "updateUserName",
        "removeContact",
        "Lcom/im/freechat/data/sources/database/entities/contact/PartialContactEntity;",
        "list",
        "synchronizeDatabase",
        "value",
        "insertOrUpdate",
        "(Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "(Lcom/im/freechat/data/sources/database/entities/contact/PartialContactEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "insertOrUpdateAll",
        "Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;",
        "(Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "insert",
        "update",
        "contactId",
        "blockContact",
        "unblockContact",
        "followContact",
        "unfollowContact",
        "bio",
        "setBio",
        "avatarUrl",
        "setAvatar",
        "nickname",
        "setNickname",
        "<init>",
        "()V",
        "data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic insertOrUpdate$suspendImpl(Lcom/im/freechat/data/sources/database/entities/contact/UserDao;Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$5;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$5;

    iget v1, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$5;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$5;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$5;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$5;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$5;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 19
    iget v2, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$5;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .line 20
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_2
    iget-object p0, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$5;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;

    iget-object p0, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$5;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 22
    iput-object p0, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$5;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$5;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$5;->label:I

    invoke-virtual {p0, p1, v0}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->insert(Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long p2, v4, v6

    if-nez p2, :cond_6

    const/4 p2, 0x0

    .line 23
    iput-object p2, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$5;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$5;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$5;->label:I

    invoke-virtual {p0, p1, v0}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->update(Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    .line 24
    :cond_5
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static synthetic insertOrUpdate$suspendImpl(Lcom/im/freechat/data/sources/database/entities/contact/UserDao;Lcom/im/freechat/data/sources/database/entities/contact/PartialContactEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$2;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$2;

    iget v1, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$2;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$2;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$2;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$2;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 7
    iget v2, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$2;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_2
    iget-object p0, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$2;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lcom/im/freechat/data/sources/database/entities/contact/PartialContactEntity;

    iget-object p0, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$2;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 10
    iput-object p0, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$2;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$2;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$2;->label:I

    invoke-virtual {p0, p1, v0}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->insert(Lcom/im/freechat/data/sources/database/entities/contact/PartialContactEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long p2, v4, v6

    if-nez p2, :cond_6

    const/4 p2, 0x0

    .line 11
    iput-object p2, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$2;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$2;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$2;->label:I

    invoke-virtual {p0, p1, v0}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->update(Lcom/im/freechat/data/sources/database/entities/contact/PartialContactEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    .line 12
    :cond_5
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static synthetic insertOrUpdate$suspendImpl(Lcom/im/freechat/data/sources/database/entities/contact/UserDao;Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$1;

    iget v1, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$1;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$1;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    iget-object p0, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;

    iget-object p0, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$1;->label:I

    invoke-virtual {p0, p1, v0}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->insert(Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long p2, v4, v6

    if-nez p2, :cond_6

    const/4 p2, 0x0

    .line 5
    iput-object p2, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$1;->label:I

    invoke-virtual {p0, p1, v0}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->update(Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    .line 6
    :cond_5
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static synthetic insertOrUpdate$suspendImpl(Lcom/im/freechat/data/sources/database/entities/contact/UserDao;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation build Landroidx/room/Transaction;
    .end annotation

    instance-of v0, p2, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$3;

    iget v1, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$3;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$3;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$3;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 13
    iget v2, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$3;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$3;->L$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/Iterator;

    iget-object p1, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$3;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 14
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 16
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;

    .line 17
    iput-object p1, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$3;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$3;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$3;->label:I

    invoke-virtual {p1, p2, v0}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->insertOrUpdate(Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 18
    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static synthetic insertOrUpdateAll$suspendImpl(Lcom/im/freechat/data/sources/database/entities/contact/UserDao;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation build Landroidx/room/Transaction;
    .end annotation

    instance-of v0, p2, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdateAll$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdateAll$1;

    iget v1, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdateAll$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdateAll$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdateAll$1;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdateAll$1;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdateAll$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdateAll$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdateAll$1;->L$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/Iterator;

    iget-object p1, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdateAll$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;

    .line 5
    iput-object p1, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdateAll$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdateAll$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdateAll$1;->label:I

    invoke-virtual {p1, p2, v0}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->insertOrUpdate(Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 6
    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static synthetic synchronizeDatabase$suspendImpl(Lcom/im/freechat/data/sources/database/entities/contact/UserDao;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation build Landroidx/room/Transaction;
    .end annotation

    instance-of v0, p2, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$synchronizeDatabase$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$synchronizeDatabase$1;

    iget v1, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$synchronizeDatabase$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$synchronizeDatabase$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$synchronizeDatabase$1;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$synchronizeDatabase$1;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$synchronizeDatabase$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$synchronizeDatabase$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$synchronizeDatabase$1;->L$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/Iterator;

    iget-object p1, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$synchronizeDatabase$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/im/freechat/data/sources/database/entities/contact/PartialContactEntity;

    .line 5
    iput-object p1, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$synchronizeDatabase$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$synchronizeDatabase$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$synchronizeDatabase$1;->label:I

    invoke-virtual {p1, p2, v0}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->insertOrUpdate(Lcom/im/freechat/data/sources/database/entities/contact/PartialContactEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 6
    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic updateOnlineStatus$default(Lcom/im/freechat/data/sources/database/entities/contact/UserDao;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->updateOnlineStatus(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateOnlineStatus"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract blockContact(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE user SET user_id = :contactId WHERE user_id=:contactId"
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

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract followContact(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE user SET user_id = :contactId WHERE user_id=:contactId"
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

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract getContact(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM user WHERE user_id = :userId"
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

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract getContacts(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM user WHERE user_id IN (:userIds)"
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

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract getCurrentUser(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM user WHERE is_current = 1"
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

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract insert(Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Insert;
        entity = Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;
        onConflict = 0x5
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

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract insert(Lcom/im/freechat/data/sources/database/entities/contact/PartialContactEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/im/freechat/data/sources/database/entities/contact/PartialContactEntity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Insert;
        entity = Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;
        onConflict = 0x5
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

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract insert(Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Insert;
        entity = Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;
        onConflict = 0x5
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

    .annotation build Lm8/h;
    .end annotation
.end method

.method public insertOrUpdate(Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
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

    .annotation build Lm8/h;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->insertOrUpdate$suspendImpl(Lcom/im/freechat/data/sources/database/entities/contact/UserDao;Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insertOrUpdate(Lcom/im/freechat/data/sources/database/entities/contact/PartialContactEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/im/freechat/data/sources/database/entities/contact/PartialContactEntity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
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

    .annotation build Lm8/h;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->insertOrUpdate$suspendImpl(Lcom/im/freechat/data/sources/database/entities/contact/UserDao;Lcom/im/freechat/data/sources/database/entities/contact/PartialContactEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insertOrUpdate(Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
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

    .annotation build Lm8/h;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->insertOrUpdate$suspendImpl(Lcom/im/freechat/data/sources/database/entities/contact/UserDao;Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insertOrUpdate(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
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

    .annotation build Lm8/h;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->insertOrUpdate$suspendImpl(Lcom/im/freechat/data/sources/database/entities/contact/UserDao;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insertOrUpdateAll(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
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

    .annotation build Lm8/h;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->insertOrUpdateAll$suspendImpl(Lcom/im/freechat/data/sources/database/entities/contact/UserDao;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract listenAllContacts()Lkotlinx/coroutines/flow/i;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM user"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract removeContact(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM user WHERE user_id = :userId"
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

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract setAvatar(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE user SET avatar_url = :avatarUrl WHERE user_id=:userId"
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

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract setBio(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE user SET bio = :bio WHERE user_id=:userId"
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

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract setNickname(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE user SET nickname = :nickname WHERE user_id=:userId"
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

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract subscribeContact(I)Lkotlinx/coroutines/flow/i;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM user WHERE user_id = :userId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlinx/coroutines/flow/i<",
            "Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method

.method public synchronizeDatabase(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
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

    .annotation build Lm8/h;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->synchronizeDatabase$suspendImpl(Lcom/im/freechat/data/sources/database/entities/contact/UserDao;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract unblockContact(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE user SET user_id = :contactId WHERE user_id=:contactId"
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

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract unfollowContact(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE user SET user_id = :contactId WHERE user_id=:contactId"
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

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract update(Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Update;
        entity = Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;
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

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract update(Lcom/im/freechat/data/sources/database/entities/contact/PartialContactEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/im/freechat/data/sources/database/entities/contact/PartialContactEntity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Update;
        entity = Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;
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

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract update(Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Update;
        entity = Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;
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

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract updateOnlineStatus(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE user SET last_online = :last WHERE is_current = 1"
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

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract updateOnlineStatusByUserId(ILjava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p2    # Ljava/lang/Long;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE user SET last_online = :lastOnline WHERE user_id = :userId"
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

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract updateUserMask(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE user SET user_name_mask=:userMask WHERE user_id = :userId"
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

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract updateUserName(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE user SET nickname=:userName WHERE user_id = :userId"
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

    .annotation build Lm8/h;
    .end annotation
.end method

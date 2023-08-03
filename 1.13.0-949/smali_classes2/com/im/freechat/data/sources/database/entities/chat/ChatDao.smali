.class public abstract Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;
.super Lcom/im/freechat/data/sources/database/entities/BaseDao;
.source "ChatDao.kt"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/im/freechat/data/sources/database/entities/BaseDao<",
        "Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatDao.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatDao.kt\ncom/im/freechat/data/sources/database/entities/chat/ChatDao\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,143:1\n1851#2,2:144\n1851#2,2:146\n*S KotlinDebug\n*F\n+ 1 ChatDao.kt\ncom/im/freechat/data/sources/database/entities/chat/ChatDao\n*L\n90#1:144,2\n110#1:146,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\'\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008H\u0010IJ\u0019\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J)\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00032\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0003H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0014\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u000bH\'J\u0018\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u000b2\u0006\u0010\r\u001a\u00020\u0007H\'J\u001d\u0010\u000f\u001a\u0004\u0018\u00010\u00042\u0006\u0010\r\u001a\u00020\u0007H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001f\u0010\u0012\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0007H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0010J#\u0010\u0016\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0013H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J/\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00072\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0007H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0018\u0010\u001d\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u000b2\u0006\u0010\u001a\u001a\u00020\u0007H\'J\u001c\u0010\u001e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u000b2\u0006\u0010\u001a\u001a\u00020\u0007H\'J%\u0010!\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\u00072\u0008\u0010 \u001a\u0004\u0018\u00010\u001fH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008!\u0010\"J#\u0010%\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010$\u001a\u00020#H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008%\u0010&J#\u0010(\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\'\u001a\u00020#H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008(\u0010&J#\u0010*\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010)\u001a\u00020\u001fH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008*\u0010\"J#\u0010,\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010+\u001a\u00020\u001fH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008,\u0010\"J%\u0010.\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\u00072\u0008\u0010-\u001a\u0004\u0018\u00010\u0013H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008.\u0010/J%\u00101\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\u00072\u0008\u00100\u001a\u0004\u0018\u00010\u0013H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00081\u0010/J\u001b\u00102\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\u0007H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00082\u0010\u0010J\u001b\u00103\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\u0007H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00083\u0010\u0010J!\u00105\u001a\u00020\u00152\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0003H\u0097@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00085\u0010\nJ\u0019\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0003H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00086\u0010\u0006J!\u00107\u001a\u00020\u00152\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0003H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00087\u0010\nJ\u001b\u00108\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0007H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00088\u0010\u0010J\'\u00109\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00032\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0003H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00089\u0010\nJ!\u0010<\u001a\u00020\u00152\u000c\u0010;\u001a\u0008\u0012\u0004\u0012\u00020:0\u0003H\u0097@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008<\u0010\nJ\u001b\u0010>\u001a\u00020\u00152\u0006\u0010=\u001a\u00020:H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008>\u0010?J\u001b\u0010@\u001a\u00020\u00132\u0006\u0010=\u001a\u00020:H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008@\u0010?J\u001b\u0010A\u001a\u00020\u00152\u0006\u0010=\u001a\u00020:H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008A\u0010?J#\u0010C\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u0007H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008C\u0010DJ\u001b\u0010E\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\u0007H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008E\u0010\u0010J\u0010\u0010F\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u000bH\'J\u0015\u0010G\u001a\u0004\u0018\u00010\u0013H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008G\u0010\u0006J\u001d\u0010G\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0018\u001a\u00020\u0007H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008G\u0010\u0010\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006J"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;",
        "Lcom/im/freechat/data/sources/database/entities/BaseDao;",
        "Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;",
        "",
        "Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;",
        "getAllChats",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "nonPredefinedTypes",
        "getNonPredefinedChatIds",
        "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/i;",
        "subscribeChats",
        "id",
        "subscribeChat",
        "getChatById",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "type",
        "getServiceChatId",
        "",
        "time",
        "",
        "pinChatWithTime",
        "(IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "chatId",
        "messageId",
        "userId",
        "pinMessage",
        "(ILjava/lang/Long;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "listenSingleChatForUserId",
        "listenCommonGroupsForUserId",
        "",
        "draft",
        "updateDraftMessage",
        "(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "isPublic",
        "updatePublicState",
        "(IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "show",
        "updateShowHistoryToNewMembers",
        "title",
        "updateTitle",
        "avatar",
        "updateAvatar",
        "lastMessageId",
        "updateLastMessageId",
        "(ILjava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "lastSyncMessageId",
        "updateLastSyncMessageId",
        "unpinChat",
        "deleteChatById",
        "ids",
        "deleteChatsNotInList",
        "getAllChatIds",
        "deleteChatsByIds",
        "getChatByIdWithContacts",
        "checkLastMessages",
        "Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;",
        "list",
        "insertOrUpdatePartial",
        "value",
        "insertOrUpdate",
        "(Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "insert",
        "updatePartial",
        "unreadCount",
        "updateUnreadCount",
        "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "increaseUnreadCount",
        "listenTotalUnreadCount",
        "getLastSyncMessageId",
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

    invoke-direct {p0}, Lcom/im/freechat/data/sources/database/entities/BaseDao;-><init>()V

    return-void
.end method

.method static synthetic deleteChatsNotInList$suspendImpl(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation build Landroidx/room/Transaction;
    .end annotation

    instance-of v0, p2, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$deleteChatsNotInList$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$deleteChatsNotInList$1;

    iget v1, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$deleteChatsNotInList$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$deleteChatsNotInList$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$deleteChatsNotInList$1;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$deleteChatsNotInList$1;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$deleteChatsNotInList$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$deleteChatsNotInList$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$deleteChatsNotInList$1;->L$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/Iterator;

    iget-object p1, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$deleteChatsNotInList$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

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
    iget-object p0, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$deleteChatsNotInList$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Ljava/util/List;

    iget-object p0, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$deleteChatsNotInList$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$deleteChatsNotInList$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$deleteChatsNotInList$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$deleteChatsNotInList$1;->label:I

    invoke-virtual {p0, v0}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;->getAllChatIds(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    .line 5
    :cond_4
    :goto_1
    check-cast p2, Ljava/lang/Iterable;

    .line 6
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/collections/CollectionsKt;->minus(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    const/16 p2, 0x384

    .line 7
    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->chunked(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    :cond_5
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 9
    iput-object p1, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$deleteChatsNotInList$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$deleteChatsNotInList$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$deleteChatsNotInList$1;->label:I

    invoke-virtual {p1, p2, v0}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;->deleteChatsByIds(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    .line 10
    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic getNonPredefinedChatIds$default(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;Ljava/util/List;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p4, :cond_1

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Integer;

    const/4 p3, 0x0

    .line 1
    sget-object v0, Lcom/im/freechat/shared/entities/chat/Chat$Type;->SINGLE:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/chat/Chat$Type;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, p3

    .line 2
    sget-object p3, Lcom/im/freechat/shared/entities/chat/Chat$Type;->GROUP:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    invoke-virtual {p3}, Lcom/im/freechat/shared/entities/chat/Chat$Type;->getValue()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p4

    .line 3
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;->getNonPredefinedChatIds(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getNonPredefinedChatIds"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getServiceChatId$default(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    sget-object p1, Lcom/im/freechat/shared/entities/chat/Chat$Type;->SERVICE:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/chat/Chat$Type;->getValue()I

    move-result p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;->getServiceChatId(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getServiceChatId"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic insertOrUpdatePartial$suspendImpl(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation build Landroidx/room/Transaction;
    .end annotation

    instance-of v0, p2, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$insertOrUpdatePartial$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$insertOrUpdatePartial$1;

    iget v1, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$insertOrUpdatePartial$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$insertOrUpdatePartial$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$insertOrUpdatePartial$1;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$insertOrUpdatePartial$1;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$insertOrUpdatePartial$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$insertOrUpdatePartial$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$insertOrUpdatePartial$1;->L$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/Iterator;

    iget-object p1, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$insertOrUpdatePartial$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

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

    check-cast p2, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;

    .line 5
    iput-object p1, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$insertOrUpdatePartial$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$insertOrUpdatePartial$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$insertOrUpdatePartial$1;->label:I

    invoke-virtual {p1, p2, v0}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;->insertOrUpdate(Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 6
    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public abstract checkLastMessages(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT chat_id FROM chat WHERE last_message_id IN (:ids)"
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
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract deleteChatById(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM chat WHERE chat_id = :id"
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

.method public abstract deleteChatsByIds(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM chat WHERE chat_id IN (:ids)"
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

    .annotation build Lm8/h;
    .end annotation
.end method

.method public deleteChatsNotInList(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Ljava/lang/Integer;",
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

    invoke-static {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;->deleteChatsNotInList$suspendImpl(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract getAllChatIds(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT chat_id FROM chat"
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

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract getAllChats(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM chat \n                    LEFT JOIN message ON chat.last_message_id = message.message_id\n                    LEFT JOIN user ON message.sender_id = user.user_id"
    .end annotation

    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract getChatById(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM chat LEFT JOIN message ON chat.last_message_id = message.message_id WHERE chat_id = :id"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract getChatByIdWithContacts(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM chat LEFT JOIN message ON chat.last_message_id = message.message_id WHERE chat_id = :id"
    .end annotation

    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract getLastSyncMessageId(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT last_sync_message_id FROM chat WHERE chat_id = :chatId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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

.method public abstract getLastSyncMessageId(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT MAX(last_sync_message_id) FROM chat"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

.method public abstract getNonPredefinedChatIds(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT chat.chat_id FROM chat WHERE type in (:nonPredefinedTypes)"
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
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract getServiceChatId(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT chat.chat_id FROM chat WHERE type = :type"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract increaseUnreadCount(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE chat SET unread_count = unread_count + 1 WHERE chat_id = :id"
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

.method public abstract insert(Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Insert;
        entity = Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;
        onConflict = 0x5
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;",
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

.method public final insertOrUpdate(Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p1    # Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;
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
            "Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p2, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$insertOrUpdate$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$insertOrUpdate$1;

    iget v1, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$insertOrUpdate$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$insertOrUpdate$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$insertOrUpdate$1;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$insertOrUpdate$1;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$insertOrUpdate$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$insertOrUpdate$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$insertOrUpdate$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;

    iget-object v2, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$insertOrUpdate$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$insertOrUpdate$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$insertOrUpdate$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$insertOrUpdate$1;->label:I

    invoke-virtual {p0, p1, v0}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;->insert(Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long p2, v4, v6

    if-nez p2, :cond_6

    const/4 p2, 0x0

    .line 5
    iput-object p2, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$insertOrUpdate$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$insertOrUpdate$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao$insertOrUpdate$1;->label:I

    invoke-virtual {v2, p1, v0}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;->updatePartial(Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 6
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public insertOrUpdatePartial(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;",
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

    invoke-static {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;->insertOrUpdatePartial$suspendImpl(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract listenCommonGroupsForUserId(I)Lkotlinx/coroutines/flow/i;
    .annotation build Landroidx/room/Query;
        value = "SELECT chat.*, message.*  FROM chat LEFT JOIN message ON chat.last_message_id = message.message_id INNER JOIN member ON chat.chat_id = member.chat_id WHERE user_id = :userId AND type = 2 "
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract listenSingleChatForUserId(I)Lkotlinx/coroutines/flow/i;
    .annotation build Landroidx/room/Query;
        value = "SELECT chat_id FROM chat WHERE chat_id = :userId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract listenTotalUnreadCount()Lkotlinx/coroutines/flow/i;
    .annotation build Landroidx/room/Query;
        value = "SELECT SUM(unread_count) from chat"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract pinChatWithTime(IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE chat SET pinned_time = :time WHERE chat_id = :id"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
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

.method public abstract pinMessage(ILjava/lang/Long;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p2    # Ljava/lang/Long;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE chat SET pinned_message_id = :messageId, pinned_user_id = :userId WHERE chat_id = :chatId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
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

.method public abstract subscribeChat(I)Lkotlinx/coroutines/flow/i;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM chat LEFT JOIN message ON chat.last_message_id = message.message_id WHERE chat_id = :id"
    .end annotation

    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlinx/coroutines/flow/i<",
            "Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract subscribeChats()Lkotlinx/coroutines/flow/i;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM chat \n                    LEFT JOIN message ON chat.last_message_id = message.message_id\n                    LEFT JOIN user ON message.sender_id = user.user_id\n                    LEFT JOIN (SELECT send_time as last_time, message_id as last_time_msg_id FROM message) ON chat.last_message_id = last_time_msg_id"
    .end annotation

    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract unpinChat(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE chat SET pinned_time = NULL WHERE chat_id = :id"
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

.method public abstract updateAvatar(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE chat SET avatar = :avatar WHERE chat_id = :id"
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

.method public abstract updateDraftMessage(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE chat SET draft_message = :draft WHERE chat_id = :id"
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

.method public abstract updateLastMessageId(ILjava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p2    # Ljava/lang/Long;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE chat SET last_message_id = :lastMessageId, last_sync_message_id = :lastMessageId WHERE chat_id = :id"
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

.method public abstract updateLastSyncMessageId(ILjava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p2    # Ljava/lang/Long;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE chat SET last_sync_message_id = :lastSyncMessageId WHERE chat_id = :id"
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

.method public abstract updatePartial(Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Update;
        entity = Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;",
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

.method public abstract updatePublicState(IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE chat SET is_public = :isPublic WHERE chat_id = :id"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
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

.method public abstract updateShowHistoryToNewMembers(IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE chat SET history_new_member = :show WHERE chat_id = :id"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
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

.method public abstract updateTitle(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE chat SET title = :title WHERE chat_id = :id"
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

.method public abstract updateUnreadCount(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE chat SET unread_count = :unreadCount WHERE chat_id = :id"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
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

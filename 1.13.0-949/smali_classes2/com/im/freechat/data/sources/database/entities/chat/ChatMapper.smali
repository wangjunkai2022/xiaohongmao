.class public final Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;
.super Ljava/lang/Object;
.source "ChatMapper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatMapper.kt\ncom/im/freechat/data/sources/database/entities/chat/ChatMapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,62:1\n288#2,2:63\n1179#2,2:65\n1253#2,4:67\n*S KotlinDebug\n*F\n+ 1 ChatMapper.kt\ncom/im/freechat/data/sources/database/entities/chat/ChatMapper\n*L\n31#1:63,2\n32#1:65,2\n32#1:67,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\"\u0010\u0003\u001a\u0004\u0018\u00010\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0014\u0010\u0010\u001a\u00020\u0011*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;",
        "",
        "()V",
        "map",
        "Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;",
        "chatResponse",
        "Lcom/im/freechat/data/openapigen/models/Chat;",
        "currentUserId",
        "",
        "Lcom/im/freechat/shared/entities/chat/Chat;",
        "chatWithContacts",
        "Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;",
        "contactMapper",
        "Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;",
        "messageMapper",
        "Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;",
        "getType",
        "Lcom/im/freechat/shared/entities/chat/Chat$Type;",
        "data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getType(Lcom/im/freechat/data/openapigen/models/Chat;I)Lcom/im/freechat/shared/entities/chat/Chat$Type;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/Chat;->getChannel()Lcom/im/freechat/data/openapigen/models/Channel;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/im/freechat/shared/entities/chat/Chat$Type;->CHANNEL:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/Chat;->getOpponent()Lcom/im/freechat/data/openapigen/models/User;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/User;->getId()I

    move-result p1

    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    sget-object p1, Lcom/im/freechat/shared/entities/chat/Chat$Type;->FAVORITES:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    goto :goto_0

    .line 3
    :cond_2
    sget-object p1, Lcom/im/freechat/shared/entities/chat/Chat$Type;->SINGLE:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final map(Lcom/im/freechat/data/openapigen/models/Chat;I)Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;
    .locals 15
    .param p1    # Lcom/im/freechat/data/openapigen/models/Chat;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "chatResponse"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Chat;->getId()I

    move-result v2

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Chat;->getChannel()Lcom/im/freechat/data/openapigen/models/Channel;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/im/freechat/data/openapigen/models/Channel;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    .line 3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Chat;->getChannel()Lcom/im/freechat/data/openapigen/models/Channel;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/im/freechat/data/openapigen/models/Channel;->getAvatar()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    .line 4
    :goto_1
    invoke-direct/range {p0 .. p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;->getType(Lcom/im/freechat/data/openapigen/models/Chat;I)Lcom/im/freechat/shared/entities/chat/Chat$Type;

    move-result-object v5

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Chat;->getLastReadMessageId()Ljava/lang/Long;

    move-result-object v6

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Chat;->getLastMessage()Lcom/im/freechat/data/openapigen/models/Message;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/im/freechat/data/openapigen/models/Message;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_2

    :cond_2
    move-object v7, v3

    .line 7
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Chat;->getUnreadCount()I

    move-result v8

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Chat;->getPinnedMessage()Lcom/im/freechat/data/openapigen/models/Message;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcom/im/freechat/data/openapigen/models/Message;->getId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_3

    :cond_3
    move-object v9, v3

    .line 9
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/Chat;->getPinnedMessage()Lcom/im/freechat/data/openapigen/models/Message;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/im/freechat/data/openapigen/models/Message;->getSenderId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v10, v1

    goto :goto_4

    :cond_4
    move-object v10, v3

    .line 10
    :goto_4
    new-instance v14, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, v14

    move-object v3, v0

    invoke-direct/range {v1 .. v13}, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;ZZLjava/lang/String;)V

    return-object v14
.end method

.method public final map(Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;)Lcom/im/freechat/shared/entities/chat/Chat;
    .locals 28
    .param p1    # Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    move-object/from16 v2, p2

    const-string v0, "contactMapper"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageMapper"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 11
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;->getChatEntity()Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;

    move-result-object v6

    .line 12
    invoke-virtual {v6}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->getType()Lcom/im/freechat/shared/entities/chat/Chat$Type;

    move-result-object v3

    sget-object v4, Lcom/im/freechat/shared/entities/chat/Chat$Type;->SINGLE:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    if-ne v3, v4, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;->getContacts()Ljava/util/List;

    move-result-object v3

    .line 13
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;

    .line 14
    invoke-virtual {v5}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->isCurrentUser()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    move-object v0, v4

    .line 15
    :cond_2
    check-cast v0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;

    .line 16
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;->getContacts()Ljava/util/List;

    move-result-object v3

    const/16 v4, 0xa

    .line 17
    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-static {v4}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v4

    .line 18
    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 19
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 20
    check-cast v4, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;

    .line 21
    invoke-virtual {v4}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->getUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;->reverseMap(Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;)Lcom/im/freechat/shared/entities/contact/UserModel;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v15, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 22
    :cond_4
    new-instance v27, Lcom/im/freechat/shared/entities/chat/Chat;

    .line 23
    invoke-virtual {v6}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->getId()I

    move-result v8

    if-eqz v0, :cond_6

    .line 24
    invoke-virtual {v0}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->getUserNameMask()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    move-object v9, v3

    goto :goto_3

    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->getNickname()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_7
    invoke-virtual {v6}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :goto_3
    if-eqz v0, :cond_8

    .line 25
    invoke-virtual {v0}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    invoke-virtual {v6}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->getAvatar()Ljava/lang/String;

    move-result-object v0

    :cond_9
    move-object v10, v0

    .line 26
    invoke-virtual {v6}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->getType()Lcom/im/freechat/shared/entities/chat/Chat$Type;

    move-result-object v11

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;->getLastMessageEntity()Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v7, 0x0

    move-object/from16 v0, p3

    move-object v1, v3

    move-object/from16 v2, p2

    move-object v3, v4

    move v4, v5

    move-object v5, v7

    invoke-static/range {v0 .. v5}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;->map$default(Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;Lcom/im/freechat/shared/entities/message/Message;ILjava/lang/Object;)Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v12

    .line 28
    invoke-virtual {v6}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->getUnreadCount()I

    move-result v13

    .line 29
    invoke-virtual {v6}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->getPinnedMessageId()Ljava/lang/Long;

    move-result-object v14

    .line 30
    invoke-virtual {v6}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->getPinnedUserId()Ljava/lang/Integer;

    move-result-object v0

    .line 31
    invoke-virtual {v6}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->getPinnedTime()Ljava/lang/Long;

    move-result-object v16

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;->getContacts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 33
    invoke-virtual {v6}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->isPublic()Z

    move-result v18

    .line 34
    invoke-virtual {v6}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->getShowHistoryToNewMembers()Z

    move-result v19

    .line 35
    invoke-virtual {v6}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->getInvitationLink()Ljava/lang/String;

    move-result-object v20

    .line 36
    invoke-virtual {v6}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->getDraftMessage()Ljava/lang/String;

    move-result-object v21

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;->getUpdateTime()Ljava/lang/Long;

    move-result-object v23

    const/16 v24, 0x0

    const/high16 v25, 0x10000

    const/16 v26, 0x0

    move-object/from16 v7, v27

    move-object v1, v15

    move-object v15, v0

    move-object/from16 v22, v1

    .line 38
    invoke-direct/range {v7 .. v26}, Lcom/im/freechat/shared/entities/chat/Chat;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;Lcom/im/freechat/shared/entities/message/Message;ILjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v27
.end method

.class public final Lcom/im/freechat/data/sources/api/entities/contact/ContactResponseMapper;
.super Ljava/lang/Object;
.source "ContactResponseMapper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContactResponseMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContactResponseMapper.kt\ncom/im/freechat/data/sources/api/entities/contact/ContactResponseMapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,68:1\n1549#2:69\n1620#2,3:70\n1549#2:73\n1620#2,3:74\n1238#2,4:86\n1238#2,4:92\n463#3,7:77\n453#3:84\n399#3:85\n438#3:90\n388#3:91\n*S KotlinDebug\n*F\n+ 1 ContactResponseMapper.kt\ncom/im/freechat/data/sources/api/entities/contact/ContactResponseMapper\n*L\n26#1:69\n26#1:70,3\n43#1:73\n43#1:74,3\n63#1:86,4\n65#1:92,4\n61#1:77,7\n63#1:84\n63#1:85\n65#1:90\n65#1:91\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\nJ\u001a\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000c2\u0006\u0010\u0006\u001a\u00020\u0008J\u001a\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00102\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/api/entities/contact/ContactResponseMapper;",
        "",
        "()V",
        "map",
        "Lcom/im/freechat/shared/entities/PagedList;",
        "Lcom/im/freechat/shared/entities/contact/UserModel;",
        "response",
        "Lcom/im/freechat/data/sources/api/entities/PagedListResponse;",
        "Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;",
        "contactType",
        "Lcom/im/freechat/shared/entities/contact/ContactType;",
        "mapPinnedChats",
        "",
        "",
        "",
        "mapSearch",
        "",
        "contacts",
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


# virtual methods
.method public final map(Lcom/im/freechat/data/sources/api/entities/PagedListResponse;Lcom/im/freechat/shared/entities/contact/ContactType;)Lcom/im/freechat/shared/entities/PagedList;
    .locals 19
    .param p1    # Lcom/im/freechat/data/sources/api/entities/PagedListResponse;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/shared/entities/contact/ContactType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/sources/api/entities/PagedListResponse<",
            "Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;",
            ">;",
            "Lcom/im/freechat/shared/entities/contact/ContactType;",
            ")",
            "Lcom/im/freechat/shared/entities/PagedList<",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "response"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactType"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/im/freechat/shared/entities/PageInfo;

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/api/entities/PagedListResponse;->getPageInfoResponse()Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;->getPage()I

    move-result v3

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/api/entities/PagedListResponse;->getPageInfoResponse()Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;->getPageNum()Ljava/lang/Integer;

    move-result-object v4

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/api/entities/PagedListResponse;->getPageInfoResponse()Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;->getSize()Ljava/lang/Integer;

    move-result-object v5

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/api/entities/PagedListResponse;->getPageInfoResponse()Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;->getTotalPage()I

    move-result v6

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/api/entities/PagedListResponse;->getPageInfoResponse()Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;->getTotalCount()I

    move-result v7

    move-object v2, v0

    .line 7
    invoke-direct/range {v2 .. v7}, Lcom/im/freechat/shared/entities/PageInfo;-><init>(ILjava/lang/Integer;Ljava/lang/Integer;II)V

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/api/entities/PagedListResponse;->getList()Ljava/util/List;

    move-result-object v1

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 11
    check-cast v3, Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;

    .line 12
    new-instance v15, Lcom/im/freechat/shared/entities/contact/UserModel;

    .line 13
    invoke-virtual {v3}, Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;->getNickname()Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-virtual {v3}, Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;->getAvatar()Ljava/lang/String;

    move-result-object v6

    .line 15
    invoke-virtual {v3}, Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;->getUserId()I

    move-result v7

    .line 16
    invoke-virtual {v3}, Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;->getManagementRole()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/im/freechat/shared/entities/chat/ChatMemberKt;->createManagementRole(Ljava/lang/Integer;)Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 17
    invoke-virtual {v3}, Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;->getOnlineInfo()Lcom/im/freechat/data/sources/api/entities/contact/OnlineInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/im/freechat/data/sources/api/entities/contact/OnlineInfo;->getLastOnline()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    goto :goto_1

    :cond_0
    const-wide/16 v13, 0x0

    :goto_1
    const/16 v4, 0x3e8

    int-to-long v11, v4

    mul-long v13, v13, v11

    .line 18
    invoke-virtual {v3}, Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;->getExpansion()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "bio"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    const/16 v16, 0x80

    const/16 v17, 0x0

    move-object v4, v15

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v18, v15

    move-object v15, v3

    .line 19
    invoke-direct/range {v4 .. v17}, Lcom/im/freechat/shared/entities/contact/UserModel;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;Ljava/lang/String;ZZZJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v3, v18

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_2
    new-instance v1, Lcom/im/freechat/shared/entities/PagedList;

    invoke-direct {v1, v0, v2}, Lcom/im/freechat/shared/entities/PagedList;-><init>(Lcom/im/freechat/shared/entities/PageInfo;Ljava/util/List;)V

    return-object v1
.end method

.method public final mapPinnedChats(Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;)Ljava/util/Map;
    .locals 7
    .param p1    # Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;->getExpansion()Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x2

    const-string v3, "pinned_chat_time"

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 5
    invoke-static {v5, v3, v6, v2, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    :cond_2
    if-eqz v6, :cond_1

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 8
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 10
    check-cast v1, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v3, v4, v2, v4}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 13
    :cond_4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 14
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 16
    check-cast v1, Ljava/util/Map$Entry;

    .line 17
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 18
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-static {v1}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_3

    :cond_5
    const-wide/16 v3, 0x0

    :goto_3
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    return-object v0
.end method

.method public final mapSearch(Ljava/util/List;)Ljava/util/List;
    .locals 14
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "contacts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;

    .line 4
    invoke-virtual {v1}, Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;->getNickname()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v1}, Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;->getAvatar()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v1}, Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;->getUserId()I

    move-result v5

    .line 7
    invoke-virtual {v1}, Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;->getManagementRole()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/im/freechat/shared/entities/chat/ChatMemberKt;->createManagementRole(Ljava/lang/Integer;)Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    move-result-object v6

    .line 8
    invoke-virtual {v1}, Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;->getOnlineInfo()Lcom/im/freechat/data/sources/api/entities/contact/OnlineInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/im/freechat/data/sources/api/entities/contact/OnlineInfo;->getLastOnline()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_1

    :cond_0
    const-wide/16 v7, 0x0

    :goto_1
    const/16 v2, 0x3e8

    int-to-long v9, v2

    mul-long v11, v7, v9

    .line 9
    invoke-virtual {v1}, Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;->getExpansion()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "bio"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    move-object v13, v1

    .line 10
    new-instance v1, Lcom/im/freechat/shared/entities/contact/UserModel;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v13}, Lcom/im/freechat/shared/entities/contact/UserModel;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;Ljava/lang/String;ZZZJLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.class public final Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;
.super Ljava/lang/Object;
.source "UserEntityMapper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUserEntityMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserEntityMapper.kt\ncom/im/freechat/data/sources/database/entities/contact/UserEntityMapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,171:1\n1603#2,9:172\n1851#2:181\n1852#2:183\n1612#2:184\n1549#2:185\n1620#2,3:186\n1#3:182\n*S KotlinDebug\n*F\n+ 1 UserEntityMapper.kt\ncom/im/freechat/data/sources/database/entities/contact/UserEntityMapper\n*L\n113#1:172,9\n113#1:181\n113#1:183\n113#1:184\n117#1:185\n117#1:186,3\n113#1:182\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0003\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u0003\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u0003\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u001a\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00122\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0012J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017J\u0016\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u000bJ\u0016\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u000bJ\u000e\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u0008\u001a\u00020\tJ\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fJ\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u00112\u0008\u0010 \u001a\u0004\u0018\u00010\u0007J\u001a\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00122\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0012\u00a8\u0006!"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;",
        "",
        "()V",
        "map",
        "Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;",
        "channel",
        "Lcom/im/freechat/data/openapigen/models/Channel;",
        "Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;",
        "user",
        "Lcom/im/freechat/data/openapigen/models/User;",
        "currentUserId",
        "",
        "Lcom/im/freechat/shared/entities/chat/ChatMember;",
        "chatMemberEntity",
        "Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;",
        "Lcom/im/freechat/data/sources/database/entities/contact/PartialContactEntity;",
        "contact",
        "Lcom/im/freechat/shared/entities/contact/UserModel;",
        "",
        "list",
        "mapLastSeen",
        "",
        "lastSeen",
        "",
        "mapToMemberEntity",
        "Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;",
        "chatId",
        "mapUserModel",
        "reverseMap",
        "Lcom/im/freechat/shared/entities/contact/Sender;",
        "senderEntity",
        "Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;",
        "contactEntity",
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
.method public final map(Lcom/im/freechat/data/openapigen/models/Channel;)Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;
    .locals 10
    .param p1    # Lcom/im/freechat/data/openapigen/models/Channel;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;

    .line 20
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/Channel;->getId()I

    move-result v2

    .line 21
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/Channel;->getName()Ljava/lang/String;

    move-result-object v3

    .line 22
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/Channel;->getAvatar()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v7, 0x7fffffffffffffffL

    const-string v9, ""

    move-object v1, v0

    .line 23
    invoke-direct/range {v1 .. v9}, Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;-><init>(ILjava/lang/String;Ljava/lang/String;IZJLjava/lang/String;)V

    return-object v0
.end method

.method public final map(Lcom/im/freechat/data/openapigen/models/User;I)Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;
    .locals 10
    .param p1    # Lcom/im/freechat/data/openapigen/models/User;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;

    .line 12
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/User;->getId()I

    move-result v2

    .line 13
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/User;->getName()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/User;->getAvatar()Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/User;->getId()I

    move-result v1

    if-ne v1, p2, :cond_0

    const/4 p2, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 v6, 0x0

    .line 16
    :goto_0
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/User;->getLastSeen()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;->mapLastSeen(Ljava/lang/String;)J

    move-result-wide v7

    .line 17
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/User;->getBio()Ljava/lang/String;

    move-result-object v9

    const/4 v5, 0x0

    move-object v1, v0

    .line 18
    invoke-direct/range {v1 .. v9}, Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;-><init>(ILjava/lang/String;Ljava/lang/String;IZJLjava/lang/String;)V

    return-object v0
.end method

.method public final map(Lcom/im/freechat/shared/entities/contact/UserModel;)Lcom/im/freechat/data/sources/database/entities/contact/PartialContactEntity;
    .locals 11
    .param p1    # Lcom/im/freechat/shared/entities/contact/UserModel;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "contact"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/contact/PartialContactEntity;

    .line 2
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getUserId()I

    move-result v2

    .line 3
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getNickname()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getAvatar()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getManagementRole()Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    .line 6
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->isService()Z

    move-result v6

    .line 7
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->isCurrentUser()Z

    move-result v7

    .line 8
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getLastOnline()J

    move-result-wide v8

    .line 9
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getBio()Ljava/lang/String;

    move-result-object v10

    move-object v1, v0

    .line 10
    invoke-direct/range {v1 .. v10}, Lcom/im/freechat/data/sources/database/entities/contact/PartialContactEntity;-><init>(ILjava/lang/String;Ljava/lang/String;IZZJLjava/lang/String;)V

    return-object v0
.end method

.method public final map(Lcom/im/freechat/data/openapigen/models/User;)Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;
    .locals 13
    .param p1    # Lcom/im/freechat/data/openapigen/models/User;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/User;->getId()I

    move-result v2

    .line 29
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/User;->getName()Ljava/lang/String;

    move-result-object v3

    .line 30
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/User;->getAvatar()Ljava/lang/String;

    move-result-object v4

    .line 31
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/User;->getBio()Ljava/lang/String;

    move-result-object v10

    .line 32
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/User;->getLastSeen()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;->mapLastSeen(Ljava/lang/String;)J

    move-result-wide v0

    .line 33
    new-instance p1, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;

    .line 34
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v11, 0x78

    const/4 v12, 0x0

    move-object v1, p1

    .line 35
    invoke-direct/range {v1 .. v12}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/Long;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public final map(Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;)Lcom/im/freechat/shared/entities/chat/ChatMember;
    .locals 3
    .param p1    # Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "chatMemberEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;->getContact()Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;->reverseMap(Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;)Lcom/im/freechat/shared/entities/contact/UserModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;->getRole()Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

    move-result-object v1

    .line 26
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;->getStatus()Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    move-result-object p1

    .line 27
    new-instance v2, Lcom/im/freechat/shared/entities/chat/ChatMember;

    invoke-direct {v2, v0, p1, v1}, Lcom/im/freechat/shared/entities/chat/ChatMember;-><init>(Lcom/im/freechat/shared/entities/contact/UserModel;Lcom/im/freechat/shared/entities/chat/ChatMember$Status;Lcom/im/freechat/shared/entities/chat/ChatMember$Role;)V

    return-object v2
.end method

.method public final map(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/contact/PartialContactEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 38
    check-cast v1, Lcom/im/freechat/shared/entities/contact/UserModel;

    .line 39
    invoke-virtual {p0, v1}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;->map(Lcom/im/freechat/shared/entities/contact/UserModel;)Lcom/im/freechat/data/sources/database/entities/contact/PartialContactEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final mapLastSeen(Ljava/lang/String;)J
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "lastSeen"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "now"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x1

    :goto_0
    return-wide v0
.end method

.method public final mapToMemberEntity(Lcom/im/freechat/data/openapigen/models/Channel;I)Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;
    .locals 3
    .param p1    # Lcom/im/freechat/data/openapigen/models/Channel;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/Channel;->getId()I

    move-result p1

    .line 6
    sget-object v0, Lcom/im/freechat/shared/entities/chat/ChatMember$Status;->Companion:Lcom/im/freechat/shared/entities/chat/ChatMember$Status$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/im/freechat/shared/entities/chat/ChatMember$Status$Companion;->fromInt(I)Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    move-result-object v0

    .line 7
    sget-object v2, Lcom/im/freechat/shared/entities/chat/ChatMember$Role;->Companion:Lcom/im/freechat/shared/entities/chat/ChatMember$Role$Companion;

    invoke-virtual {v2, v1}, Lcom/im/freechat/shared/entities/chat/ChatMember$Role$Companion;->fromInt(I)Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

    move-result-object v1

    .line 8
    new-instance v2, Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;

    invoke-direct {v2, p1, p2, v1, v0}, Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;-><init>(IILcom/im/freechat/shared/entities/chat/ChatMember$Role;Lcom/im/freechat/shared/entities/chat/ChatMember$Status;)V

    return-object v2
.end method

.method public final mapToMemberEntity(Lcom/im/freechat/data/openapigen/models/User;I)Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;
    .locals 3
    .param p1    # Lcom/im/freechat/data/openapigen/models/User;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/User;->getId()I

    move-result p1

    .line 2
    sget-object v0, Lcom/im/freechat/shared/entities/chat/ChatMember$Status;->Companion:Lcom/im/freechat/shared/entities/chat/ChatMember$Status$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/im/freechat/shared/entities/chat/ChatMember$Status$Companion;->fromInt(I)Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    move-result-object v0

    .line 3
    sget-object v2, Lcom/im/freechat/shared/entities/chat/ChatMember$Role;->Companion:Lcom/im/freechat/shared/entities/chat/ChatMember$Role$Companion;

    invoke-virtual {v2, v1}, Lcom/im/freechat/shared/entities/chat/ChatMember$Role$Companion;->fromInt(I)Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;

    invoke-direct {v2, p1, p2, v1, v0}, Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;-><init>(IILcom/im/freechat/shared/entities/chat/ChatMember$Role;Lcom/im/freechat/shared/entities/chat/ChatMember$Status;)V

    return-object v2
.end method

.method public final mapUserModel(Lcom/im/freechat/data/openapigen/models/User;)Lcom/im/freechat/shared/entities/contact/UserModel;
    .locals 16
    .param p1    # Lcom/im/freechat/data/openapigen/models/User;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "user"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/im/freechat/shared/entities/contact/UserModel;

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/User;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/User;->getAvatar()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/User;->getId()I

    move-result v4

    .line 5
    sget-object v5, Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;->NORMAL:Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/User;->getLastSeen()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v15, p0

    invoke-virtual {v15, v6}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;->mapLastSeen(Ljava/lang/String;)J

    move-result-wide v10

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/openapigen/models/User;->getBio()Ljava/lang/String;

    move-result-object v12

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v13, 0x80

    const/4 v14, 0x0

    move-object v1, v0

    .line 8
    invoke-direct/range {v1 .. v14}, Lcom/im/freechat/shared/entities/contact/UserModel;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;Ljava/lang/String;ZZZJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final reverseMap(Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;)Lcom/im/freechat/shared/entities/contact/Sender;
    .locals 7
    .param p1    # Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;->getNickname()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;->getAvatarUrl()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;->getUserId()I

    move-result v4

    .line 15
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;->getManagementRole()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/im/freechat/shared/entities/chat/ChatMemberKt;->createManagementRole(Ljava/lang/Integer;)Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    move-result-object v5

    .line 16
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;->getUserNameMask()Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;->isCurrentUser()Z

    move-result v6

    .line 18
    new-instance p1, Lcom/im/freechat/shared/entities/contact/Sender;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/im/freechat/shared/entities/contact/Sender;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final reverseMap(Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;)Lcom/im/freechat/shared/entities/contact/UserModel;
    .locals 15
    .param p1    # Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    new-instance v14, Lcom/im/freechat/shared/entities/contact/UserModel;

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->getNickname()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->getUserId()I

    move-result v3

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->getManagementRole()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/im/freechat/shared/entities/chat/ChatMemberKt;->createManagementRole(Ljava/lang/Integer;)Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    move-result-object v4

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->getUserNameMask()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->isService()Z

    move-result v6

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->isCurrentUser()Z

    move-result v7

    const/4 v8, 0x0

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->getLastOnline()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto :goto_0

    :cond_0
    const-wide/16 v9, 0x0

    .line 10
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->getBio()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x80

    const/4 v13, 0x0

    move-object v0, v14

    .line 11
    invoke-direct/range {v0 .. v13}, Lcom/im/freechat/shared/entities/contact/UserModel;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;Ljava/lang/String;ZZZJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    return-object v14
.end method

.method public final reverseMap(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 21
    check-cast v1, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;

    .line 22
    invoke-virtual {p0, v1}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;->reverseMap(Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;)Lcom/im/freechat/shared/entities/contact/UserModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 23
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

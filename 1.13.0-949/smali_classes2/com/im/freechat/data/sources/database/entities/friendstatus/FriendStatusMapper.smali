.class public final Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;
.super Ljava/lang/Object;
.source "FriendStatusMapper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J.\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eJ\u001a\u0010\u0003\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;",
        "",
        "()V",
        "map",
        "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;",
        "friendRequest",
        "Lcom/im/freechat/data/openapigen/models/FriendRequest;",
        "target",
        "Lcom/im/freechat/data/openapigen/models/User;",
        "status",
        "Lcom/im/freechat/data/openapigen/models/FriendRequest$Status;",
        "reason",
        "",
        "time",
        "",
        "Lcom/im/freechat/shared/entities/chat/FriendStatus;",
        "userReleationStatus",
        "Lcom/im/freechat/data/sources/database/entities/friendstatus/UserRelationStatus;",
        "userEntityMapper",
        "Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;",
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

.method public static synthetic map$default(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;Lcom/im/freechat/data/openapigen/models/User;Lcom/im/freechat/data/openapigen/models/FriendRequest$Status;Ljava/lang/String;JILjava/lang/Object;)Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const-string p3, ""

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const-wide/16 p4, 0x0

    :cond_1
    move-wide v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;->map(Lcom/im/freechat/data/openapigen/models/User;Lcom/im/freechat/data/openapigen/models/FriendRequest$Status;Ljava/lang/String;J)Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final map(Lcom/im/freechat/data/openapigen/models/FriendRequest;)Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;
    .locals 7
    .param p1    # Lcom/im/freechat/data/openapigen/models/FriendRequest;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "friendRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/FriendRequest;->getUser()Lcom/im/freechat/data/openapigen/models/User;

    move-result-object v2

    .line 2
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/FriendRequest;->getStatus()Lcom/im/freechat/data/openapigen/models/FriendRequest$Status;

    move-result-object v3

    .line 3
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/FriendRequest;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/FriendRequest;->getSentAt()J

    move-result-wide v5

    move-object v1, p0

    .line 5
    invoke-virtual/range {v1 .. v6}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;->map(Lcom/im/freechat/data/openapigen/models/User;Lcom/im/freechat/data/openapigen/models/FriendRequest$Status;Ljava/lang/String;J)Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;

    move-result-object p1

    return-object p1
.end method

.method public final map(Lcom/im/freechat/data/openapigen/models/User;Lcom/im/freechat/data/openapigen/models/FriendRequest$Status;Ljava/lang/String;J)Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;
    .locals 7
    .param p1    # Lcom/im/freechat/data/openapigen/models/User;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/data/openapigen/models/FriendRequest$Status;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;

    .line 7
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/User;->getId()I

    move-result v2

    .line 8
    invoke-static {p2}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapperKt;->toStatus(Lcom/im/freechat/data/openapigen/models/FriendRequest$Status;)Lcom/im/freechat/shared/entities/chat/Status;

    move-result-object v6

    move-object v1, v0

    move-wide v3, p4

    move-object v5, p3

    .line 9
    invoke-direct/range {v1 .. v6}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;-><init>(IJLjava/lang/String;Lcom/im/freechat/shared/entities/chat/Status;)V

    return-object v0
.end method

.method public final map(Lcom/im/freechat/data/sources/database/entities/friendstatus/UserRelationStatus;Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;)Lcom/im/freechat/shared/entities/chat/FriendStatus;
    .locals 8
    .param p1    # Lcom/im/freechat/data/sources/database/entities/friendstatus/UserRelationStatus;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    const-string v0, "userEntityMapper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 10
    :cond_0
    new-instance v7, Lcom/im/freechat/shared/entities/chat/FriendStatus;

    .line 11
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/entities/friendstatus/UserRelationStatus;->getUser()Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;->reverseMap(Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;)Lcom/im/freechat/shared/entities/contact/UserModel;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v0

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/entities/friendstatus/UserRelationStatus;->getFriendStatus()Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->getInvitedTime()J

    move-result-wide v3

    .line 13
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/entities/friendstatus/UserRelationStatus;->getFriendStatus()Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->getReason()Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/entities/friendstatus/UserRelationStatus;->getFriendStatus()Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->getStatus()Lcom/im/freechat/shared/entities/chat/Status;

    move-result-object v6

    move-object v1, v7

    .line 15
    invoke-direct/range {v1 .. v6}, Lcom/im/freechat/shared/entities/chat/FriendStatus;-><init>(Lcom/im/freechat/shared/entities/contact/UserModel;JLjava/lang/String;Lcom/im/freechat/shared/entities/chat/Status;)V

    return-object v7
.end method

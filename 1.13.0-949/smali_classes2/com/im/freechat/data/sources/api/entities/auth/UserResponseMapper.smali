.class public final Lcom/im/freechat/data/sources/api/entities/auth/UserResponseMapper;
.super Ljava/lang/Object;
.source "UserResponseMapper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/api/entities/auth/UserResponseMapper;",
        "",
        "()V",
        "map",
        "Lcom/im/freechat/shared/entities/auth/UserInfo;",
        "response",
        "Lcom/im/freechat/data/sources/api/entities/auth/UserResponse;",
        "phoneNumber",
        "",
        "isMystery",
        "",
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
.method public final map(Lcom/im/freechat/data/sources/api/entities/auth/UserResponse;Ljava/lang/String;Z)Lcom/im/freechat/shared/entities/auth/UserInfo;
    .locals 15
    .param p1    # Lcom/im/freechat/data/sources/api/entities/auth/UserResponse;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "response"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumber"

    move-object/from16 v7, p2

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/im/freechat/shared/entities/auth/UserInfo;

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/api/entities/auth/UserResponse;->getUserId()I

    move-result v2

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/api/entities/auth/UserResponse;->getNickname()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/api/entities/auth/UserResponse;->getToken()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/api/entities/auth/UserResponse;->getImToken()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/api/entities/auth/UserResponse;->getAvatar()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/api/entities/auth/UserResponse;->getRole()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Lcom/im/freechat/shared/entities/chat/ChatMemberKt;->createManagementRole(Ljava/lang/Integer;)Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    move-result-object v8

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/data/sources/api/entities/auth/UserResponse;->getLastSeen()J

    move-result-wide v10

    const/4 v12, 0x0

    const/16 v13, 0x200

    const/4 v14, 0x0

    move-object v1, v0

    move/from16 v9, p3

    .line 9
    invoke-direct/range {v1 .. v14}, Lcom/im/freechat/shared/entities/auth/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;ZJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

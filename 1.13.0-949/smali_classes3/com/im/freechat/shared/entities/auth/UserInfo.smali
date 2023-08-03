.class public final Lcom/im/freechat/shared/entities/auth/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0008\u0086\u0008\u0018\u00002\u00020\u0001B_\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0011J\u0006\u0010 \u001a\u00020!J\t\u0010\"\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010$\u001a\u00020\u0005H\u00c6\u0003J\t\u0010%\u001a\u00020\u0005H\u00c6\u0003J\t\u0010&\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\'\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010)\u001a\u00020\u000bH\u00c6\u0003J\t\u0010*\u001a\u00020\rH\u00c6\u0003J\t\u0010+\u001a\u00020\u000fH\u00c6\u0003Js\u0010,\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010-\u001a\u00020\r2\u0008\u0010.\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010/\u001a\u00020\u0003H\u00d6\u0001J\u0006\u00100\u001a\u00020\rJ\t\u00101\u001a\u00020\u0005H\u00d6\u0001R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0013R\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0013R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0016R\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0013R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0013R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0013R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u00062"
    }
    d2 = {
        "Lcom/im/freechat/shared/entities/auth/UserInfo;",
        "",
        "userId",
        "",
        "nickname",
        "",
        "token",
        "imToken",
        "avatar",
        "phoneNumber",
        "managementRole",
        "Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;",
        "isMystery",
        "",
        "lastOnline",
        "",
        "bio",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;ZJLjava/lang/String;)V",
        "getAvatar",
        "()Ljava/lang/String;",
        "getBio",
        "getImToken",
        "()Z",
        "getLastOnline",
        "()J",
        "getManagementRole",
        "()Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;",
        "getNickname",
        "getPhoneNumber",
        "getToken",
        "getUserId",
        "()I",
        "asContact",
        "Lcom/im/freechat/shared/entities/contact/UserModel;",
        "component1",
        "component10",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "other",
        "hashCode",
        "isSuperUser",
        "toString",
        "shared"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final avatar:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final bio:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final imToken:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final isMystery:Z

.field private final lastOnline:J

.field private final managementRole:Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final nickname:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final phoneNumber:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final token:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final userId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;ZJLjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p7    # Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v0, "nickname"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imToken"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "managementRole"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->userId:I

    .line 3
    iput-object p2, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->nickname:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->token:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->imToken:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->avatar:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->phoneNumber:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->managementRole:Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    .line 9
    iput-boolean p8, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->isMystery:Z

    .line 10
    iput-wide p9, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->lastOnline:J

    .line 11
    iput-object p11, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->bio:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;ZJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 14

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_0

    .line 12
    sget-object v1, Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;->NORMAL:Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    move-object v9, v1

    goto :goto_0

    :cond_0
    move-object/from16 v9, p7

    :goto_0
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move-object v13, v0

    goto :goto_1

    :cond_1
    move-object/from16 v13, p11

    :goto_1
    move-object v2, p0

    move v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v10, p8

    move-wide/from16 v11, p9

    .line 13
    invoke-direct/range {v2 .. v13}, Lcom/im/freechat/shared/entities/auth/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;ZJLjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/im/freechat/shared/entities/auth/UserInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;ZJLjava/lang/String;ILjava/lang/Object;)Lcom/im/freechat/shared/entities/auth/UserInfo;
    .locals 12

    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/im/freechat/shared/entities/auth/UserInfo;->userId:I

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/im/freechat/shared/entities/auth/UserInfo;->nickname:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/im/freechat/shared/entities/auth/UserInfo;->token:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/im/freechat/shared/entities/auth/UserInfo;->imToken:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/im/freechat/shared/entities/auth/UserInfo;->avatar:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/im/freechat/shared/entities/auth/UserInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/im/freechat/shared/entities/auth/UserInfo;->managementRole:Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-boolean v9, v0, Lcom/im/freechat/shared/entities/auth/UserInfo;->isMystery:Z

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-wide v10, v0, Lcom/im/freechat/shared/entities/auth/UserInfo;->lastOnline:J

    goto :goto_8

    :cond_8
    move-wide/from16 v10, p9

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/im/freechat/shared/entities/auth/UserInfo;->bio:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v1, p11

    :goto_9
    move p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move-wide/from16 p9, v10

    move-object/from16 p11, v1

    invoke-virtual/range {p0 .. p11}, Lcom/im/freechat/shared/entities/auth/UserInfo;->copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;ZJLjava/lang/String;)Lcom/im/freechat/shared/entities/auth/UserInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final asContact()Lcom/im/freechat/shared/entities/contact/UserModel;
    .locals 15
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v14, Lcom/im/freechat/shared/entities/contact/UserModel;

    .line 2
    iget-object v1, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->nickname:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->avatar:Ljava/lang/String;

    .line 4
    iget v3, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->userId:I

    .line 5
    iget-object v4, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->managementRole:Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    .line 6
    iget-wide v9, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->lastOnline:J

    .line 7
    iget-object v11, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->bio:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v12, 0x80

    const/4 v13, 0x0

    move-object v0, v14

    .line 8
    invoke-direct/range {v0 .. v13}, Lcom/im/freechat/shared/entities/contact/UserModel;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;Ljava/lang/String;ZZZJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v14
.end method

.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->userId:I

    return v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->bio:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->imToken:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->managementRole:Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    return-object v0
.end method

.method public final component8()Z
    .locals 1

    iget-boolean v0, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->isMystery:Z

    return v0
.end method

.method public final component9()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->lastOnline:J

    return-wide v0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;ZJLjava/lang/String;)Lcom/im/freechat/shared/entities/auth/UserInfo;
    .locals 13
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p7    # Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "nickname"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imToken"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "managementRole"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/im/freechat/shared/entities/auth/UserInfo;

    move-object v1, v0

    move v2, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Lcom/im/freechat/shared/entities/auth/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;ZJLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/im/freechat/shared/entities/auth/UserInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/im/freechat/shared/entities/auth/UserInfo;

    iget v1, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->userId:I

    iget v3, p1, Lcom/im/freechat/shared/entities/auth/UserInfo;->userId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->nickname:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/shared/entities/auth/UserInfo;->nickname:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->token:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/shared/entities/auth/UserInfo;->token:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->imToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/shared/entities/auth/UserInfo;->imToken:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->avatar:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/shared/entities/auth/UserInfo;->avatar:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->phoneNumber:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/shared/entities/auth/UserInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->managementRole:Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    iget-object v3, p1, Lcom/im/freechat/shared/entities/auth/UserInfo;->managementRole:Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->isMystery:Z

    iget-boolean v3, p1, Lcom/im/freechat/shared/entities/auth/UserInfo;->isMystery:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->lastOnline:J

    iget-wide v5, p1, Lcom/im/freechat/shared/entities/auth/UserInfo;->lastOnline:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->bio:Ljava/lang/String;

    iget-object p1, p1, Lcom/im/freechat/shared/entities/auth/UserInfo;->bio:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getAvatar()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public final getBio()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->bio:Ljava/lang/String;

    return-object v0
.end method

.method public final getImToken()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->imToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastOnline()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->lastOnline:J

    return-wide v0
.end method

.method public final getManagementRole()Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->managementRole:Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    return-object v0
.end method

.method public final getNickname()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhoneNumber()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->userId:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->userId:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->nickname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->token:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->imToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->avatar:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->phoneNumber:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->managementRole:Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->isMystery:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->lastOnline:J

    invoke-static {v3, v4}, La5/a;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->bio:Ljava/lang/String;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final isMystery()Z
    .locals 1

    iget-boolean v0, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->isMystery:Z

    return v0
.end method

.method public final isSuperUser()Z
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->managementRole:Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;->isSuperRole()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserInfo(userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nickname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", imToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->imToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", avatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", phoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", managementRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->managementRole:Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isMystery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->isMystery:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lastOnline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->lastOnline:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", bio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/shared/entities/auth/UserInfo;->bio:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

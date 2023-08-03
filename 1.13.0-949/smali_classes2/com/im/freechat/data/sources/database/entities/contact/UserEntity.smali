.class public final Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;
.super Ljava/lang/Object;
.source "UserEntity.kt"


# annotations
.annotation build Landroidx/room/Entity;
    primaryKeys = {
        "user_id"
    }
    tableName = "user"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u001e\u0008\u0087\u0008\u0018\u00002\u00020\u0001B_\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u000fJ\t\u0010\u001c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010!\u001a\u00020\nH\u00c6\u0003J\t\u0010\"\u001a\u00020\nH\u00c6\u0003J\u0010\u0010#\u001a\u0004\u0018\u00010\rH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0015J\u000b\u0010$\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003Jp\u0010%\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001\u00a2\u0006\u0002\u0010&J\u0013\u0010\'\u001a\u00020\n2\u0008\u0010(\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010)\u001a\u00020\u0003H\u00d6\u0001J\t\u0010*\u001a\u00020\u0005H\u00d6\u0001R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011R\u0016\u0010\u000b\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0013R\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0013R\u001a\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u0016\u001a\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0011R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0018R\u0018\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0011\u00a8\u0006+"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;",
        "",
        "userId",
        "",
        "nickname",
        "",
        "avatarUrl",
        "managementRole",
        "userNameMask",
        "isService",
        "",
        "isCurrentUser",
        "lastOnline",
        "",
        "bio",
        "(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/Long;Ljava/lang/String;)V",
        "getAvatarUrl",
        "()Ljava/lang/String;",
        "getBio",
        "()Z",
        "getLastOnline",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getManagementRole",
        "()I",
        "getNickname",
        "getUserId",
        "getUserNameMask",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/Long;Ljava/lang/String;)Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;",
        "equals",
        "other",
        "hashCode",
        "toString",
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


# instance fields
.field private final avatarUrl:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "avatar_url"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final bio:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "bio"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final isCurrentUser:Z
    .annotation build Landroidx/room/ColumnInfo;
        name = "is_current"
    .end annotation
.end field

.field private final isService:Z
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "is_service"
    .end annotation
.end field

.field private final lastOnline:Ljava/lang/Long;
    .annotation build Landroidx/room/ColumnInfo;
        name = "last_online"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final managementRole:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "management_role"
    .end annotation
.end field

.field private final nickname:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "nickname"
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final userId:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "user_id"
    .end annotation
.end field

.field private final userNameMask:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "user_name_mask"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/Long;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Long;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v0, "nickname"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->userId:I

    .line 3
    iput-object p2, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->nickname:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->avatarUrl:Ljava/lang/String;

    .line 5
    iput p4, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->managementRole:I

    .line 6
    iput-object p5, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->userNameMask:Ljava/lang/String;

    .line 7
    iput-boolean p6, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->isService:Z

    .line 8
    iput-boolean p7, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->isCurrentUser:Z

    .line 9
    iput-object p8, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->lastOnline:Ljava/lang/Long;

    .line 10
    iput-object p9, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->bio:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/Long;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    move/from16 v7, p4

    :goto_0
    and-int/lit8 v1, v0, 0x10

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move-object v8, v3

    goto :goto_1

    :cond_1
    move-object/from16 v8, p5

    :goto_1
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    move/from16 v9, p6

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    const/4 v10, 0x0

    goto :goto_3

    :cond_3
    move/from16 v10, p7

    :goto_3
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_4

    move-object v12, v3

    goto :goto_4

    :cond_4
    move-object/from16 v12, p9

    :goto_4
    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v11, p8

    .line 11
    invoke-direct/range {v3 .. v12}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/Long;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->userId:I

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->nickname:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->avatarUrl:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->managementRole:I

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->userNameMask:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-boolean v7, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->isService:Z

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-boolean v8, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->isCurrentUser:Z

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->lastOnline:Ljava/lang/Long;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->bio:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p9

    :goto_8
    move p1, v2

    move-object p2, v3

    move-object p3, v4

    move p4, v5

    move-object p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->copy(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/Long;Ljava/lang/String;)Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->userId:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->managementRole:I

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->userNameMask:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->isService:Z

    return v0
.end method

.method public final component7()Z
    .locals 1

    iget-boolean v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->isCurrentUser:Z

    return v0
.end method

.method public final component8()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->lastOnline:Ljava/lang/Long;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->bio:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/Long;Ljava/lang/String;)Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;
    .locals 11
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Long;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "nickname"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;

    move-object v1, v0

    move v2, p1

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/Long;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;

    iget v1, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->userId:I

    iget v3, p1, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->userId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->nickname:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->nickname:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->avatarUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->avatarUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->managementRole:I

    iget v3, p1, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->managementRole:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->userNameMask:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->userNameMask:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->isService:Z

    iget-boolean v3, p1, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->isService:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->isCurrentUser:Z

    iget-boolean v3, p1, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->isCurrentUser:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->lastOnline:Ljava/lang/Long;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->lastOnline:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->bio:Ljava/lang/String;

    iget-object p1, p1, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->bio:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getAvatarUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getBio()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->bio:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastOnline()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->lastOnline:Ljava/lang/Long;

    return-object v0
.end method

.method public final getManagementRole()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->managementRole:I

    return v0
.end method

.method public final getNickname()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->userId:I

    return v0
.end method

.method public final getUserNameMask()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->userNameMask:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->userId:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->nickname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->avatarUrl:Ljava/lang/String;

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

    iget v1, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->managementRole:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->userNameMask:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->isService:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->isCurrentUser:Z

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->lastOnline:Ljava/lang/Long;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->bio:Ljava/lang/String;

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    return v0
.end method

.method public final isCurrentUser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->isCurrentUser:Z

    return v0
.end method

.method public final isService()Z
    .locals 1

    iget-boolean v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->isService:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserEntity(userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nickname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", avatarUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", managementRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->managementRole:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userNameMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->userNameMask:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->isService:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCurrentUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->isCurrentUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lastOnline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->lastOnline:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->bio:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

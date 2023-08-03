.class public final Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;
.super Ljava/lang/Object;
.source "UserEntity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\n\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u000eR\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\rR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0010R\u0018\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\r\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;",
        "",
        "userId",
        "",
        "nickname",
        "",
        "avatarUrl",
        "managementRole",
        "userNameMask",
        "isCurrentUser",
        "",
        "(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V",
        "getAvatarUrl",
        "()Ljava/lang/String;",
        "()Z",
        "getManagementRole",
        "()I",
        "getNickname",
        "getUserId",
        "getUserNameMask",
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

.field private final isCurrentUser:Z
    .annotation build Landroidx/room/ColumnInfo;
        name = "is_current"
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
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
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

    const-string v0, "nickname"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;->userId:I

    .line 3
    iput-object p2, p0, Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;->nickname:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;->avatarUrl:Ljava/lang/String;

    .line 5
    iput p4, p0, Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;->managementRole:I

    .line 6
    iput-object p5, p0, Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;->userNameMask:Ljava/lang/String;

    .line 7
    iput-boolean p6, p0, Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;->isCurrentUser:Z

    return-void
.end method


# virtual methods
.method public final getAvatarUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getManagementRole()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;->managementRole:I

    return v0
.end method

.method public final getNickname()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;->userId:I

    return v0
.end method

.method public final getUserNameMask()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;->userNameMask:Ljava/lang/String;

    return-object v0
.end method

.method public final isCurrentUser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;->isCurrentUser:Z

    return v0
.end method

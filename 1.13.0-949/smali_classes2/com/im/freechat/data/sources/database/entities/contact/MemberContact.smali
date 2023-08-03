.class public final Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;
.super Ljava/lang/Object;
.source "UserEntity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\r\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\rR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0018\u0010\u000c\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000fR\u0016\u0010\u0008\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0011R\u0016\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u000fR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0015\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;",
        "",
        "userId",
        "",
        "nickname",
        "",
        "avatarUrl",
        "managementRole",
        "isCurrentUser",
        "",
        "lastOnline",
        "",
        "bio",
        "(ILjava/lang/String;Ljava/lang/String;IZJLjava/lang/String;)V",
        "getAvatarUrl",
        "()Ljava/lang/String;",
        "getBio",
        "()Z",
        "getLastOnline",
        "()J",
        "getManagementRole",
        "()I",
        "getNickname",
        "getUserId",
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

.field private final lastOnline:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "last_online"
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


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IZJLjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v0, "nickname"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;->userId:I

    .line 3
    iput-object p2, p0, Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;->nickname:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;->avatarUrl:Ljava/lang/String;

    .line 5
    iput p4, p0, Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;->managementRole:I

    .line 6
    iput-boolean p5, p0, Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;->isCurrentUser:Z

    .line 7
    iput-wide p6, p0, Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;->lastOnline:J

    .line 8
    iput-object p8, p0, Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;->bio:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAvatarUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getBio()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;->bio:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastOnline()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;->lastOnline:J

    return-wide v0
.end method

.method public final getManagementRole()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;->managementRole:I

    return v0
.end method

.method public final getNickname()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;->userId:I

    return v0
.end method

.method public final isCurrentUser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;->isCurrentUser:Z

    return v0
.end method

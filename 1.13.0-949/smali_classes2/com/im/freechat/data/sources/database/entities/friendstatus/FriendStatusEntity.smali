.class public final Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;
.super Ljava/lang/Object;
.source "FriendStatusEntity.kt"


# annotations
.annotation build Landroidx/room/Entity;
    foreignKeys = {
        .subannotation Landroidx/room/ForeignKey;
            childColumns = {
                "target_user_id"
            }
            entity = Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;
            parentColumns = {
                "user_id"
            }
        .end subannotation
    }
    primaryKeys = {
        "target_user_id"
    }
    tableName = "friend_status"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\tH\u00c6\u0003J3\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001b\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u0007H\u00d6\u0001R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0008\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;",
        "",
        "userId",
        "",
        "invitedTime",
        "",
        "reason",
        "",
        "status",
        "Lcom/im/freechat/shared/entities/chat/Status;",
        "(IJLjava/lang/String;Lcom/im/freechat/shared/entities/chat/Status;)V",
        "getInvitedTime",
        "()J",
        "getReason",
        "()Ljava/lang/String;",
        "getStatus",
        "()Lcom/im/freechat/shared/entities/chat/Status;",
        "getUserId",
        "()I",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
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
.field private final invitedTime:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "invited_time"
    .end annotation
.end field

.field private final reason:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "reason"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final status:Lcom/im/freechat/shared/entities/chat/Status;
    .annotation build Landroidx/room/ColumnInfo;
        name = "status"
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final userId:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "target_user_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>(IJLjava/lang/String;Lcom/im/freechat/shared/entities/chat/Status;)V
    .locals 1
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Lcom/im/freechat/shared/entities/chat/Status;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "status"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->userId:I

    .line 3
    iput-wide p2, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->invitedTime:J

    .line 4
    iput-object p4, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->reason:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->status:Lcom/im/freechat/shared/entities/chat/Status;

    return-void
.end method

.method public synthetic constructor <init>(IJLjava/lang/String;Lcom/im/freechat/shared/entities/chat/Status;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    .line 6
    sget-object p5, Lcom/im/freechat/shared/entities/chat/Status;->NONE:Lcom/im/freechat/shared/entities/chat/Status;

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;-><init>(IJLjava/lang/String;Lcom/im/freechat/shared/entities/chat/Status;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;IJLjava/lang/String;Lcom/im/freechat/shared/entities/chat/Status;ILjava/lang/Object;)Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->userId:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-wide p2, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->invitedTime:J

    :cond_1
    move-wide v0, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p4, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->reason:Ljava/lang/String;

    :cond_2
    move-object p7, p4

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p5, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->status:Lcom/im/freechat/shared/entities/chat/Status;

    :cond_3
    move-object v2, p5

    move-object p2, p0

    move p3, p1

    move-wide p4, v0

    move-object p6, p7

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->copy(IJLjava/lang/String;Lcom/im/freechat/shared/entities/chat/Status;)Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->userId:I

    return v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->invitedTime:J

    return-wide v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Lcom/im/freechat/shared/entities/chat/Status;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->status:Lcom/im/freechat/shared/entities/chat/Status;

    return-object v0
.end method

.method public final copy(IJLjava/lang/String;Lcom/im/freechat/shared/entities/chat/Status;)Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;
    .locals 7
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Lcom/im/freechat/shared/entities/chat/Status;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "status"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;

    move-object v1, v0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;-><init>(IJLjava/lang/String;Lcom/im/freechat/shared/entities/chat/Status;)V

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
    instance-of v1, p1, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;

    iget v1, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->userId:I

    iget v3, p1, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->userId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->invitedTime:J

    iget-wide v5, p1, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->invitedTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->reason:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->reason:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->status:Lcom/im/freechat/shared/entities/chat/Status;

    iget-object p1, p1, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->status:Lcom/im/freechat/shared/entities/chat/Status;

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getInvitedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->invitedTime:J

    return-wide v0
.end method

.method public final getReason()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Lcom/im/freechat/shared/entities/chat/Status;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->status:Lcom/im/freechat/shared/entities/chat/Status;

    return-object v0
.end method

.method public final getUserId()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->userId:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->userId:I

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->invitedTime:J

    invoke-static {v1, v2}, La5/a;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->reason:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->status:Lcom/im/freechat/shared/entities/chat/Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FriendStatusEntity(userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", invitedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->invitedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->status:Lcom/im/freechat/shared/entities/chat/Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

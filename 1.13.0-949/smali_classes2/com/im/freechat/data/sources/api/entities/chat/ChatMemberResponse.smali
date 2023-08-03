.class public final Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;
.super Ljava/lang/Object;
.source "ChatResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0014\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001BA\u0012\n\u0008\u0001\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\nJ\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000eJJ\u0010\u0019\u001a\u00020\u00002\n\u0008\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0003\u0010\u0008\u001a\u0004\u0018\u00010\u00072\n\u0008\u0003\u0010\t\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001\u00a2\u0006\u0002\u0010\u001aJ\u0013\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u0007H\u00d6\u0001J\t\u0010\u001f\u001a\u00020\u0003H\u00d6\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0015\u0010\t\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\n\n\u0002\u0010\u000f\u001a\u0004\u0008\r\u0010\u000eR\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\n\n\u0002\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u000eR\u0015\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\n\n\u0002\u0010\u000f\u001a\u0004\u0008\u0011\u0010\u000eR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006 "
    }
    d2 = {
        "Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;",
        "",
        "userId",
        "",
        "expansion",
        "Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;",
        "role",
        "",
        "status",
        "managementRole",
        "(Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V",
        "getExpansion",
        "()Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;",
        "getManagementRole",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getRole",
        "getStatus",
        "getUserId",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "(Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;",
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
.field private final expansion:Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final managementRole:Ljava/lang/Integer;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final role:Ljava/lang/Integer;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final status:Ljava/lang/Integer;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final userId:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "unique_name"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "expansion"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "role"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "status"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "management_role"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->userId:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->expansion:Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->role:Ljava/lang/Integer;

    .line 5
    iput-object p4, p0, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->status:Ljava/lang/Integer;

    .line 6
    iput-object p5, p0, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->managementRole:Ljava/lang/Integer;

    return-void
.end method

.method public static synthetic copy$default(Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->userId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->expansion:Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->role:Ljava/lang/Integer;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->status:Ljava/lang/Integer;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->managementRole:Ljava/lang/Integer;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->copy(Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->expansion:Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;

    return-object v0
.end method

.method public final component3()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->role:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component4()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->status:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component5()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->managementRole:Ljava/lang/Integer;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "unique_name"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "expansion"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "role"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "status"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "management_role"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    new-instance v6, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;-><init>(Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v6
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
    instance-of v1, p1, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->userId:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->userId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->expansion:Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;

    iget-object v3, p1, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->expansion:Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->role:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->role:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->status:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->status:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->managementRole:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->managementRole:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getExpansion()Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->expansion:Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;

    return-object v0
.end method

.method public final getManagementRole()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->managementRole:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getRole()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->role:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->status:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->userId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->expansion:Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->role:Ljava/lang/Integer;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->status:Ljava/lang/Integer;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->managementRole:Ljava/lang/Integer;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChatMemberResponse(userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expansion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->expansion:Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", role="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->role:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->status:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", managementRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;->managementRole:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

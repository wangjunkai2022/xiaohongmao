.class public final Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;
.super Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendMsg;
.source "LegendWinMsg.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u0012J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0005H\u00c6\u0003J1\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u0005H\u00d6\u0001R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\nR\u0016\u0010\u0007\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000e\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendMsg;",
        "anchorId",
        "",
        "anchorNickname",
        "",
        "userId",
        "userNickname",
        "(ILjava/lang/String;ILjava/lang/String;)V",
        "getAnchorId",
        "()I",
        "setAnchorId",
        "(I)V",
        "getAnchorNickname",
        "()Ljava/lang/String;",
        "getUserId",
        "getUserNickname",
        "asAnchorUserInfo",
        "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;",
        "asUserInfo",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "app_pron_playerRelease"
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
.field private anchorId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "anchor_id"
    .end annotation
.end field

.field private final anchorNickname:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "anchor_nickname"
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final userId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_id"
    .end annotation
.end field

.field private final userNickname:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_nickname"
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "anchorNickname"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userNickname"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendMsg;-><init>()V

    .line 2
    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->anchorId:I

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->anchorNickname:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->userId:I

    .line 5
    iput-object p4, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->userNickname:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;ILjava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->anchorId:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->anchorNickname:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->userId:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->userNickname:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->copy(ILjava/lang/String;ILjava/lang/String;)Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final asAnchorUserInfo()Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;-><init>()V

    .line 2
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->anchorId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->setId(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->anchorNickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->setNickname(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/data/bean/MysterableBean;->getIsMystery()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/MysterableBean;->setIsMystery(I)V

    return-object v0
.end method

.method public final asUserInfo()Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;-><init>()V

    .line 2
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->userId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->setId(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->userNickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->setNickname(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/data/bean/MysterableBean;->getIsMystery()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/MysterableBean;->setIsMystery(I)V

    return-object v0
.end method

.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->anchorId:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->anchorNickname:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->userId:I

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->userNickname:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;ILjava/lang/String;)Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "anchorNickname"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userNickname"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;-><init>(ILjava/lang/String;ILjava/lang/String;)V

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
    instance-of v1, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->anchorId:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->anchorId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->anchorNickname:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->anchorNickname:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->userId:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->userId:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->userNickname:Ljava/lang/String;

    iget-object p1, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->userNickname:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAnchorId()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->anchorId:I

    return v0
.end method

.method public final getAnchorNickname()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->anchorNickname:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->userId:I

    return v0
.end method

.method public final getUserNickname()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->userNickname:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->anchorId:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->anchorNickname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->userId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->userNickname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setAnchorId(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->anchorId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LegendWinMsg(anchorId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->anchorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", anchorNickname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->anchorNickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userNickname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->userNickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

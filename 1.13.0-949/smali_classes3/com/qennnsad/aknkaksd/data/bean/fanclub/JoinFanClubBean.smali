.class public final Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;
.super Ljava/lang/Object;
.source "JoinFanClubBean.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;",
        "",
        "chips",
        "",
        "info",
        "Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;",
        "(ILcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;)V",
        "getChips",
        "()I",
        "getInfo",
        "()Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
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
.field private final chips:I

.field private final info:Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;)V
    .locals 1
    .param p2    # Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;->chips:I

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;->info:Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;

    return-void
.end method

.method public static synthetic copy$default(Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;ILcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;ILjava/lang/Object;)Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;->chips:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;->info:Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;->copy(ILcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;)Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;->chips:I

    return v0
.end method

.method public final component2()Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;->info:Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;

    return-object v0
.end method

.method public final copy(ILcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;)Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;
    .locals 1
    .param p2    # Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;

    invoke-direct {v0, p1, p2}, Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;-><init>(ILcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;)V

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
    instance-of v1, p1, Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;->chips:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;->chips:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;->info:Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;

    iget-object p1, p1, Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;->info:Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getChips()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;->chips:I

    return v0
.end method

.method public final getInfo()Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;->info:Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;->chips:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;->info:Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JoinFanClubBean(chips="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;->chips:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;->info:Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

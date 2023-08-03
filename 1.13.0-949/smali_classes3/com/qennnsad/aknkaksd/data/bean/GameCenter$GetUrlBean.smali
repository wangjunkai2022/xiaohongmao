.class public final Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;
.super Ljava/lang/Object;
.source "GameCenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/data/bean/GameCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetUrlBean"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0007H\u00c6\u0003J)\u0010\u0012\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0007H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;",
        "",
        "url",
        "",
        "target",
        "Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;",
        "hideNavBar",
        "",
        "(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;I)V",
        "getHideNavBar",
        "()I",
        "getTarget",
        "()Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;",
        "getUrl",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
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
.field private final hideNavBar:I

.field private final target:Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final url:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;->target:Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;

    iput p3, p0, Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;->hideNavBar:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;IILjava/lang/Object;)Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;->url:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;->target:Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;->hideNavBar:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;->copy(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;I)Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;->target:Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;->hideNavBar:I

    return v0
.end method

.method public final copy(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;I)Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;

    invoke-direct {v0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;-><init>(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;I)V

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
    instance-of v1, p1, Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;->target:Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;->target:Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;->hideNavBar:I

    iget p1, p1, Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;->hideNavBar:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getHideNavBar()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;->hideNavBar:I

    return v0
.end method

.method public final getTarget()Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;->target:Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;->target:Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;->hideNavBar:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetUrlBean(url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;->target:Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hideNavBar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;->hideNavBar:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

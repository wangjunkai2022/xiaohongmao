.class public final Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;
.super Ljava/lang/Object;
.source "MessageEntitiesItemsInner.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B)\u0012\n\u0008\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J-\u0010\u0012\u001a\u00020\u00002\n\u0008\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;",
        "",
        "color",
        "Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerColor;",
        "bold",
        "Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerBold;",
        "url",
        "Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl;",
        "(Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerColor;Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerBold;Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl;)V",
        "getBold",
        "()Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerBold;",
        "getColor",
        "()Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerColor;",
        "getUrl",
        "()Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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


# instance fields
.field private final bold:Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerBold;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final color:Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerColor;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final url:Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;-><init>(Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerColor;Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerBold;Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerColor;Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerBold;Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl;)V
    .locals 0
    .param p1    # Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerColor;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "color"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerBold;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "bold"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "url"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;->color:Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerColor;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;->bold:Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerBold;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;->url:Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerColor;Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerBold;Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 5
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;-><init>(Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerColor;Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerBold;Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerColor;Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerBold;Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl;ILjava/lang/Object;)Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;->color:Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerColor;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;->bold:Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerBold;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;->url:Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;->copy(Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerColor;Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerBold;Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl;)Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerColor;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;->color:Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerColor;

    return-object v0
.end method

.method public final component2()Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerBold;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;->bold:Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerBold;

    return-object v0
.end method

.method public final component3()Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;->url:Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl;

    return-object v0
.end method

.method public final copy(Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerColor;Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerBold;Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl;)Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;
    .locals 1
    .param p1    # Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerColor;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "color"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerBold;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "bold"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "url"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;

    invoke-direct {v0, p1, p2, p3}, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;-><init>(Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerColor;Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerBold;Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl;)V

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
    instance-of v1, p1, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;->color:Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerColor;

    iget-object v3, p1, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;->color:Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerColor;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;->bold:Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerBold;

    iget-object v3, p1, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;->bold:Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerBold;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;->url:Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl;

    iget-object p1, p1, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;->url:Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getBold()Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerBold;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;->bold:Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerBold;

    return-object v0
.end method

.method public final getColor()Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerColor;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;->color:Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerColor;

    return-object v0
.end method

.method public final getUrl()Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;->url:Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;->color:Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerColor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerColor;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;->bold:Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerBold;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerBold;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;->url:Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageEntitiesItemsInner(color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;->color:Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerColor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;->bold:Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerBold;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;->url:Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

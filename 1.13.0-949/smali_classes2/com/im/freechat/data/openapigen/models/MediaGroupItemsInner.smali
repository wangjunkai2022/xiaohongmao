.class public final Lcom/im/freechat/data/openapigen/models/MediaGroupItemsInner;
.super Ljava/lang/Object;
.source "MediaGroupItemsInner.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\n\u0008\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u000c\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J!\u0010\r\u001a\u00020\u00002\n\u0008\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/im/freechat/data/openapigen/models/MediaGroupItemsInner;",
        "",
        "photo",
        "Lcom/im/freechat/data/openapigen/models/Photo;",
        "video",
        "Lcom/im/freechat/data/openapigen/models/Video;",
        "(Lcom/im/freechat/data/openapigen/models/Photo;Lcom/im/freechat/data/openapigen/models/Video;)V",
        "getPhoto",
        "()Lcom/im/freechat/data/openapigen/models/Photo;",
        "getVideo",
        "()Lcom/im/freechat/data/openapigen/models/Video;",
        "component1",
        "component2",
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
.field private final photo:Lcom/im/freechat/data/openapigen/models/Photo;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final video:Lcom/im/freechat/data/openapigen/models/Video;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/im/freechat/data/openapigen/models/MediaGroupItemsInner;-><init>(Lcom/im/freechat/data/openapigen/models/Photo;Lcom/im/freechat/data/openapigen/models/Video;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/im/freechat/data/openapigen/models/Photo;Lcom/im/freechat/data/openapigen/models/Video;)V
    .locals 0
    .param p1    # Lcom/im/freechat/data/openapigen/models/Photo;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "photo"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/data/openapigen/models/Video;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "video"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/data/openapigen/models/MediaGroupItemsInner;->photo:Lcom/im/freechat/data/openapigen/models/Photo;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/data/openapigen/models/MediaGroupItemsInner;->video:Lcom/im/freechat/data/openapigen/models/Video;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/im/freechat/data/openapigen/models/Photo;Lcom/im/freechat/data/openapigen/models/Video;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 4
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/im/freechat/data/openapigen/models/MediaGroupItemsInner;-><init>(Lcom/im/freechat/data/openapigen/models/Photo;Lcom/im/freechat/data/openapigen/models/Video;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/im/freechat/data/openapigen/models/MediaGroupItemsInner;Lcom/im/freechat/data/openapigen/models/Photo;Lcom/im/freechat/data/openapigen/models/Video;ILjava/lang/Object;)Lcom/im/freechat/data/openapigen/models/MediaGroupItemsInner;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/im/freechat/data/openapigen/models/MediaGroupItemsInner;->photo:Lcom/im/freechat/data/openapigen/models/Photo;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/im/freechat/data/openapigen/models/MediaGroupItemsInner;->video:Lcom/im/freechat/data/openapigen/models/Video;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/data/openapigen/models/MediaGroupItemsInner;->copy(Lcom/im/freechat/data/openapigen/models/Photo;Lcom/im/freechat/data/openapigen/models/Video;)Lcom/im/freechat/data/openapigen/models/MediaGroupItemsInner;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/im/freechat/data/openapigen/models/Photo;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/MediaGroupItemsInner;->photo:Lcom/im/freechat/data/openapigen/models/Photo;

    return-object v0
.end method

.method public final component2()Lcom/im/freechat/data/openapigen/models/Video;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/MediaGroupItemsInner;->video:Lcom/im/freechat/data/openapigen/models/Video;

    return-object v0
.end method

.method public final copy(Lcom/im/freechat/data/openapigen/models/Photo;Lcom/im/freechat/data/openapigen/models/Video;)Lcom/im/freechat/data/openapigen/models/MediaGroupItemsInner;
    .locals 1
    .param p1    # Lcom/im/freechat/data/openapigen/models/Photo;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "photo"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/data/openapigen/models/Video;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "video"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/im/freechat/data/openapigen/models/MediaGroupItemsInner;

    invoke-direct {v0, p1, p2}, Lcom/im/freechat/data/openapigen/models/MediaGroupItemsInner;-><init>(Lcom/im/freechat/data/openapigen/models/Photo;Lcom/im/freechat/data/openapigen/models/Video;)V

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
    instance-of v1, p1, Lcom/im/freechat/data/openapigen/models/MediaGroupItemsInner;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/im/freechat/data/openapigen/models/MediaGroupItemsInner;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/MediaGroupItemsInner;->photo:Lcom/im/freechat/data/openapigen/models/Photo;

    iget-object v3, p1, Lcom/im/freechat/data/openapigen/models/MediaGroupItemsInner;->photo:Lcom/im/freechat/data/openapigen/models/Photo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/MediaGroupItemsInner;->video:Lcom/im/freechat/data/openapigen/models/Video;

    iget-object p1, p1, Lcom/im/freechat/data/openapigen/models/MediaGroupItemsInner;->video:Lcom/im/freechat/data/openapigen/models/Video;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getPhoto()Lcom/im/freechat/data/openapigen/models/Photo;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/MediaGroupItemsInner;->photo:Lcom/im/freechat/data/openapigen/models/Photo;

    return-object v0
.end method

.method public final getVideo()Lcom/im/freechat/data/openapigen/models/Video;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/MediaGroupItemsInner;->video:Lcom/im/freechat/data/openapigen/models/Video;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/MediaGroupItemsInner;->photo:Lcom/im/freechat/data/openapigen/models/Photo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/im/freechat/data/openapigen/models/Photo;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/im/freechat/data/openapigen/models/MediaGroupItemsInner;->video:Lcom/im/freechat/data/openapigen/models/Video;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/im/freechat/data/openapigen/models/Video;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaGroupItemsInner(photo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/MediaGroupItemsInner;->photo:Lcom/im/freechat/data/openapigen/models/Photo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", video="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/MediaGroupItemsInner;->video:Lcom/im/freechat/data/openapigen/models/Video;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/giphy/sdk/ui/views/m$e;
.super Lcom/giphy/sdk/ui/views/m;
.source "GPHVideoPlayer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/giphy/sdk/ui/views/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002H\u00c6\u0001J\t\u0010\u0007\u001a\u00020\u0006H\u00d6\u0001J\t\u0010\t\u001a\u00020\u0008H\u00d6\u0001J\u0013\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u00d6\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/giphy/sdk/ui/views/m$e;",
        "Lcom/giphy/sdk/ui/views/m;",
        "Lcom/giphy/sdk/core/models/Media;",
        "a",
        "media",
        "b",
        "",
        "toString",
        "",
        "hashCode",
        "",
        "other",
        "",
        "equals",
        "Lcom/giphy/sdk/core/models/Media;",
        "d",
        "()Lcom/giphy/sdk/core/models/Media;",
        "<init>",
        "(Lcom/giphy/sdk/core/models/Media;)V",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final a:Lcom/giphy/sdk/core/models/Media;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/giphy/sdk/core/models/Media;)V
    .locals 1
    .param p1    # Lcom/giphy/sdk/core/models/Media;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "media"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/giphy/sdk/ui/views/m;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/m$e;->a:Lcom/giphy/sdk/core/models/Media;

    return-void
.end method

.method public static synthetic c(Lcom/giphy/sdk/ui/views/m$e;Lcom/giphy/sdk/core/models/Media;ILjava/lang/Object;)Lcom/giphy/sdk/ui/views/m$e;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/giphy/sdk/ui/views/m$e;->a:Lcom/giphy/sdk/core/models/Media;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/giphy/sdk/ui/views/m$e;->b(Lcom/giphy/sdk/core/models/Media;)Lcom/giphy/sdk/ui/views/m$e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/giphy/sdk/core/models/Media;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/m$e;->a:Lcom/giphy/sdk/core/models/Media;

    return-object v0
.end method

.method public final b(Lcom/giphy/sdk/core/models/Media;)Lcom/giphy/sdk/ui/views/m$e;
    .locals 1
    .param p1    # Lcom/giphy/sdk/core/models/Media;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "media"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/giphy/sdk/ui/views/m$e;

    invoke-direct {v0, p1}, Lcom/giphy/sdk/ui/views/m$e;-><init>(Lcom/giphy/sdk/core/models/Media;)V

    return-object v0
.end method

.method public final d()Lcom/giphy/sdk/core/models/Media;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/m$e;->a:Lcom/giphy/sdk/core/models/Media;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/giphy/sdk/ui/views/m$e;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/giphy/sdk/ui/views/m$e;

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/m$e;->a:Lcom/giphy/sdk/core/models/Media;

    iget-object p1, p1, Lcom/giphy/sdk/ui/views/m$e;->a:Lcom/giphy/sdk/core/models/Media;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/m$e;->a:Lcom/giphy/sdk/core/models/Media;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaChanged(media="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/giphy/sdk/ui/views/m$e;->a:Lcom/giphy/sdk/core/models/Media;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

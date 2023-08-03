.class Lcom/facebook/imagepipeline/animated/impl/c$b;
.super Ljava/lang/Object;
.source "AnimatedFrameCache.java"

# interfaces
.implements Lcom/facebook/cache/common/c;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/animated/impl/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/facebook/cache/common/c;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/facebook/cache/common/c;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageCacheKey",
            "frameIndex"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/c$b;->a:Lcom/facebook/cache/common/c;

    .line 3
    iput p2, p0, Lcom/facebook/imagepipeline/animated/impl/c$b;->b:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Landroid/net/Uri;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c$b;->a:Lcom/facebook/cache/common/c;

    invoke-interface {v0, p1}, Lcom/facebook/cache/common/c;->b(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/facebook/imagepipeline/animated/impl/c$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lcom/facebook/imagepipeline/animated/impl/c$b;

    .line 3
    iget v1, p0, Lcom/facebook/imagepipeline/animated/impl/c$b;->b:I

    iget v3, p1, Lcom/facebook/imagepipeline/animated/impl/c$b;->b:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/c$b;->a:Lcom/facebook/cache/common/c;

    iget-object p1, p1, Lcom/facebook/imagepipeline/animated/impl/c$b;->a:Lcom/facebook/cache/common/c;

    .line 4
    invoke-interface {v1, p1}, Lcom/facebook/cache/common/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c$b;->a:Lcom/facebook/cache/common/c;

    invoke-interface {v0}, Lcom/facebook/cache/common/c;->hashCode()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3f5

    iget v1, p0, Lcom/facebook/imagepipeline/animated/impl/c$b;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/facebook/common/internal/i;->e(Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/c$b;->a:Lcom/facebook/cache/common/c;

    const-string v2, "imageCacheKey"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget v1, p0, Lcom/facebook/imagepipeline/animated/impl/c$b;->b:I

    const-string v2, "frameIndex"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->d(Ljava/lang/String;I)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/facebook/common/internal/i$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/bumptech/glide/integration/webp/c;
.super Ljava/lang/Object;
.source "WebpFrameInfo.java"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:Z

.field public final h:Z


# direct methods
.method constructor <init>(ILcom/bumptech/glide/integration/webp/WebpFrame;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/bumptech/glide/integration/webp/c;->a:I

    .line 3
    invoke-virtual {p2}, Lcom/bumptech/glide/integration/webp/WebpFrame;->getXOffest()I

    move-result p1

    iput p1, p0, Lcom/bumptech/glide/integration/webp/c;->b:I

    .line 4
    invoke-virtual {p2}, Lcom/bumptech/glide/integration/webp/WebpFrame;->getYOffest()I

    move-result p1

    iput p1, p0, Lcom/bumptech/glide/integration/webp/c;->c:I

    .line 5
    invoke-virtual {p2}, Lcom/bumptech/glide/integration/webp/WebpFrame;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/bumptech/glide/integration/webp/c;->d:I

    .line 6
    invoke-virtual {p2}, Lcom/bumptech/glide/integration/webp/WebpFrame;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/bumptech/glide/integration/webp/c;->e:I

    .line 7
    invoke-virtual {p2}, Lcom/bumptech/glide/integration/webp/WebpFrame;->getDurationMs()I

    move-result p1

    iput p1, p0, Lcom/bumptech/glide/integration/webp/c;->f:I

    .line 8
    invoke-virtual {p2}, Lcom/bumptech/glide/integration/webp/WebpFrame;->isBlendWithPreviousFrame()Z

    move-result p1

    iput-boolean p1, p0, Lcom/bumptech/glide/integration/webp/c;->g:Z

    .line 9
    invoke-virtual {p2}, Lcom/bumptech/glide/integration/webp/WebpFrame;->shouldDisposeToBackgroundColor()Z

    move-result p1

    iput-boolean p1, p0, Lcom/bumptech/glide/integration/webp/c;->h:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "frameNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bumptech/glide/integration/webp/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", xOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bumptech/glide/integration/webp/c;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", yOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bumptech/glide/integration/webp/c;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bumptech/glide/integration/webp/c;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bumptech/glide/integration/webp/c;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bumptech/glide/integration/webp/c;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", blendPreviousFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/bumptech/glide/integration/webp/c;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", disposeBackgroundColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/bumptech/glide/integration/webp/c;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

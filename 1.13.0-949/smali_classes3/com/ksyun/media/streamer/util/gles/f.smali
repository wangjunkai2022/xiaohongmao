.class public Lcom/ksyun/media/streamer/util/gles/f;
.super Lcom/ksyun/media/streamer/util/gles/e;
.source "EglWindowSurface.java"


# instance fields
.field private c:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/d;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/util/gles/e;-><init>(Lcom/ksyun/media/streamer/util/gles/d;)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/ksyun/media/streamer/util/gles/e;->a(II)V

    return-void
.end method

.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/d;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/util/gles/e;-><init>(Lcom/ksyun/media/streamer/util/gles/d;)V

    .line 7
    invoke-virtual {p0, p2}, Lcom/ksyun/media/streamer/util/gles/e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/d;Landroid/view/Surface;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/util/gles/e;-><init>(Lcom/ksyun/media/streamer/util/gles/d;)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/ksyun/media/streamer/util/gles/e;->a(Ljava/lang/Object;)V

    .line 5
    iput-object p2, p0, Lcom/ksyun/media/streamer/util/gles/f;->c:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public a(Lcom/ksyun/media/streamer/util/gles/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/f;->c:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/ksyun/media/streamer/util/gles/e;->b:Lcom/ksyun/media/streamer/util/gles/d;

    .line 3
    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/util/gles/e;->a(Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "not yet implemented for SurfaceTexture"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/util/gles/e;->c()V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/f;->c:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/ksyun/media/streamer/util/gles/f;->c:Landroid/view/Surface;

    :cond_0
    return-void
.end method

.class Lcom/ksyun/media/streamer/capture/CameraCapture$5;
.super Ljava/lang/Object;
.source "CameraCapture.java"

# interfaces
.implements Lcom/ksyun/media/streamer/util/gles/GLRender$OnDrawFrameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/capture/CameraCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/capture/CameraCapture;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/capture/CameraCapture;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$5;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$5;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->w(Lcom/ksyun/media/streamer/capture/CameraCapture;)I

    move-result v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$5;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->f(Lcom/ksyun/media/streamer/capture/CameraCapture;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/ksyun/media/streamer/capture/CameraCapture;->c(Lcom/ksyun/media/streamer/capture/CameraCapture;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/ksyun/media/streamer/capture/camera/c;->a(II)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$5;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->x(Lcom/ksyun/media/streamer/capture/CameraCapture;)Lcom/ksyun/media/streamer/capture/CameraCapture$b;

    move-result-object v1

    iget v1, v1, Lcom/ksyun/media/streamer/capture/CameraCapture$b;->a:I

    .line 3
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$5;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v2}, Lcom/ksyun/media/streamer/capture/CameraCapture;->x(Lcom/ksyun/media/streamer/capture/CameraCapture;)Lcom/ksyun/media/streamer/capture/CameraCapture$b;

    move-result-object v2

    iget v2, v2, Lcom/ksyun/media/streamer/capture/CameraCapture$b;->b:I

    .line 4
    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$5;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->x(Lcom/ksyun/media/streamer/capture/CameraCapture;)Lcom/ksyun/media/streamer/capture/CameraCapture$b;

    move-result-object v0

    iget v1, v0, Lcom/ksyun/media/streamer/capture/CameraCapture$b;->b:I

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$5;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->x(Lcom/ksyun/media/streamer/capture/CameraCapture;)Lcom/ksyun/media/streamer/capture/CameraCapture$b;

    move-result-object v0

    iget v2, v0, Lcom/ksyun/media/streamer/capture/CameraCapture$b;->a:I

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$5;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    new-instance v3, Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v1, v2}, Lcom/ksyun/media/streamer/framework/ImgTexFormat;-><init>(III)V

    invoke-static {v0, v3}, Lcom/ksyun/media/streamer/capture/CameraCapture;->a(Lcom/ksyun/media/streamer/capture/CameraCapture;Lcom/ksyun/media/streamer/framework/ImgTexFormat;)Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    .line 8
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$5;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    iget-object v1, v0, Lcom/ksyun/media/streamer/capture/CameraCapture;->mImgTexSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->s(Lcom/ksyun/media/streamer/capture/CameraCapture;)Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFormatChanged(Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$5;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/ksyun/media/streamer/capture/CameraCapture;->b(Lcom/ksyun/media/streamer/capture/CameraCapture;J)J

    .line 10
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$5;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/ksyun/media/streamer/capture/CameraCapture;->a(Lcom/ksyun/media/streamer/capture/CameraCapture;J)J

    .line 11
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$5;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->a(Lcom/ksyun/media/streamer/capture/CameraCapture;F)F

    return-void
.end method


# virtual methods
.method public onDrawFrame()V
    .locals 11

    const-string v0, "CameraCapture"

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    div-long v9, v1, v3

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$5;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->l(Lcom/ksyun/media/streamer/capture/CameraCapture;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$5;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->a(Lcom/ksyun/media/streamer/capture/CameraCapture;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$5;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->n(Lcom/ksyun/media/streamer/capture/CameraCapture;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$5;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->o(Lcom/ksyun/media/streamer/capture/CameraCapture;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$5;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/ksyun/media/streamer/capture/CameraCapture;->a(Lcom/ksyun/media/streamer/capture/CameraCapture;Z)Z

    .line 6
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$5;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->q(Lcom/ksyun/media/streamer/capture/CameraCapture;)Lcom/ksyun/media/streamer/util/c;

    move-result-object v1

    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$5;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v2}, Lcom/ksyun/media/streamer/capture/CameraCapture;->p(Lcom/ksyun/media/streamer/capture/CameraCapture;)F

    move-result v2

    invoke-virtual {v1, v2, v9, v10}, Lcom/ksyun/media/streamer/util/c;->a(FJ)V

    .line 7
    invoke-direct {p0}, Lcom/ksyun/media/streamer/capture/CameraCapture$5;->a()V

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$5;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->q(Lcom/ksyun/media/streamer/capture/CameraCapture;)Lcom/ksyun/media/streamer/util/c;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Lcom/ksyun/media/streamer/util/c;->a(J)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$5;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->r(Lcom/ksyun/media/streamer/capture/CameraCapture;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$5;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->r(Lcom/ksyun/media/streamer/capture/CameraCapture;)Z

    const/16 v1, 0x10

    new-array v8, v1, [F

    .line 10
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$5;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->l(Lcom/ksyun/media/streamer/capture/CameraCapture;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 11
    new-instance v1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$5;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v2}, Lcom/ksyun/media/streamer/capture/CameraCapture;->s(Lcom/ksyun/media/streamer/capture/CameraCapture;)Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    move-result-object v6

    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$5;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v2}, Lcom/ksyun/media/streamer/capture/CameraCapture;->m(Lcom/ksyun/media/streamer/capture/CameraCapture;)I

    move-result v7

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/ksyun/media/streamer/framework/ImgTexFrame;-><init>(Lcom/ksyun/media/streamer/framework/ImgTexFormat;I[FJ)V

    .line 12
    :try_start_1
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$5;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    iget-object v2, v2, Lcom/ksyun/media/streamer/capture/CameraCapture;->mImgTexSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v2, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "Draw frame failed, ignore"

    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$5;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->t(Lcom/ksyun/media/streamer/capture/CameraCapture;)J

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 17
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$5;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v2}, Lcom/ksyun/media/streamer/capture/CameraCapture;->u(Lcom/ksyun/media/streamer/capture/CameraCapture;)J

    move-result-wide v5

    sub-long v5, v0, v5

    cmp-long v2, v5, v3

    if-ltz v2, :cond_3

    .line 18
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$5;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v2}, Lcom/ksyun/media/streamer/capture/CameraCapture;->v(Lcom/ksyun/media/streamer/capture/CameraCapture;)J

    move-result-wide v3

    long-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float v3, v3, v4

    long-to-float v4, v5

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/ksyun/media/streamer/capture/CameraCapture;->a(Lcom/ksyun/media/streamer/capture/CameraCapture;F)F

    .line 19
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$5;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/ksyun/media/streamer/capture/CameraCapture;->a(Lcom/ksyun/media/streamer/capture/CameraCapture;J)J

    .line 20
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$5;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v2, v0, v1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->b(Lcom/ksyun/media/streamer/capture/CameraCapture;J)J

    :cond_3
    :goto_1
    return-void

    :catch_1
    const-string v1, "updateTexImage failed, ignore"

    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

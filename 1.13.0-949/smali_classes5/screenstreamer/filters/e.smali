.class public Lscreenstreamer/filters/e;
.super Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;
.source "ImgTexGPUImageFilter.java"


# static fields
.field private static final o:Ljava/lang/String; = "ImgTexGPUImageFilter"


# instance fields
.field private final m:Lscreenstreamer/filters/b;

.field private n:Lcom/ksyun/media/streamer/framework/ImgTexFormat;


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Lscreenstreamer/filters/b;Lscreenstreamer/filters/d$b;)V
    .locals 0
    .param p3    # Lscreenstreamer/filters/d$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    .line 2
    iput-object p2, p0, Lscreenstreamer/filters/e;->m:Lscreenstreamer/filters/b;

    return-void
.end method


# virtual methods
.method public getSinkPinNum()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getSrcPinFormat()Lcom/ksyun/media/streamer/framework/ImgTexFormat;
    .locals 1

    iget-object v0, p0, Lscreenstreamer/filters/e;->n:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    return-object v0
.end method

.method protected getTexCoords()Ljava/nio/FloatBuffer;
    .locals 1

    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->getTexCoordsBuf()Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected getVertexCoords()Ljava/nio/FloatBuffer;
    .locals 1

    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->getVertexCoordsBuf()Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public i()Lscreenstreamer/filters/a;
    .locals 1

    iget-object v0, p0, Lscreenstreamer/filters/e;->m:Lscreenstreamer/filters/b;

    return-object v0
.end method

.method protected onDraw([Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->mMainSinkPinIndex:I

    aget-object p1, p1, v0

    .line 2
    iget p1, p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->textureId:I

    .line 3
    iget-object v0, p0, Lscreenstreamer/filters/e;->m:Lscreenstreamer/filters/b;

    invoke-virtual {p0}, Lscreenstreamer/filters/e;->getVertexCoords()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lscreenstreamer/filters/e;->getTexCoords()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lscreenstreamer/filters/b;->m(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    const-string p1, "GPUImageFilter onDraw"

    .line 4
    invoke-static {p1}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method protected onFormatChanged(ILcom/ksyun/media/streamer/framework/ImgTexFormat;)V
    .locals 3

    .line 1
    new-instance p1, Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    iget v0, p2, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->width:I

    iget v1, p2, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->height:I

    const/4 v2, 0x1

    invoke-direct {p1, v2, v0, v1}, Lcom/ksyun/media/streamer/framework/ImgTexFormat;-><init>(III)V

    iput-object p1, p0, Lscreenstreamer/filters/e;->n:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init GPUImage filter "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->width:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->height:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImgTexGPUImageFilter"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lscreenstreamer/filters/e;->m:Lscreenstreamer/filters/b;

    invoke-virtual {p1}, Lscreenstreamer/filters/a;->i()V

    .line 4
    iget-object p1, p0, Lscreenstreamer/filters/e;->m:Lscreenstreamer/filters/b;

    iget v0, p2, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->width:I

    iget p2, p2, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->height:I

    invoke-virtual {p1, v0, p2}, Lscreenstreamer/filters/b;->q(II)V

    return-void
.end method

.method protected onRelease()V
    .locals 1

    .line 1
    iget-object v0, p0, Lscreenstreamer/filters/e;->m:Lscreenstreamer/filters/b;

    invoke-virtual {v0}, Lscreenstreamer/filters/a;->b()V

    .line 2
    invoke-super {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->onRelease()V

    return-void
.end method

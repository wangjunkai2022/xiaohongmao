.class public Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufScaleFilter;
.super Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;
.source "ImgBufScaleFilter.java"


# instance fields
.field private a:Lcom/ksyun/media/streamer/framework/ImgBufFormat;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 3
    invoke-direct {p0}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;-><init>()V

    .line 4
    new-instance v0, Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/ksyun/media/streamer/framework/ImgBufFormat;-><init>(IIII)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufScaleFilter;->a:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    return-void
.end method

.method public constructor <init>(Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;-><init>(Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;)V

    .line 2
    new-instance p1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1, v1}, Lcom/ksyun/media/streamer/framework/ImgBufFormat;-><init>(IIII)V

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufScaleFilter;->a:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    return-void
.end method


# virtual methods
.method protected doFilter()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->mInputFrames:[Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    iget v1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->mMainSinkPinIndex:I

    aget-object v0, v0, v1

    .line 2
    iget-object v1, v0, Lcom/ksyun/media/streamer/framework/ImgBufFrame;->format:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufScaleFilter;->a:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->mOutPutFrame:Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    return-void

    .line 4
    :cond_0
    iget-object v1, v0, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufScaleFilter;->a:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    iget v1, v1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->pixFmt:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 6
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->mImagePreProcess:Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;

    invoke-virtual {v1, v0}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;->a(Lcom/ksyun/media/streamer/framework/ImgBufFrame;)Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->mOutPutFrame:Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    goto :goto_1

    :cond_2
    const/4 v0, 0x5

    if-ne v1, v0, :cond_4

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->mImagePreProcess:Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;

    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->mInputFrames:[Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    iget v2, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->mMainSinkPinIndex:I

    aget-object v1, v1, v2

    .line 8
    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;->b(Lcom/ksyun/media/streamer/framework/ImgBufFrame;)Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->mOutPutFrame:Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    goto :goto_1

    .line 9
    :cond_3
    :goto_0
    new-instance v1, Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    invoke-direct {v1, v0}, Lcom/ksyun/media/streamer/framework/ImgBufFrame;-><init>(Lcom/ksyun/media/streamer/framework/ImgBufFrame;)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->mOutPutFrame:Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    .line 10
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufScaleFilter;->a:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    iput-object v0, v1, Lcom/ksyun/media/streamer/framework/ImgBufFrame;->format:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    :cond_4
    :goto_1
    return-void
.end method

.method public getSinkPinNum()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getSrcPinFormat()Lcom/ksyun/media/streamer/framework/ImgBufFormat;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufScaleFilter;->a:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    return-object v0
.end method

.method protected onFormatChanged(ILcom/ksyun/media/streamer/framework/ImgBufFormat;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufScaleFilter;->a:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    iget v0, p1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->width:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->height:I

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iget v0, p2, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->width:I

    iput v0, p1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->width:I

    .line 3
    iget p2, p2, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->height:I

    iput p2, p1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->height:I

    :cond_1
    return-void
.end method

.method public release()V
    .locals 0

    invoke-super {p0}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->release()V

    return-void
.end method

.method public setMirror(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->mImagePreProcess:Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;->a(Z)V

    return-void
.end method

.method public setOutputFormat(I)V
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ljava/util/UnknownFormatFlagsException;

    const-string v0, "format should be I420 or RGBA"

    invoke-direct {p1, v0}, Ljava/util/UnknownFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufScaleFilter;->a:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    iput p1, v0, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->pixFmt:I

    return-void
.end method

.method public setTargetSize(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->mImagePreProcess:Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;

    invoke-virtual {v0, p1, p2}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;->a(II)V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufScaleFilter;->a:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    iput p1, v0, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->width:I

    .line 3
    iput p2, v0, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->height:I

    return-void
.end method

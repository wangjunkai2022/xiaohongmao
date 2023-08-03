.class public Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufBeautyFilter;
.super Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;
.source "ImgBufBeautyFilter.java"


# static fields
.field public static final BEAUTY_LEVEL_0:I = 0x0

.field public static final BEAUTY_LEVEL_1:I = 0x1


# instance fields
.field private a:Lcom/ksyun/media/streamer/framework/ImgBufFormat;


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;-><init>(Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;)V

    return-void
.end method


# virtual methods
.method protected doFilter()V
    .locals 3

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->mImagePreProcess:Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;

    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->mInputFrames:[Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    iget v2, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->mMainSinkPinIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;->c(Lcom/ksyun/media/streamer/framework/ImgBufFrame;)Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->mOutPutFrame:Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    return-void
.end method

.method public getSinkPinNum()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getSrcPinFormat()Lcom/ksyun/media/streamer/framework/ImgBufFormat;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufBeautyFilter;->a:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    return-object v0
.end method

.method protected onFormatChanged(ILcom/ksyun/media/streamer/framework/ImgBufFormat;)V
    .locals 0

    iput-object p2, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufBeautyFilter;->a:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    return-void
.end method

.method public release()V
    .locals 0

    invoke-super {p0}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->release()V

    return-void
.end method

.method public setBeautyLevel(I)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->mImagePreProcess:Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;->a(I)V

    return-void
.end method

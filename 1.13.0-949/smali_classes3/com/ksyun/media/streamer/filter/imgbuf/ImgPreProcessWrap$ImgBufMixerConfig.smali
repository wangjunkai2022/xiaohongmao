.class public Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap$ImgBufMixerConfig;
.super Ljava/lang/Object;
.source "ImgPreProcessWrap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImgBufMixerConfig"
.end annotation


# instance fields
.field public alpha:I

.field public color:I

.field public h:I

.field public w:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap$ImgBufMixerConfig;->x:I

    .line 3
    iput p2, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap$ImgBufMixerConfig;->y:I

    .line 4
    iput p3, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap$ImgBufMixerConfig;->w:I

    .line 5
    iput p4, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap$ImgBufMixerConfig;->h:I

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap$ImgBufMixerConfig;->color:I

    .line 7
    iput p5, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap$ImgBufMixerConfig;->alpha:I

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap$ImgBufMixerConfig;->x:I

    .line 10
    iput p2, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap$ImgBufMixerConfig;->y:I

    .line 11
    iput p3, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap$ImgBufMixerConfig;->w:I

    .line 12
    iput p4, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap$ImgBufMixerConfig;->h:I

    .line 13
    iput p5, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap$ImgBufMixerConfig;->color:I

    .line 14
    iput p6, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap$ImgBufMixerConfig;->alpha:I

    return-void
.end method

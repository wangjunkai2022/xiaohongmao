.class public Lscreenstreamer/filters/d;
.super Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;
.source "ImgTexCustomFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscreenstreamer/filters/d$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/ksyun/media/streamer/framework/SinkPin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/SinkPin<",
            "Lcom/ksyun/media/streamer/framework/ImgTexFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

.field private final c:Lcom/ksyun/media/streamer/util/gles/GLRender;


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Lscreenstreamer/filters/d$b;)V
    .locals 1
    .param p2    # Lscreenstreamer/filters/d$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;-><init>()V

    .line 2
    iput-object p1, p0, Lscreenstreamer/filters/d;->c:Lcom/ksyun/media/streamer/util/gles/GLRender;

    .line 3
    new-instance v0, Lscreenstreamer/filters/d$a;

    invoke-direct {v0, p0, p2}, Lscreenstreamer/filters/d$a;-><init>(Lscreenstreamer/filters/d;Lscreenstreamer/filters/d$b;)V

    iput-object v0, p0, Lscreenstreamer/filters/d;->a:Lcom/ksyun/media/streamer/framework/SinkPin;

    .line 4
    new-instance p2, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    invoke-direct {p2, p1}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    iput-object p2, p0, Lscreenstreamer/filters/d;->b:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    return-void
.end method

.method static synthetic a(Lscreenstreamer/filters/d;)Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;
    .locals 0

    iget-object p0, p0, Lscreenstreamer/filters/d;->b:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    return-object p0
.end method

.method static synthetic b(Lscreenstreamer/filters/d;)Lcom/ksyun/media/streamer/util/gles/GLRender;
    .locals 0

    iget-object p0, p0, Lscreenstreamer/filters/d;->c:Lcom/ksyun/media/streamer/util/gles/GLRender;

    return-object p0
.end method


# virtual methods
.method public getSinkPin(I)Lcom/ksyun/media/streamer/framework/SinkPin;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/ksyun/media/streamer/framework/SinkPin<",
            "Lcom/ksyun/media/streamer/framework/ImgTexFrame;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lscreenstreamer/filters/d;->a:Lcom/ksyun/media/streamer/framework/SinkPin;

    return-object p1
.end method

.method public getSinkPinNum()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "Lcom/ksyun/media/streamer/framework/ImgTexFrame;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lscreenstreamer/filters/d;->b:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    return-object v0
.end method

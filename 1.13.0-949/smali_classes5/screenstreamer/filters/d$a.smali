.class Lscreenstreamer/filters/d$a;
.super Lcom/ksyun/media/streamer/framework/SinkPin;
.source "ImgTexCustomFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscreenstreamer/filters/d;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Lscreenstreamer/filters/d$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ksyun/media/streamer/framework/SinkPin<",
        "Lcom/ksyun/media/streamer/framework/ImgTexFrame;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lscreenstreamer/filters/d$b;

.field final synthetic b:Lscreenstreamer/filters/d;


# direct methods
.method constructor <init>(Lscreenstreamer/filters/d;Lscreenstreamer/filters/d$b;)V
    .locals 0

    iput-object p1, p0, Lscreenstreamer/filters/d$a;->b:Lscreenstreamer/filters/d;

    iput-object p2, p0, Lscreenstreamer/filters/d$a;->a:Lscreenstreamer/filters/d$b;

    invoke-direct {p0}, Lcom/ksyun/media/streamer/framework/SinkPin;-><init>()V

    return-void
.end method

.method public static synthetic a(Lscreenstreamer/filters/d$a;Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V
    .locals 0

    invoke-direct {p0, p1}, Lscreenstreamer/filters/d$a;->c(Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V

    return-void
.end method

.method private synthetic c(Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V
    .locals 1

    iget-object v0, p0, Lscreenstreamer/filters/d$a;->b:Lscreenstreamer/filters/d;

    invoke-static {v0}, Lscreenstreamer/filters/d;->a(Lscreenstreamer/filters/d;)Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    return-void
.end method


# virtual methods
.method public d(Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lscreenstreamer/filters/d$a;->a:Lscreenstreamer/filters/d$b;

    iget v1, p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->textureId:I

    iget-object v2, p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->format:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    iget v3, v2, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->width:I

    iget v2, v2, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->height:I

    invoke-interface {v0, v1, v3, v2}, Lscreenstreamer/filters/d$b;->b(III)I

    move-result v6

    .line 2
    new-instance v0, Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    iget-object v5, p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->format:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    iget-object v7, p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->texMatrix:[F

    iget-wide v8, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/ksyun/media/streamer/framework/ImgTexFrame;-><init>(Lcom/ksyun/media/streamer/framework/ImgTexFormat;I[FJ)V

    .line 3
    iget-object p1, p0, Lscreenstreamer/filters/d$a;->b:Lscreenstreamer/filters/d;

    invoke-static {p1}, Lscreenstreamer/filters/d;->b(Lscreenstreamer/filters/d;)Lcom/ksyun/media/streamer/util/gles/GLRender;

    move-result-object p1

    new-instance v1, Lscreenstreamer/filters/c;

    invoke-direct {v1, p0, v0}, Lscreenstreamer/filters/c;-><init>(Lscreenstreamer/filters/d$a;Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V

    invoke-virtual {p1, v1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->queueDrawFrameAppends(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDisconnect(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lscreenstreamer/filters/d$a;->b:Lscreenstreamer/filters/d;

    invoke-static {v0}, Lscreenstreamer/filters/d;->a(Lscreenstreamer/filters/d;)Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    .line 2
    iget-object p1, p0, Lscreenstreamer/filters/d$a;->a:Lscreenstreamer/filters/d$b;

    invoke-interface {p1}, Lscreenstreamer/filters/d$b;->a()V

    return-void
.end method

.method public onFormatChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lscreenstreamer/filters/d$a;->b:Lscreenstreamer/filters/d;

    invoke-static {v0}, Lscreenstreamer/filters/d;->a(Lscreenstreamer/filters/d;)Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFormatChanged(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V
    .locals 0

    check-cast p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    invoke-virtual {p0, p1}, Lscreenstreamer/filters/d$a;->d(Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V

    return-void
.end method

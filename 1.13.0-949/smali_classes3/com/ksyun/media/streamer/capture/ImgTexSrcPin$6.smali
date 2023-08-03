.class Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$6;
.super Ljava/lang/Object;
.source "ImgTexSrcPin.java"

# interfaces
.implements Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$6;->a:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReady()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$6;->a:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->a(Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;Lcom/ksyun/media/streamer/framework/ImgTexFormat;)Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$6;->a:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->a(Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;I)I

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$6;->a:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->d(Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;)Lcom/ksyun/media/streamer/util/gles/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$6;->a:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->d(Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;)Lcom/ksyun/media/streamer/util/gles/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/g;->a()V

    :cond_0
    return-void
.end method

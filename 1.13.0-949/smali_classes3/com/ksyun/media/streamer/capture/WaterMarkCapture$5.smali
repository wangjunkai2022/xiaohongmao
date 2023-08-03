.class Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5;
.super Ljava/lang/Object;
.source "WaterMarkCapture.java"

# interfaces
.implements Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/capture/WaterMarkCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/capture/WaterMarkCapture;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5;->a:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReady()V
    .locals 2

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5;->a:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->h(Lcom/ksyun/media/streamer/capture/WaterMarkCapture;)Lcom/ksyun/media/streamer/util/gles/GLRender;

    move-result-object v0

    new-instance v1, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5$1;

    invoke-direct {v1, p0}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5$1;-><init>(Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5;)V

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

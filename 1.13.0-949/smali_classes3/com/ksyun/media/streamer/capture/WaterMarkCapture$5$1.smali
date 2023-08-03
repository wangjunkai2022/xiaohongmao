.class Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5$1;
.super Ljava/lang/Object;
.source "WaterMarkCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5;->onReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5$1;->a:Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5$1;->a:Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5;

    iget-object v0, v0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5;->a:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->a(Lcom/ksyun/media/streamer/capture/WaterMarkCapture;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5$1;->a:Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5;

    iget-object v1, v1, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5;->a:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    invoke-static {v1}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->b(Lcom/ksyun/media/streamer/capture/WaterMarkCapture;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5$1;->a:Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5;

    iget-object v1, v1, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5;->a:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    invoke-static {v1}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->b(Lcom/ksyun/media/streamer/capture/WaterMarkCapture;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5$1;->a:Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5;

    iget-object v3, v3, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5;->a:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    iget-object v3, v3, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->mLogoTexSrcPin:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->a(Lcom/ksyun/media/streamer/capture/WaterMarkCapture;Landroid/graphics/Bitmap;Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;Z)V

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5$1;->a:Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5;

    iget-object v0, v0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5;->a:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->c(Lcom/ksyun/media/streamer/capture/WaterMarkCapture;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5$1;->a:Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5;

    iget-object v0, v0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5;->a:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->d(Lcom/ksyun/media/streamer/capture/WaterMarkCapture;)I

    move-result v1

    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5$1;->a:Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5;

    iget-object v2, v2, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5;->a:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    invoke-static {v2}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->e(Lcom/ksyun/media/streamer/capture/WaterMarkCapture;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5$1;->a:Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5;

    iget-object v3, v3, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5;->a:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    invoke-static {v3}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->f(Lcom/ksyun/media/streamer/capture/WaterMarkCapture;)F

    move-result v3

    iget-object v4, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5$1;->a:Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5;

    iget-object v4, v4, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$5;->a:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    invoke-static {v4}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->g(Lcom/ksyun/media/streamer/capture/WaterMarkCapture;)F

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->a(Lcom/ksyun/media/streamer/capture/WaterMarkCapture;ILjava/lang/String;FF)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

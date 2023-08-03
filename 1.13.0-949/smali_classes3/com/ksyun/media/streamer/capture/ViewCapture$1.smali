.class Lcom/ksyun/media/streamer/capture/ViewCapture$1;
.super Ljava/util/TimerTask;
.source "ViewCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/capture/ViewCapture;->start(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/capture/ViewCapture;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/capture/ViewCapture;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/ViewCapture$1;->a:Lcom/ksyun/media/streamer/capture/ViewCapture;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ViewCapture$1;->a:Lcom/ksyun/media/streamer/capture/ViewCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/ViewCapture;->a(Lcom/ksyun/media/streamer/capture/ViewCapture;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ViewCapture$1;->a:Lcom/ksyun/media/streamer/capture/ViewCapture;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ksyun/media/streamer/capture/ViewCapture;->a(Lcom/ksyun/media/streamer/capture/ViewCapture;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ViewCapture$1;->a:Lcom/ksyun/media/streamer/capture/ViewCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/ViewCapture;->b(Lcom/ksyun/media/streamer/capture/ViewCapture;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ksyun/media/streamer/capture/ViewCapture$1$1;

    invoke-direct {v1, p0}, Lcom/ksyun/media/streamer/capture/ViewCapture$1$1;-><init>(Lcom/ksyun/media/streamer/capture/ViewCapture$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ViewCapture$1;->a:Lcom/ksyun/media/streamer/capture/ViewCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/ViewCapture;->a(Lcom/ksyun/media/streamer/capture/ViewCapture;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ViewCapture$1;->a:Lcom/ksyun/media/streamer/capture/ViewCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/ViewCapture;->c(Lcom/ksyun/media/streamer/capture/ViewCapture;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ksyun/media/streamer/capture/ViewCapture;->b(Lcom/ksyun/media/streamer/capture/ViewCapture;Landroid/graphics/Bitmap;)V

    return-void
.end method

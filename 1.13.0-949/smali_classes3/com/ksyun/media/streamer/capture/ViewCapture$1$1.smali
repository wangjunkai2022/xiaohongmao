.class Lcom/ksyun/media/streamer/capture/ViewCapture$1$1;
.super Ljava/lang/Object;
.source "ViewCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/capture/ViewCapture$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/capture/ViewCapture$1;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/capture/ViewCapture$1;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/ViewCapture$1$1;->a:Lcom/ksyun/media/streamer/capture/ViewCapture$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ViewCapture$1$1;->a:Lcom/ksyun/media/streamer/capture/ViewCapture$1;

    iget-object v0, v0, Lcom/ksyun/media/streamer/capture/ViewCapture$1;->a:Lcom/ksyun/media/streamer/capture/ViewCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/ViewCapture;->b(Lcom/ksyun/media/streamer/capture/ViewCapture;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ksyun/media/streamer/capture/ViewCapture;->a(Lcom/ksyun/media/streamer/capture/ViewCapture;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ksyun/media/streamer/capture/ViewCapture;->a(Lcom/ksyun/media/streamer/capture/ViewCapture;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ViewCapture$1$1;->a:Lcom/ksyun/media/streamer/capture/ViewCapture$1;

    iget-object v0, v0, Lcom/ksyun/media/streamer/capture/ViewCapture$1;->a:Lcom/ksyun/media/streamer/capture/ViewCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/ViewCapture;->a(Lcom/ksyun/media/streamer/capture/ViewCapture;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

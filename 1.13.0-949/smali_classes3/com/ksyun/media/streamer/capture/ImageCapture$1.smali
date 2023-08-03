.class Lcom/ksyun/media/streamer/capture/ImageCapture$1;
.super Ljava/util/TimerTask;
.source "ImageCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/capture/ImageCapture;->start(Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/capture/ImageCapture;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/capture/ImageCapture;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/ImageCapture$1;->a:Lcom/ksyun/media/streamer/capture/ImageCapture;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ImageCapture$1;->a:Lcom/ksyun/media/streamer/capture/ImageCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/ImageCapture;->a(Lcom/ksyun/media/streamer/capture/ImageCapture;)Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->repeatFrame()V

    return-void
.end method

.class Lcom/ksyun/media/streamer/capture/WaterMarkCapture$3;
.super Ljava/lang/Object;
.source "WaterMarkCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->hideLogo()V
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

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$3;->a:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$3;->a:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    iget-object v0, v0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->mLogoBufSrcPin:Lcom/ksyun/media/streamer/capture/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/capture/a;->a(Landroid/graphics/Bitmap;Z)V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$3;->a:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    iget-object v0, v0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->mLogoTexSrcPin:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->updateFrame(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

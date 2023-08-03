.class Lcom/ksyun/media/streamer/capture/WaterMarkCapture$2;
.super Ljava/lang/Object;
.source "WaterMarkCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->showLogo(Landroid/graphics/Bitmap;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/capture/WaterMarkCapture;FF)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$2;->c:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    iput p2, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$2;->a:F

    iput p3, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$2;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$2;->c:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    iget v1, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$2;->a:F

    iget v2, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$2;->b:F

    invoke-static {v0, v1, v2}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->a(Lcom/ksyun/media/streamer/capture/WaterMarkCapture;FF)V

    return-void
.end method

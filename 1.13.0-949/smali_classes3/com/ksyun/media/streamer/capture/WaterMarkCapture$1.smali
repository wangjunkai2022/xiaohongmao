.class Lcom/ksyun/media/streamer/capture/WaterMarkCapture$1;
.super Ljava/lang/Object;
.source "WaterMarkCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->showLogo(Landroid/content/Context;Ljava/lang/String;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/capture/WaterMarkCapture;Landroid/content/Context;Ljava/lang/String;FF)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$1;->e:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    iput-object p2, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$1;->b:Ljava/lang/String;

    iput p4, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$1;->c:F

    iput p5, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$1;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$1;->e:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$1;->b:Ljava/lang/String;

    iget v3, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$1;->c:F

    iget v4, p0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture$1;->d:F

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->a(Lcom/ksyun/media/streamer/capture/WaterMarkCapture;Landroid/content/Context;Ljava/lang/String;FF)V

    return-void
.end method

.class Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$4;
.super Ljava/lang/Object;
.source "ImgTexSrcPin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->repeatFrame(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;J)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$4;->b:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    iput-wide p2, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$4;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$4;->b:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    iget-wide v1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$4;->a:J

    invoke-static {v0, v1, v2}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->a(Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;J)V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$4;->b:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->a(Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$4;->b:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->b(Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    :cond_0
    return-void
.end method

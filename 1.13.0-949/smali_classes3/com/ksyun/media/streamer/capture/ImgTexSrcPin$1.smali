.class Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$1;
.super Ljava/lang/Object;
.source "ImgTexSrcPin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->updateFrame(Landroid/graphics/Bitmap;IJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:Z

.field final synthetic e:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;Landroid/graphics/Bitmap;IJZ)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$1;->e:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    iput-object p2, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$1;->a:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$1;->b:I

    iput-wide p4, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$1;->c:J

    iput-boolean p6, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$1;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$1;->e:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$1;->a:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$1;->b:I

    iget-wide v3, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$1;->c:J

    iget-boolean v5, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$1;->d:Z

    invoke-static/range {v0 .. v5}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->a(Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;Landroid/graphics/Bitmap;IJZ)V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$1;->e:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->a(Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$1;->e:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->b(Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    :cond_0
    return-void
.end method

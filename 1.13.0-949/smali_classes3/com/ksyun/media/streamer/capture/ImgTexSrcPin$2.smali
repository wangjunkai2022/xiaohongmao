.class Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$2;
.super Ljava/lang/Object;
.source "ImgTexSrcPin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->updateFrame(Ljava/nio/ByteBuffer;IIIIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/nio/ByteBuffer;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:J

.field final synthetic g:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;Ljava/nio/ByteBuffer;IIIIJ)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$2;->g:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    iput-object p2, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$2;->a:Ljava/nio/ByteBuffer;

    iput p3, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$2;->b:I

    iput p4, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$2;->c:I

    iput p5, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$2;->d:I

    iput p6, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$2;->e:I

    iput-wide p7, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$2;->f:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$2;->g:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$2;->a:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$2;->b:I

    iget v3, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$2;->c:I

    iget v4, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$2;->d:I

    iget v5, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$2;->e:I

    iget-wide v6, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$2;->f:J

    invoke-static/range {v0 .. v7}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->a(Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;Ljava/nio/ByteBuffer;IIIIJ)V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$2;->g:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->a(Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$2;->g:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->b(Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    :cond_0
    return-void
.end method

.class Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$7;
.super Ljava/lang/Object;
.source "ImgTexSrcPin.java"

# interfaces
.implements Lcom/ksyun/media/streamer/util/gles/GLRender$OnReleasedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$7;->a:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReleased()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$7;->a:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->a(Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$7;->a:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->b(Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    :cond_0
    return-void
.end method

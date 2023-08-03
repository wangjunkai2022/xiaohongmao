.class Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$a;
.super Lcom/ksyun/media/streamer/framework/SinkPin;
.source "ImgTexPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ksyun/media/streamer/framework/SinkPin<",
        "Lcom/ksyun/media/streamer/framework/ImgTexFrame;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;


# direct methods
.method private constructor <init>(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;

    invoke-direct {p0}, Lcom/ksyun/media/streamer/framework/SinkPin;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$a;-><init>(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->c(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;)Lcom/ksyun/media/streamer/util/gles/GLRender;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;

    invoke-static {v0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->b(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;Lcom/ksyun/media/streamer/framework/ImgTexFrame;)Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->e(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->c(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;)Lcom/ksyun/media/streamer/util/gles/GLRender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->c(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;)Lcom/ksyun/media/streamer/util/gles/GLRender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->requestRender()V

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->e(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 8
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;

    invoke-static {v0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->c(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;Lcom/ksyun/media/streamer/framework/ImgTexFrame;)Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    :cond_0
    return-void
.end method

.method public declared-synchronized onDisconnect(Z)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lcom/ksyun/media/streamer/framework/SinkPin;->onDisconnect(Z)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onFormatChanged(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public synthetic onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V
    .locals 0

    check-cast p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$a;->a(Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V

    return-void
.end method

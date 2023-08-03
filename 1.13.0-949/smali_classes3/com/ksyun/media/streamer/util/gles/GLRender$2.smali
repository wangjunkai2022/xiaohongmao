.class Lcom/ksyun/media/streamer/util/gles/GLRender$2;
.super Ljava/lang/Object;
.source "GLRender.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/util/gles/GLRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/util/gles/GLRender;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender$2;->a:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceTextureAvailable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLRender"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender$2;->a:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->h(Lcom/ksyun/media/streamer/util/gles/GLRender;)Landroid/view/TextureView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender$2;->a:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->g(Lcom/ksyun/media/streamer/util/gles/GLRender;)Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender$2;->a:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->i(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender$2;->a:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->j(Lcom/ksyun/media/streamer/util/gles/GLRender;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender$2;->a:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->j(Lcom/ksyun/media/streamer/util/gles/GLRender;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender$2;->a:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-static {p1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->j(Lcom/ksyun/media/streamer/util/gles/GLRender;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/ksyun/media/streamer/util/gles/GLRender$2;->a:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-static {p2}, Lcom/ksyun/media/streamer/util/gles/GLRender;->j(Lcom/ksyun/media/streamer/util/gles/GLRender;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    const-string v0, "GLRender"

    const-string v1, "onSurfaceTextureDestroyed"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender$2;->a:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->h(Lcom/ksyun/media/streamer/util/gles/GLRender;)Landroid/view/TextureView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender$2;->a:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->h(Lcom/ksyun/media/streamer/util/gles/GLRender;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender$2;->a:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-static {v0, p1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->b(Lcom/ksyun/media/streamer/util/gles/GLRender;Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceTextureSizeChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLRender"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender$2;->a:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->h(Lcom/ksyun/media/streamer/util/gles/GLRender;)Landroid/view/TextureView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender$2;->a:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->h(Lcom/ksyun/media/streamer/util/gles/GLRender;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender$2;->a:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-static {p1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->j(Lcom/ksyun/media/streamer/util/gles/GLRender;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/ksyun/media/streamer/util/gles/GLRender$2;->a:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-static {p2}, Lcom/ksyun/media/streamer/util/gles/GLRender;->j(Lcom/ksyun/media/streamer/util/gles/GLRender;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

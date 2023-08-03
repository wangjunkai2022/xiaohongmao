.class Lcom/ksyun/media/streamer/util/gles/GLRender$10;
.super Ljava/lang/Object;
.source "GLRender.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/util/gles/GLRender;->e()V
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

    iput-object p1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender$10;->a:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender$10;->a:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->a(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender$10;->a:Lcom/ksyun/media/streamer/util/gles/GLRender;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/SurfaceTexture;

    invoke-static {v0, p1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->a(Lcom/ksyun/media/streamer/util/gles/GLRender;Landroid/graphics/SurfaceTexture;)V

    .line 4
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender$10;->a:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-static {p1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->g(Lcom/ksyun/media/streamer/util/gles/GLRender;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender$10;->a:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-static {p1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->e(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    .line 6
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender$10;->a:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-static {p1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->f(Lcom/ksyun/media/streamer/util/gles/GLRender;)Lcom/ksyun/media/streamer/util/gles/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/util/gles/b;->e()Z

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender$10;->a:Lcom/ksyun/media/streamer/util/gles/GLRender;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v2, p1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->a(Lcom/ksyun/media/streamer/util/gles/GLRender;II)V

    goto :goto_0

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender$10;->a:Lcom/ksyun/media/streamer/util/gles/GLRender;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/SurfaceTexture;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v2, v3, p1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->a(Lcom/ksyun/media/streamer/util/gles/GLRender;Landroid/graphics/SurfaceTexture;II)V

    .line 9
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender$10;->a:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-static {p1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->d(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    :goto_0
    return v1
.end method

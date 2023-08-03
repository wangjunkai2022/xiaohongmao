.class Lcom/ksyun/media/streamer/util/gles/GLRender$9;
.super Ljava/lang/Object;
.source "GLRender.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


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

    iput-object p1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender$9;->a:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    iget-object p1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender$9;->a:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-static {p1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->e(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    iget-object p1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender$9;->a:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-static {p1, p2, p3}, Lcom/ksyun/media/streamer/util/gles/GLRender;->a(Lcom/ksyun/media/streamer/util/gles/GLRender;II)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    iget-object p1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender$9;->a:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-static {p1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->d(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    return-void
.end method

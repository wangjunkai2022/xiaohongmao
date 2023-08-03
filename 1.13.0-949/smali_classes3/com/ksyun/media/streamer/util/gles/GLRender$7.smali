.class Lcom/ksyun/media/streamer/util/gles/GLRender$7;
.super Ljava/lang/Object;
.source "GLRender.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


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

    iput-object p1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender$7;->a:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    .line 2
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender$7;->a:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-static {v1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->c(Lcom/ksyun/media/streamer/util/gles/GLRender;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    return-object p1

    nop

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0

    .line 1
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 2
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender$7;->a:Lcom/ksyun/media/streamer/util/gles/GLRender;

    sget-object p2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-static {p1, p2}, Lcom/ksyun/media/streamer/util/gles/GLRender;->a(Lcom/ksyun/media/streamer/util/gles/GLRender;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;

    return-void
.end method

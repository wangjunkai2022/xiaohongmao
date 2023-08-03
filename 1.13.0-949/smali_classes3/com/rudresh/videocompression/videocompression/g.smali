.class public Lcom/rudresh/videocompression/videocompression/g;
.super Ljava/lang/Object;
.source "OutputSurface.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# static fields
.field private static final j:I = 0x4

.field private static final k:I = 0x3098


# instance fields
.field private a:Ljavax/microedition/khronos/egl/EGL10;

.field private b:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private c:Ljavax/microedition/khronos/egl/EGLContext;

.field private d:Ljavax/microedition/khronos/egl/EGLSurface;

.field private e:Landroid/graphics/SurfaceTexture;

.field private f:Landroid/view/Surface;

.field private final g:Ljava/lang/Object;

.field private h:Z

.field private i:Lcom/rudresh/videocompression/videocompression/i;


# direct methods
.method public constructor <init>(IIIIIFZ)V
    .locals 10

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Lcom/rudresh/videocompression/videocompression/g;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 3
    iput-object v1, v0, Lcom/rudresh/videocompression/videocompression/g;->c:Ljavax/microedition/khronos/egl/EGLContext;

    .line 4
    iput-object v1, v0, Lcom/rudresh/videocompression/videocompression/g;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 5
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/rudresh/videocompression/videocompression/g;->g:Ljava/lang/Object;

    .line 6
    new-instance v1, Lcom/rudresh/videocompression/videocompression/i;

    move-object v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/rudresh/videocompression/videocompression/i;-><init>(IIIIIFZ)V

    iput-object v1, v0, Lcom/rudresh/videocompression/videocompression/g;->i:Lcom/rudresh/videocompression/videocompression/i;

    .line 7
    invoke-virtual {v1}, Lcom/rudresh/videocompression/videocompression/i;->h()V

    .line 8
    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget-object v2, v0, Lcom/rudresh/videocompression/videocompression/g;->i:Lcom/rudresh/videocompression/videocompression/i;

    invoke-virtual {v2}, Lcom/rudresh/videocompression/videocompression/i;->f()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, v0, Lcom/rudresh/videocompression/videocompression/g;->e:Landroid/graphics/SurfaceTexture;

    .line 9
    invoke-virtual {v1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 10
    new-instance v1, Landroid/view/Surface;

    iget-object v2, v0, Lcom/rudresh/videocompression/videocompression/g;->e:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, v0, Lcom/rudresh/videocompression/videocompression/g;->f:Landroid/view/Surface;

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/rudresh/videocompression/videocompression/g;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p1

    const/16 v0, 0x3000

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "EGL error encountered (see log)"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private e(II)V
    .locals 9

    .line 1
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/rudresh/videocompression/videocompression/g;->a:Ljavax/microedition/khronos/egl/EGL10;

    .line 2
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/rudresh/videocompression/videocompression/g;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 3
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v1, :cond_4

    .line 4
    iget-object v1, p0, Lcom/rudresh/videocompression/videocompression/g;->a:Ljavax/microedition/khronos/egl/EGL10;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xd

    new-array v3, v0, [I

    .line 5
    fill-array-data v3, :array_0

    const/4 v0, 0x1

    new-array v7, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    new-array v6, v0, [I

    .line 6
    iget-object v1, p0, Lcom/rudresh/videocompression/videocompression/g;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/rudresh/videocompression/videocompression/g;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v5, 0x1

    move-object v4, v7

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    new-array v2, v1, [I

    .line 7
    fill-array-data v2, :array_1

    .line 8
    iget-object v3, p0, Lcom/rudresh/videocompression/videocompression/g;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/rudresh/videocompression/videocompression/g;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v5, 0x0

    aget-object v6, v7, v5

    sget-object v8, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v3, v4, v6, v8, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    iput-object v2, p0, Lcom/rudresh/videocompression/videocompression/g;->c:Ljavax/microedition/khronos/egl/EGLContext;

    const-string v2, "eglCreateContext"

    .line 9
    invoke-direct {p0, v2}, Lcom/rudresh/videocompression/videocompression/g;->c(Ljava/lang/String;)V

    .line 10
    iget-object v2, p0, Lcom/rudresh/videocompression/videocompression/g;->c:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    new-array v2, v2, [I

    const/16 v3, 0x3057

    aput v3, v2, v5

    aput p1, v2, v0

    const/4 p1, 0x2

    const/16 v0, 0x3056

    aput v0, v2, p1

    aput p2, v2, v1

    const/4 p1, 0x4

    const/16 p2, 0x3038

    aput p2, v2, p1

    .line 11
    iget-object p1, p0, Lcom/rudresh/videocompression/videocompression/g;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object p2, p0, Lcom/rudresh/videocompression/videocompression/g;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v0, v7, v5

    invoke-interface {p1, p2, v0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/rudresh/videocompression/videocompression/g;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    const-string p1, "eglCreatePbufferSurface"

    .line 12
    invoke-direct {p0, p1}, Lcom/rudresh/videocompression/videocompression/g;->c(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/rudresh/videocompression/videocompression/g;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz p1, :cond_0

    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "surface was null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "null context"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unable to find RGB888+pbuffer EGL config"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_3
    iput-object v2, p0, Lcom/rudresh/videocompression/videocompression/g;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 18
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unable to initialize EGL10"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unable to get EGL10 display"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3033
        0x1
        0x3040
        0x4
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/g;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/rudresh/videocompression/videocompression/g;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/rudresh/videocompression/videocompression/g;->g:Ljava/lang/Object;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 4
    iget-boolean v1, p0, Lcom/rudresh/videocompression/videocompression/g;->h:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Surface frame wait timed out"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v1

    .line 6
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcom/rudresh/videocompression/videocompression/g;->h:Z

    .line 8
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/g;->e:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    return-void

    :catchall_0
    move-exception v1

    .line 10
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/g;->i:Lcom/rudresh/videocompression/videocompression/i;

    invoke-virtual {v0, p1, p2}, Lcom/rudresh/videocompression/videocompression/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/g;->i:Lcom/rudresh/videocompression/videocompression/i;

    iget-object v1, p0, Lcom/rudresh/videocompression/videocompression/g;->e:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/rudresh/videocompression/videocompression/i;->c(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public f()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/g;->f:Landroid/view/Surface;

    return-object v0
.end method

.method public g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/g;->a:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_1

    const-string v0, "before makeCurrent"

    .line 2
    invoke-direct {p0, v0}, Lcom/rudresh/videocompression/videocompression/g;->c(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/g;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/rudresh/videocompression/videocompression/g;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/rudresh/videocompression/videocompression/g;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/rudresh/videocompression/videocompression/g;->c:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not configured for makeCurrent"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/g;->a:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iget-object v1, p0, Lcom/rudresh/videocompression/videocompression/g;->c:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/g;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/rudresh/videocompression/videocompression/g;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/g;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/rudresh/videocompression/videocompression/g;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/rudresh/videocompression/videocompression/g;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 5
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/g;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/rudresh/videocompression/videocompression/g;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/rudresh/videocompression/videocompression/g;->c:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/g;->i:Lcom/rudresh/videocompression/videocompression/i;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/rudresh/videocompression/videocompression/i;->g()V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/g;->f:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/rudresh/videocompression/videocompression/g;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 10
    iput-object v0, p0, Lcom/rudresh/videocompression/videocompression/g;->c:Ljavax/microedition/khronos/egl/EGLContext;

    .line 11
    iput-object v0, p0, Lcom/rudresh/videocompression/videocompression/g;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 12
    iput-object v0, p0, Lcom/rudresh/videocompression/videocompression/g;->a:Ljavax/microedition/khronos/egl/EGL10;

    .line 13
    iput-object v0, p0, Lcom/rudresh/videocompression/videocompression/g;->i:Lcom/rudresh/videocompression/videocompression/i;

    .line 14
    iput-object v0, p0, Lcom/rudresh/videocompression/videocompression/g;->f:Landroid/view/Surface;

    .line 15
    iput-object v0, p0, Lcom/rudresh/videocompression/videocompression/g;->e:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/rudresh/videocompression/videocompression/g;->g:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/rudresh/videocompression/videocompression/g;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/rudresh/videocompression/videocompression/g;->h:Z

    .line 4
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/g;->g:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit p1

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mFrameAvailable already set, frame could be dropped"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

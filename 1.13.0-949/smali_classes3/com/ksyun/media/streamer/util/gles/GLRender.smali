.class public Lcom/ksyun/media/streamer/util/gles/GLRender;
.super Ljava/lang/Object;
.source "GLRender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/streamer/util/gles/GLRender$ScreenShotListener;,
        Lcom/ksyun/media/streamer/util/gles/GLRender$OnReleasedListener;,
        Lcom/ksyun/media/streamer/util/gles/GLRender$OnDrawFrameListener;,
        Lcom/ksyun/media/streamer/util/gles/GLRender$OnSizeChangedListener;,
        Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;,
        Lcom/ksyun/media/streamer/util/gles/GLRender$GLRenderListener;
    }
.end annotation


# static fields
.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_READY:I = 0x1

.field public static final STATE_RELEASED:I = 0x2

.field public static final VIEW_TYPE_GLSURFACEVIEW:I = 0x1

.field public static final VIEW_TYPE_NONE:I = 0x0

.field public static final VIEW_TYPE_OFFSCREEN:I = 0x3

.field public static final VIEW_TYPE_TEXTUREVIEW:I = 0x2

.field private static final a:Ljava/lang/String; = "GLRender"

.field private static final b:Z = true

.field private static final c:I = 0x0

.field private static final d:I = 0x1

.field private static final e:I = 0x2

.field private static final f:I = 0x3


# instance fields
.field private A:Ljava/lang/Runnable;

.field private B:Landroid/opengl/GLSurfaceView$EGLContextFactory;

.field private C:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

.field private D:Landroid/opengl/GLSurfaceView$Renderer;

.field private E:Landroid/view/TextureView$SurfaceTextureListener;

.field private g:Landroid/view/TextureView;

.field private final h:Ljava/lang/Object;

.field private i:Landroid/os/HandlerThread;

.field private j:Landroid/os/Handler;

.field private k:Lcom/ksyun/media/streamer/util/gles/a;

.field private l:Lcom/ksyun/media/streamer/util/gles/c;

.field private m:Ljavax/microedition/khronos/egl/EGLContext;

.field private n:Ljavax/microedition/khronos/egl/EGLContext;

.field private o:Landroid/opengl/EGLContext;

.field private p:Ljava/util/concurrent/atomic/AtomicInteger;

.field private q:J

.field private r:Landroid/opengl/GLSurfaceView;

.field private final s:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/ksyun/media/streamer/util/gles/GLRender$GLRenderListener;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/ksyun/media/streamer/util/gles/GLRender$OnSizeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/ksyun/media/streamer/util/gles/GLRender$OnDrawFrameListener;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/ksyun/media/streamer/util/gles/GLRender$OnReleasedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private z:Lcom/ksyun/media/streamer/util/gles/FboManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->h:Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/ksyun/media/streamer/util/gles/GLRender$6;

    invoke-direct {v0, p0}, Lcom/ksyun/media/streamer/util/gles/GLRender$6;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->A:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Lcom/ksyun/media/streamer/util/gles/GLRender$7;

    invoke-direct {v0, p0}, Lcom/ksyun/media/streamer/util/gles/GLRender$7;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->B:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    .line 5
    new-instance v0, Lcom/ksyun/media/streamer/util/gles/GLRender$8;

    invoke-direct {v0, p0}, Lcom/ksyun/media/streamer/util/gles/GLRender$8;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->C:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    .line 6
    new-instance v0, Lcom/ksyun/media/streamer/util/gles/GLRender$9;

    invoke-direct {v0, p0}, Lcom/ksyun/media/streamer/util/gles/GLRender$9;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->D:Landroid/opengl/GLSurfaceView$Renderer;

    .line 7
    new-instance v0, Lcom/ksyun/media/streamer/util/gles/GLRender$2;

    invoke-direct {v0, p0}, Lcom/ksyun/media/streamer/util/gles/GLRender$2;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->E:Landroid/view/TextureView$SurfaceTextureListener;

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->s:Ljava/util/LinkedList;

    .line 10
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->t:Ljava/util/LinkedList;

    .line 11
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->u:Ljava/util/LinkedList;

    .line 12
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->v:Ljava/util/LinkedList;

    .line 13
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->w:Ljava/util/LinkedList;

    .line 14
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->x:Ljava/util/LinkedList;

    .line 15
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->y:Ljava/util/LinkedList;

    .line 16
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->m:Ljavax/microedition/khronos/egl/EGLContext;

    .line 17
    iput-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->n:Ljavax/microedition/khronos/egl/EGLContext;

    .line 18
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->o:Landroid/opengl/EGLContext;

    .line 19
    new-instance v0, Lcom/ksyun/media/streamer/util/gles/FboManager;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/util/gles/FboManager;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->z:Lcom/ksyun/media/streamer/util/gles/FboManager;

    return-void
.end method

.method public constructor <init>(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/ksyun/media/streamer/util/gles/GLRender;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->m:Ljavax/microedition/khronos/egl/EGLContext;

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/util/gles/GLRender;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->n:Ljavax/microedition/khronos/egl/EGLContext;

    return-object p1
.end method

.method private a()V
    .locals 3

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->q:J

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->z:Lcom/ksyun/media/streamer/util/gles/FboManager;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/FboManager;->init()V

    const/16 v0, 0xbe2

    .line 8
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0x302

    const/16 v1, 0x303

    .line 9
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 10
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->n:Ljavax/microedition/khronos/egl/EGLContext;

    .line 11
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->o:Landroid/opengl/EGLContext;

    .line 12
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 13
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->s:Ljava/util/LinkedList;

    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->s:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ksyun/media/streamer/util/gles/GLRender$GLRenderListener;

    .line 15
    invoke-interface {v2}, Lcom/ksyun/media/streamer/util/gles/GLRender$GLRenderListener;->onReady()V

    goto :goto_0

    .line 16
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->t:Ljava/util/LinkedList;

    monitor-enter v1

    .line 18
    :try_start_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->t:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;

    .line 19
    invoke-interface {v2}, Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;->onReady()V

    goto :goto_1

    .line 20
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 21
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private a(II)V
    .locals 3

    const/4 v0, 0x0

    .line 22
    invoke-static {v0, v0, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 23
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->s:Ljava/util/LinkedList;

    monitor-enter v0

    .line 24
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->s:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ksyun/media/streamer/util/gles/GLRender$GLRenderListener;

    .line 25
    invoke-interface {v2, p1, p2}, Lcom/ksyun/media/streamer/util/gles/GLRender$GLRenderListener;->onSizeChanged(II)V

    goto :goto_0

    .line 26
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->u:Ljava/util/LinkedList;

    monitor-enter v1

    .line 28
    :try_start_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->u:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ksyun/media/streamer/util/gles/GLRender$OnSizeChangedListener;

    .line 29
    invoke-interface {v2, p1, p2}, Lcom/ksyun/media/streamer/util/gles/GLRender$OnSizeChangedListener;->onSizeChanged(II)V

    goto :goto_1

    .line 30
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 31
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private a(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->l:Lcom/ksyun/media/streamer/util/gles/c;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 39
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/util/gles/c;->f()V

    .line 40
    iput-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->l:Lcom/ksyun/media/streamer/util/gles/c;

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->k:Lcom/ksyun/media/streamer/util/gles/a;

    if-eqz p1, :cond_2

    .line 42
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/util/gles/a;->a()V

    .line 43
    iput-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->k:Lcom/ksyun/media/streamer/util/gles/a;

    :cond_2
    return-void
.end method

.method private a(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .line 32
    new-instance v0, Lcom/ksyun/media/streamer/util/gles/a;

    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->m:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ksyun/media/streamer/util/gles/a;-><init>(Ljavax/microedition/khronos/egl/EGLContext;I)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->k:Lcom/ksyun/media/streamer/util/gles/a;

    if-eqz p1, :cond_0

    .line 33
    new-instance p2, Lcom/ksyun/media/streamer/util/gles/c;

    invoke-direct {p2, v0, p1}, Lcom/ksyun/media/streamer/util/gles/c;-><init>(Lcom/ksyun/media/streamer/util/gles/a;Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->l:Lcom/ksyun/media/streamer/util/gles/c;

    goto :goto_0

    .line 34
    :cond_0
    new-instance p1, Lcom/ksyun/media/streamer/util/gles/c;

    invoke-direct {p1, v0, p2, p3}, Lcom/ksyun/media/streamer/util/gles/c;-><init>(Lcom/ksyun/media/streamer/util/gles/a;II)V

    iput-object p1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->l:Lcom/ksyun/media/streamer/util/gles/c;

    .line 35
    :goto_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->l:Lcom/ksyun/media/streamer/util/gles/c;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/util/gles/b;->d()V

    .line 36
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->l:Lcom/ksyun/media/streamer/util/gles/c;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/util/gles/b;->a()I

    move-result p1

    iget-object p2, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->l:Lcom/ksyun/media/streamer/util/gles/c;

    invoke-virtual {p2}, Lcom/ksyun/media/streamer/util/gles/b;->b()I

    move-result p2

    invoke-static {v2, v2, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/util/gles/GLRender;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->c()V

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/util/gles/GLRender;II)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/ksyun/media/streamer/util/gles/GLRender;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/util/gles/GLRender;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->a(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/util/gles/GLRender;Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/ksyun/media/streamer/util/gles/GLRender;->a(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method private b()V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->x:Ljava/util/LinkedList;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->x:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 5
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->x:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 8
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->s:Ljava/util/LinkedList;

    monitor-enter v1

    .line 9
    :try_start_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->s:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ksyun/media/streamer/util/gles/GLRender$GLRenderListener;

    .line 10
    invoke-interface {v2}, Lcom/ksyun/media/streamer/util/gles/GLRender$GLRenderListener;->onDrawFrame()V

    goto :goto_1

    .line 11
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->v:Ljava/util/LinkedList;

    monitor-enter v0

    .line 13
    :try_start_2
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->v:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ksyun/media/streamer/util/gles/GLRender$OnDrawFrameListener;

    .line 14
    invoke-interface {v2}, Lcom/ksyun/media/streamer/util/gles/GLRender$OnDrawFrameListener;->onDrawFrame()V

    goto :goto_2

    .line 15
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    invoke-direct {p0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->d()V

    return-void

    :catchall_0
    move-exception v1

    .line 17
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    .line 18
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    .line 19
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method private b(Landroid/graphics/SurfaceTexture;)V
    .locals 4

    .line 20
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->i:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    .line 22
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->j:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 23
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->j:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-static {v1, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 24
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->j:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    :try_start_1
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->i:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :try_start_2
    iput-object v2, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->i:Landroid/os/HandlerThread;

    .line 27
    :goto_0
    iput-object v2, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->j:Landroid/os/Handler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_3
    const-string p1, "GLRender"

    const-string v1, "GLThread Interrupted!"

    .line 28
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 29
    :try_start_4
    iput-object v2, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->i:Landroid/os/HandlerThread;

    goto :goto_0

    :goto_1
    iput-object v2, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->i:Landroid/os/HandlerThread;

    .line 30
    iput-object v2, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->j:Landroid/os/Handler;

    throw p1

    :cond_0
    if-eqz p1, :cond_1

    .line 31
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 32
    :cond_1
    :goto_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/util/gles/GLRender;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->d()V

    return-void
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/util/gles/GLRender;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->b(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method static synthetic c(Lcom/ksyun/media/streamer/util/gles/GLRender;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->m:Ljavax/microedition/khronos/egl/EGLContext;

    return-object p0
.end method

.method private c()V
    .locals 3

    .line 2
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->o:Landroid/opengl/EGLContext;

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->s:Ljava/util/LinkedList;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->s:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ksyun/media/streamer/util/gles/GLRender$GLRenderListener;

    .line 6
    invoke-interface {v2}, Lcom/ksyun/media/streamer/util/gles/GLRender$GLRenderListener;->onReleased()V

    goto :goto_0

    .line 7
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->w:Ljava/util/LinkedList;

    monitor-enter v1

    .line 9
    :try_start_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->w:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ksyun/media/streamer/util/gles/GLRender$OnReleasedListener;

    .line 10
    invoke-interface {v2}, Lcom/ksyun/media/streamer/util/gles/GLRender$OnReleasedListener;->onReleased()V

    goto :goto_1

    .line 11
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 12
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private d()V
    .locals 3

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->y:Ljava/util/LinkedList;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->y:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->y:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 6
    iget-object v2, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->y:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic d(Lcom/ksyun/media/streamer/util/gles/GLRender;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->a()V

    return-void
.end method

.method private e()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->i:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "GLThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->i:Landroid/os/HandlerThread;

    .line 5
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 6
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->i:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/ksyun/media/streamer/util/gles/GLRender$10;

    invoke-direct {v3, p0}, Lcom/ksyun/media/streamer/util/gles/GLRender$10;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->j:Landroid/os/Handler;

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic e(Lcom/ksyun/media/streamer/util/gles/GLRender;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->b()V

    return-void
.end method

.method static synthetic f(Lcom/ksyun/media/streamer/util/gles/GLRender;)Lcom/ksyun/media/streamer/util/gles/c;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->l:Lcom/ksyun/media/streamer/util/gles/c;

    return-object p0
.end method

.method static synthetic g(Lcom/ksyun/media/streamer/util/gles/GLRender;)Landroid/os/HandlerThread;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->i:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic h(Lcom/ksyun/media/streamer/util/gles/GLRender;)Landroid/view/TextureView;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->g:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic i(Lcom/ksyun/media/streamer/util/gles/GLRender;)V
    .locals 0

    invoke-direct {p0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->e()V

    return-void
.end method

.method static synthetic j(Lcom/ksyun/media/streamer/util/gles/GLRender;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->j:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public addListener(Lcom/ksyun/media/streamer/util/gles/GLRender$GLRenderListener;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->s:Ljava/util/LinkedList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->s:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 4
    new-instance v1, Lcom/ksyun/media/streamer/util/gles/GLRender$1;

    invoke-direct {v1, p0, p1}, Lcom/ksyun/media/streamer/util/gles/GLRender$1;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Lcom/ksyun/media/streamer/util/gles/GLRender$GLRenderListener;)V

    invoke-virtual {p0, v1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->queueEvent(Ljava/lang/Runnable;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->s:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnDrawFrameListener;)V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->v:Ljava/util/LinkedList;

    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->v:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 19
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->v:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;)V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->t:Ljava/util/LinkedList;

    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->t:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 10
    new-instance v1, Lcom/ksyun/media/streamer/util/gles/GLRender$3;

    invoke-direct {v1, p0, p1}, Lcom/ksyun/media/streamer/util/gles/GLRender$3;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;)V

    invoke-virtual {p0, v1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->queueEvent(Ljava/lang/Runnable;)V

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->t:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnReleasedListener;)V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->w:Ljava/util/LinkedList;

    monitor-enter v0

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->w:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 23
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->w:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnSizeChangedListener;)V
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->u:Ljava/util/LinkedList;

    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->u:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 15
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->u:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getCurrentView()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->r:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->g:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEGL10Context()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->n:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method

.method public getEGLContext()Landroid/opengl/EGLContext;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->o:Landroid/opengl/EGLContext;

    return-object v0
.end method

.method public getFboManager()Lcom/ksyun/media/streamer/util/gles/FboManager;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->z:Lcom/ksyun/media/streamer/util/gles/FboManager;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getViewType()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->r:Landroid/opengl/GLSurfaceView;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->g:Landroid/view/TextureView;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->i:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->g:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    const/4 v0, 0x3

    return v0
.end method

.method public init(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->release()V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3
    invoke-direct {p0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->e()V

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->j:Landroid/os/Handler;

    invoke-static {v0, v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->j:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->j:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->j:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public init(Landroid/opengl/GLSurfaceView;)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->r:Landroid/opengl/GLSurfaceView;

    if-ne p1, v0, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->release()V

    .line 10
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->C:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 12
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->B:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    const/4 v0, 0x2

    .line 13
    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 14
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->D:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 15
    invoke-virtual {p1, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :catch_0
    iput-object p1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->r:Landroid/opengl/GLSurfaceView;

    .line 17
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object p1

    const-string v0, "display_glsurface"

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->updateFunctionPoint(Ljava/lang/String;)V

    return-void
.end method

.method public init(Landroid/view/TextureView;)V
    .locals 3

    .line 18
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->g:Landroid/view/TextureView;

    if-ne p1, v0, :cond_0

    return-void

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->release()V

    .line 20
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 21
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->E:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 22
    iput-object p1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->g:Landroid/view/TextureView;

    .line 23
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "GLRender"

    const-string v2, "TextureView already initialized"

    .line 24
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-direct {p0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->e()V

    .line 26
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->j:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->j:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 28
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->j:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v2

    .line 29
    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result p1

    .line 30
    invoke-static {v0, v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    .line 31
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->j:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 32
    :cond_1
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object p1

    const-string v0, "display_textureview"

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->updateFunctionPoint(Ljava/lang/String;)V

    return-void
.end method

.method public isGLRenderThread()Z
    .locals 5

    iget-wide v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->q:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->r:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->r:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/ksyun/media/streamer/util/gles/GLRender$4;

    invoke-direct {v1, p0}, Lcom/ksyun/media/streamer/util/gles/GLRender$4;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->r:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->r:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    :cond_1
    return-void
.end method

.method public queueDrawFrameAppends(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->y:Ljava/util/LinkedList;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->y:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GLRender"

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glContext not ready, queue event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->x:Ljava/util/LinkedList;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->x:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 5
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->r:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 9
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->r:Landroid/opengl/GLSurfaceView;

    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->A:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->j:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->j:Landroid/os/Handler;

    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->A:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const-string v0, "GLRender"

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glContext lost, drop event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public release()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->r:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->r:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/ksyun/media/streamer/util/gles/GLRender$5;

    invoke-direct {v1, p0}, Lcom/ksyun/media/streamer/util/gles/GLRender$5;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->r:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->r:Landroid/opengl/GLSurfaceView;

    .line 5
    iput-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->g:Landroid/view/TextureView;

    .line 6
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 7
    invoke-direct {p0, v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->b(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public removeListener(Lcom/ksyun/media/streamer/util/gles/GLRender$GLRenderListener;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->s:Ljava/util/LinkedList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->s:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnDrawFrameListener;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->v:Ljava/util/LinkedList;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->v:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->t:Ljava/util/LinkedList;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->t:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnReleasedListener;)V
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->w:Ljava/util/LinkedList;

    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->w:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 15
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnSizeChangedListener;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->u:Ljava/util/LinkedList;

    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->u:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public requestRender()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->r:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->j:Landroid/os/Handler;

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method

.method public setInitEGL10Context(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender;->m:Ljavax/microedition/khronos/egl/EGLContext;

    return-void
.end method

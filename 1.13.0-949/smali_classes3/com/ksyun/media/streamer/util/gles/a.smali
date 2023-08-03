.class public final Lcom/ksyun/media/streamer/util/gles/a;
.super Ljava/lang/Object;
.source "Egl10Core.java"


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static final c:Ljava/lang/String; = "Egl10Core"

.field private static final d:I = 0x3098

.field private static final e:I = 0x4

.field private static final f:I = 0x40

.field private static final g:I = 0x3142


# instance fields
.field private h:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private i:Ljavax/microedition/khronos/egl/EGLContext;

.field private j:Ljavax/microedition/khronos/egl/EGLConfig;

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/streamer/util/gles/a;-><init>(Ljavax/microedition/khronos/egl/EGLContext;I)V

    return-void
.end method

.method public constructor <init>(Ljavax/microedition/khronos/egl/EGLContext;I)V
    .locals 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/gles/a;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 4
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/gles/a;->i:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/ksyun/media/streamer/util/gles/a;->j:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v2, -0x1

    .line 6
    iput v2, p0, Lcom/ksyun/media/streamer/util/gles/a;->k:I

    if-nez p1, :cond_0

    move-object p1, v0

    .line 7
    :cond_0
    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/a;->d()Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/gles/a;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 8
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v2, :cond_5

    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 9
    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/a;->d()Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v3

    iget-object v4, p0, Lcom/ksyun/media/streamer/util/gles/a;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v3, v4, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v2

    if-eqz v2, :cond_4

    and-int/lit8 v1, p2, 0x2

    const/4 v2, 0x3

    if-eqz v1, :cond_1

    .line 10
    invoke-direct {p0, p2, v2}, Lcom/ksyun/media/streamer/util/gles/a;->b(II)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    if-eqz v1, :cond_1

    new-array v3, v2, [I

    .line 11
    fill-array-data v3, :array_0

    .line 12
    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/a;->d()Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v4

    iget-object v5, p0, Lcom/ksyun/media/streamer/util/gles/a;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v4, v5, v1, p1, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v3

    .line 13
    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/a;->d()Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v4

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    const/16 v5, 0x3000

    if-ne v4, v5, :cond_1

    .line 14
    iput-object v1, p0, Lcom/ksyun/media/streamer/util/gles/a;->j:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 15
    iput-object v3, p0, Lcom/ksyun/media/streamer/util/gles/a;->i:Ljavax/microedition/khronos/egl/EGLContext;

    .line 16
    iput v2, p0, Lcom/ksyun/media/streamer/util/gles/a;->k:I

    .line 17
    :cond_1
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/a;->i:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v1, v3, :cond_3

    .line 18
    invoke-direct {p0, p2, v0}, Lcom/ksyun/media/streamer/util/gles/a;->b(II)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object p2

    if-eqz p2, :cond_2

    new-array v1, v2, [I

    .line 19
    fill-array-data v1, :array_1

    .line 20
    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/a;->d()Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v2

    iget-object v3, p0, Lcom/ksyun/media/streamer/util/gles/a;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, p2, p1, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    const-string v1, "eglCreateContext"

    .line 21
    invoke-direct {p0, v1}, Lcom/ksyun/media/streamer/util/gles/a;->b(Ljava/lang/String;)V

    .line 22
    iput-object p2, p0, Lcom/ksyun/media/streamer/util/gles/a;->j:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 23
    iput-object p1, p0, Lcom/ksyun/media/streamer/util/gles/a;->i:Ljavax/microedition/khronos/egl/EGLContext;

    .line 24
    iput v0, p0, Lcom/ksyun/media/streamer/util/gles/a;->k:I

    goto :goto_0

    .line 25
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unable to find a suitable EGLConfig"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    new-array p1, p1, [I

    .line 26
    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/a;->d()Ljavax/microedition/khronos/egl/EGL10;

    move-result-object p2

    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/a;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/a;->i:Ljavax/microedition/khronos/egl/EGLContext;

    const/16 v2, 0x3098

    invoke-interface {p2, v0, v1, v2, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglQueryContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;I[I)Z

    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EGLContext created, client version "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    aget p1, p1, v0

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Egl10Core"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 28
    :cond_4
    iput-object v1, p0, Lcom/ksyun/media/streamer/util/gles/a;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 29
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unable to initialize EGL14"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unable to get EGL14 display"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 4
        0x3098
        0x3
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method public static a(Ljava/lang/String;)V
    .locals 5

    .line 22
    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/a;->d()Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    .line 23
    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/a;->d()Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v1

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    .line 24
    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/a;->d()Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v2

    const/16 v3, 0x3059

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current EGL ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "): display="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", context="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", surface="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Egl10Core"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private b(II)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 11

    const/4 v0, 0x3

    const/4 v1, 0x4

    if-lt p2, v0, :cond_0

    const/16 v2, 0x44

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    const/16 v3, 0xd

    new-array v6, v3, [I

    const/16 v3, 0x3024

    const/4 v10, 0x0

    aput v3, v6, v10

    const/4 v3, 0x1

    const/16 v4, 0x8

    aput v4, v6, v3

    const/4 v5, 0x2

    const/16 v7, 0x3023

    aput v7, v6, v5

    aput v4, v6, v0

    const/16 v0, 0x3022

    aput v0, v6, v1

    const/4 v0, 0x5

    aput v4, v6, v0

    const/4 v0, 0x6

    const/16 v1, 0x3021

    aput v1, v6, v0

    const/4 v0, 0x7

    aput v4, v6, v0

    const/16 v0, 0x3040

    aput v0, v6, v4

    const/16 v0, 0x9

    aput v2, v6, v0

    const/16 v0, 0xa

    const/16 v1, 0x3038

    aput v1, v6, v0

    const/16 v2, 0xb

    aput v10, v6, v2

    const/16 v4, 0xc

    aput v1, v6, v4

    and-int/2addr p1, v3

    if-eqz p1, :cond_1

    const/16 p1, 0x3142

    aput p1, v6, v0

    aput v3, v6, v2

    :cond_1
    new-array p1, v3, [Ljavax/microedition/khronos/egl/EGLConfig;

    new-array v9, v3, [I

    .line 1
    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/a;->d()Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v4

    iget-object v5, p0, Lcom/ksyun/media/streamer/util/gles/a;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v8, 0x1

    move-object v7, p1

    invoke-interface/range {v4 .. v9}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unable to find RGB8888 / "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " EGLConfig"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Egl10Core"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_2
    aget-object p1, p1, v10

    return-object p1
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .line 9
    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/a;->d()Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_0

    return-void

    .line 10
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": EGL error: 0x"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static d()Ljavax/microedition/khronos/egl/EGL10;
    .locals 1

    .line 3
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    return-object v0
.end method


# virtual methods
.method public a(Ljavax/microedition/khronos/egl/EGLSurface;I)I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 21
    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/a;->d()Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v1

    iget-object v2, p0, Lcom/ksyun/media/streamer/util/gles/a;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, p1, p2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    const/4 p1, 0x0

    aget p1, v0, p1

    return p1
.end method

.method public a(II)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3057

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 p1, 0x2

    const/16 v1, 0x3056

    aput v1, v0, p1

    const/4 p1, 0x3

    aput p2, v0, p1

    const/4 p1, 0x4

    const/16 p2, 0x3038

    aput p2, v0, p1

    .line 14
    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/a;->d()Ljavax/microedition/khronos/egl/EGL10;

    move-result-object p1

    iget-object p2, p0, Lcom/ksyun/media/streamer/util/gles/a;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/a;->j:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {p1, p2, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    const-string p2, "eglCreatePbufferSurface"

    .line 15
    invoke-direct {p0, p2}, Lcom/ksyun/media/streamer/util/gles/a;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    return-object p1

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "surface was null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 4

    .line 9
    instance-of v0, p1, Landroid/view/Surface;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid surface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 11
    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/a;->d()Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v1

    iget-object v2, p0, Lcom/ksyun/media/streamer/util/gles/a;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/ksyun/media/streamer/util/gles/a;->j:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v1, v2, v3, p1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    const-string v0, "eglCreateWindowSurface"

    .line 12
    invoke-direct {p0, v0}, Lcom/ksyun/media/streamer/util/gles/a;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    return-object p1

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "surface was null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/a;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/a;->d()Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/a;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 3
    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/a;->d()Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/a;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/ksyun/media/streamer/util/gles/a;->i:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 4
    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/a;->d()Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/a;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 5
    :cond_0
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/gles/a;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 6
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/gles/a;->i:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/ksyun/media/streamer/util/gles/a;->j:Ljavax/microedition/khronos/egl/EGLConfig;

    return-void
.end method

.method public a(Ljavax/microedition/khronos/egl/EGLSurface;)V
    .locals 2

    .line 8
    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/a;->d()Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/a;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    return-void
.end method

.method public a(Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;)V
    .locals 3

    .line 17
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/a;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_0

    const-string v0, "Egl10Core"

    const-string v1, "NOTE: makeCurrent w/o display"

    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_0
    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/a;->d()Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/a;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/ksyun/media/streamer/util/gles/a;->i:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, p1, p2, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "eglMakeCurrent(draw,read) failed"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .locals 4

    .line 7
    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/a;->d()Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/a;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljavax/microedition/khronos/egl/EGLSurface;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/a;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_0

    const-string v0, "Egl10Core"

    const-string v1, "NOTE: makeCurrent w/o display"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/a;->d()Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/a;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/ksyun/media/streamer/util/gles/a;->i:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, p1, p1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "eglMakeCurrent failed"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/ksyun/media/streamer/util/gles/a;->k:I

    return v0
.end method

.method public c(Ljavax/microedition/khronos/egl/EGLSurface;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/a;->d()Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/a;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result p1

    return p1
.end method

.method public d(Ljavax/microedition/khronos/egl/EGLSurface;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/a;->i:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/a;->d()Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v1

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/a;->d()Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    const/16 v1, 0x3059

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected finalize()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/a;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v1, :cond_0

    const-string v0, "Egl10Core"

    const-string v1, "WARNING: EglCore was not explicitly released -- state may be leaked"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/util/gles/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

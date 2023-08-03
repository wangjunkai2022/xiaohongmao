.class public Lcom/ksyun/media/streamer/util/gles/e;
.super Ljava/lang/Object;
.source "EglSurfaceBase.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# static fields
.field protected static final a:Ljava/lang/String; = "EglSurfaceBase"


# instance fields
.field protected b:Lcom/ksyun/media/streamer/util/gles/d;

.field private c:Landroid/opengl/EGLSurface;

.field private d:I

.field private e:I


# direct methods
.method protected constructor <init>(Lcom/ksyun/media/streamer/util/gles/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/gles/e;->c:Landroid/opengl/EGLSurface;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/ksyun/media/streamer/util/gles/e;->d:I

    .line 4
    iput v0, p0, Lcom/ksyun/media/streamer/util/gles/e;->e:I

    .line 5
    iput-object p1, p0, Lcom/ksyun/media/streamer/util/gles/e;->b:Lcom/ksyun/media/streamer/util/gles/d;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/ksyun/media/streamer/util/gles/e;->d:I

    return v0
.end method

.method public a(II)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/e;->c:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/e;->b:Lcom/ksyun/media/streamer/util/gles/d;

    invoke-virtual {v0, p1, p2}, Lcom/ksyun/media/streamer/util/gles/d;->a(II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/gles/e;->c:Landroid/opengl/EGLSurface;

    .line 8
    iput p1, p0, Lcom/ksyun/media/streamer/util/gles/e;->d:I

    .line 9
    iput p2, p0, Lcom/ksyun/media/streamer/util/gles/e;->e:I

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "surface already created"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(J)V
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/e;->b:Lcom/ksyun/media/streamer/util/gles/d;

    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/e;->c:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1, p1, p2}, Lcom/ksyun/media/streamer/util/gles/d;->a(Landroid/opengl/EGLSurface;J)V

    return-void
.end method

.method public a(Lcom/ksyun/media/streamer/util/gles/e;)V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/e;->b:Lcom/ksyun/media/streamer/util/gles/d;

    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/e;->c:Landroid/opengl/EGLSurface;

    iget-object p1, p1, Lcom/ksyun/media/streamer/util/gles/e;->c:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1, p1}, Lcom/ksyun/media/streamer/util/gles/d;->a(Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/e;->c:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/e;->b:Lcom/ksyun/media/streamer/util/gles/d;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/util/gles/d;->a(Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/streamer/util/gles/e;->c:Landroid/opengl/EGLSurface;

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/e;->b:Lcom/ksyun/media/streamer/util/gles/d;

    const/16 v1, 0x3057

    invoke-virtual {v0, p1, v1}, Lcom/ksyun/media/streamer/util/gles/d;->a(Landroid/opengl/EGLSurface;I)I

    move-result p1

    iput p1, p0, Lcom/ksyun/media/streamer/util/gles/e;->d:I

    .line 4
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/gles/e;->b:Lcom/ksyun/media/streamer/util/gles/d;

    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/e;->c:Landroid/opengl/EGLSurface;

    const/16 v1, 0x3056

    invoke-virtual {p1, v0, v1}, Lcom/ksyun/media/streamer/util/gles/d;->a(Landroid/opengl/EGLSurface;I)I

    move-result p1

    iput p1, p0, Lcom/ksyun/media/streamer/util/gles/e;->e:I

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "surface already created"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/util/gles/e;->e:I

    return v0
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/e;->b:Lcom/ksyun/media/streamer/util/gles/d;

    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/e;->c:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/util/gles/d;->a(Landroid/opengl/EGLSurface;)V

    .line 2
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/gles/e;->c:Landroid/opengl/EGLSurface;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/ksyun/media/streamer/util/gles/e;->e:I

    iput v0, p0, Lcom/ksyun/media/streamer/util/gles/e;->d:I

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/e;->b:Lcom/ksyun/media/streamer/util/gles/d;

    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/e;->c:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/util/gles/d;->b(Landroid/opengl/EGLSurface;)V

    return-void
.end method

.method public e()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/e;->b:Lcom/ksyun/media/streamer/util/gles/d;

    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/e;->c:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/util/gles/d;->c(Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "EglSurfaceBase"

    const-string v2, "WARNING: swapBuffers() failed"

    .line 2
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

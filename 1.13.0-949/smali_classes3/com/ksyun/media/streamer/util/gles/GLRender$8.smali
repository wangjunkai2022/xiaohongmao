.class Lcom/ksyun/media/streamer/util/gles/GLRender$8;
.super Ljava/lang/Object;
.source "GLRender.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


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

    iput-object p1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender$8;->a:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 8

    const/16 v0, 0xb

    new-array v3, v0, [I

    .line 1
    fill-array-data v3, :array_0

    const/4 v0, 0x1

    new-array v7, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    new-array v6, v0, [I

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v4, v7

    .line 2
    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "GLRender"

    const-string p2, "unable to find RGB8888 / 2 EGLConfig"

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    aget-object p1, v7, p1

    return-object p1

    nop

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
        0x3040
        0x4
        0x3038
    .end array-data
.end method

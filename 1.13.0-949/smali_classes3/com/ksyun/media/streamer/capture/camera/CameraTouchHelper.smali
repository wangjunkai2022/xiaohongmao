.class public Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;
.super Ljava/lang/Object;
.source "CameraTouchHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper$OnTouchListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "CameraTouchHelper"

.field private static final b:Z = true


# instance fields
.field private c:Lcom/ksyun/media/streamer/capture/CameraCapture;

.field private d:Lcom/ksyun/media/streamer/capture/camera/ICameraHintView;

.field private e:F

.field private f:Z

.field private g:Z

.field private h:I

.field private i:F

.field private j:F

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper$OnTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:I

.field private n:Landroid/os/Handler;

.field private o:Ljava/lang/Runnable;

.field private p:Ljava/lang/Runnable;

.field private q:Z

.field private r:I

.field private s:I

.field private t:Landroid/graphics/Rect;

.field private u:Landroid/graphics/Rect;

.field private v:Z

.field private w:I

.field private x:F

.field private y:J

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3daaaaab

    .line 2
    iput v0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->e:F

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->f:Z

    .line 4
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->g:Z

    const/16 v0, 0x1388

    .line 5
    iput v0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->h:I

    const/high16 v0, 0x40800000    # 4.0f

    .line 6
    iput v0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->i:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    iput v0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->j:F

    .line 8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->t:Landroid/graphics/Rect;

    .line 9
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->u:Landroid/graphics/Rect;

    .line 10
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->n:Landroid/os/Handler;

    .line 11
    new-instance v0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper$1;

    invoke-direct {v0, p0}, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper$1;-><init>(Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->o:Ljava/lang/Runnable;

    .line 12
    new-instance v0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper$2;

    invoke-direct {v0, p0}, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper$2;-><init>(Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->p:Ljava/lang/Runnable;

    .line 13
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->k:Ljava/util/List;

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)F
    .locals 4

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    mul-float v1, v1, v1

    mul-float v0, v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private a(IIII)I
    .locals 0

    add-int/2addr p2, p4

    if-ge p1, p2, :cond_0

    return p2

    :cond_0
    sub-int/2addr p3, p4

    if-le p1, p3, :cond_1

    return p3

    :cond_1
    return p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;)Lcom/ksyun/media/streamer/capture/CameraCapture;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->c:Lcom/ksyun/media/streamer/capture/CameraCapture;

    return-object p0
.end method

.method private a(I)V
    .locals 10

    .line 63
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->u:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->l:I

    int-to-float v4, v3

    div-float/2addr v2, v4

    iget v4, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->r:I

    int-to-float v5, v4

    mul-float v2, v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v2, v2, v5

    int-to-float v6, v4

    sub-float/2addr v2, v6

    iget v6, v1, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v7, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->m:I

    int-to-float v8, v7

    div-float/2addr v6, v8

    iget v8, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->s:I

    int-to-float v9, v8

    mul-float v6, v6, v9

    mul-float v6, v6, v5

    int-to-float v9, v8

    sub-float/2addr v6, v9

    iget v9, v1, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    int-to-float v3, v3

    div-float/2addr v9, v3

    int-to-float v3, v4

    mul-float v9, v9, v3

    mul-float v9, v9, v5

    int-to-float v3, v4

    sub-float/2addr v9, v3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    int-to-float v3, v7

    div-float/2addr v1, v3

    int-to-float v3, v8

    mul-float v1, v1, v3

    mul-float v1, v1, v5

    int-to-float v3, v8

    sub-float/2addr v1, v3

    invoke-direct {v0, v2, v6, v9, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 64
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    rsub-int p1, p1, 0x168

    int-to-float p1, p1

    const/4 v2, 0x0

    .line 65
    invoke-virtual {v1, p1, v2, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 66
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 67
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->t:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    return-void
.end method

.method private a(Landroid/hardware/Camera$Size;I)V
    .locals 5

    .line 50
    iget v0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->m:I

    .line 51
    iget v1, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->l:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 52
    rem-int/lit16 p2, p2, 0xb4

    const/high16 v0, 0x447a0000    # 1000.0f

    const/16 v2, 0x3e8

    if-nez p2, :cond_1

    .line 53
    iget p2, p1, Landroid/hardware/Camera$Size;->width:I

    int-to-float v3, p2

    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    int-to-float v4, p1

    div-float/2addr v3, v4

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    int-to-float p2, p2

    div-float/2addr p2, v1

    int-to-float p1, p1

    div-float/2addr p2, p1

    mul-float p2, p2, v0

    float-to-int p1, p2

    .line 54
    iput p1, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->s:I

    .line 55
    iput v2, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->r:I

    goto :goto_0

    .line 56
    :cond_0
    iput v2, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->s:I

    int-to-float p1, p1

    mul-float p1, p1, v1

    int-to-float p2, p2

    div-float/2addr p1, p2

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 57
    iput p1, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->r:I

    goto :goto_0

    .line 58
    :cond_1
    iget p2, p1, Landroid/hardware/Camera$Size;->height:I

    int-to-float v3, p2

    iget p1, p1, Landroid/hardware/Camera$Size;->width:I

    int-to-float v4, p1

    div-float/2addr v3, v4

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2

    int-to-float p2, p2

    div-float/2addr p2, v1

    int-to-float p1, p1

    div-float/2addr p2, p1

    mul-float p2, p2, v0

    float-to-int p1, p2

    .line 59
    iput p1, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->s:I

    .line 60
    iput v2, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->r:I

    goto :goto_0

    .line 61
    :cond_2
    iput v2, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->s:I

    int-to-float p1, p1

    mul-float p1, p1, v1

    int-to-float p2, p2

    div-float/2addr p1, p2

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 62
    iput p1, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->r:I

    :goto_0
    return-void
.end method

.method private declared-synchronized a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2

    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 69
    :goto_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper$OnTouchListener;

    invoke-interface {v1, p1, p2}, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(FF)Z
    .locals 4

    .line 25
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->c:Lcom/ksyun/media/streamer/capture/CameraCapture;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 26
    :cond_0
    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 27
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v3, "auto"

    .line 28
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    .line 29
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->b(FF)V

    .line 30
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p1

    .line 31
    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->c:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-virtual {p2}, Lcom/ksyun/media/streamer/capture/CameraCapture;->getCameraDisplayOrientation()I

    move-result p2

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->a(Landroid/hardware/Camera$Size;I)V

    .line 33
    invoke-direct {p0, p2}, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->a(I)V

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "touchRect: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->u:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " focusRect: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->t:Landroid/graphics/Rect;

    .line 35
    invoke-virtual {p2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraTouchHelper"

    .line 36
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    new-instance p2, Landroid/hardware/Camera$Area;

    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->t:Landroid/graphics/Rect;

    const/16 v2, 0x3e8

    invoke-direct {p2, v1, v2}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    .line 40
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 42
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 43
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->c:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->setCameraParameters(Landroid/hardware/Camera$Parameters;)Z

    .line 44
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->c:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->cancelAutoFocus()V

    .line 45
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->c:Lcom/ksyun/media/streamer/capture/CameraCapture;

    new-instance p2, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper$3;

    invoke-direct {p2, p0}, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper$3;-><init>(Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;)V

    invoke-virtual {p1, p2}, Lcom/ksyun/media/streamer/capture/CameraCapture;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 46
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->d:Lcom/ksyun/media/streamer/capture/camera/ICameraHintView;

    if-eqz p1, :cond_3

    .line 47
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->n:Landroid/os/Handler;

    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->p:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 48
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->n:Landroid/os/Handler;

    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->o:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 49
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->d:Lcom/ksyun/media/streamer/capture/camera/ICameraHintView;

    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->u:Landroid/graphics/Rect;

    invoke-interface {p1, p2}, Lcom/ksyun/media/streamer/capture/camera/ICameraHintView;->startFocus(Landroid/graphics/Rect;)V

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method private a(IZ)Z
    .locals 8

    .line 6
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->c:Lcom/ksyun/media/streamer/capture/CameraCapture;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 8
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    if-eqz p2, :cond_3

    .line 9
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result p1

    iput p1, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->z:I

    return v1

    .line 10
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 11
    iget-wide v4, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->y:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x28

    cmp-long p2, v4, v6

    if-gez p2, :cond_4

    return v1

    .line 12
    :cond_4
    iput-wide v2, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->y:J

    .line 13
    iget p2, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->l:I

    iget v2, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->m:I

    if-ge p2, v2, :cond_5

    goto :goto_0

    :cond_5
    move p2, v2

    .line 14
    :goto_0
    div-int/lit8 p2, p2, 0x2

    .line 15
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v2

    .line 16
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v3

    .line 17
    iget v4, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->i:F

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    move v6, v2

    :goto_1
    if-ltz v6, :cond_7

    .line 18
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lt v4, v7, :cond_6

    move v2, v6

    goto :goto_2

    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_7
    :goto_2
    if-gez v6, :cond_8

    const/4 v2, 0x0

    .line 19
    :cond_8
    iget v4, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->z:I

    iget v6, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->j:F

    int-to-float p1, p1

    mul-float v6, v6, p1

    int-to-float p1, v2

    mul-float v6, v6, p1

    int-to-float p1, p2

    div-float/2addr v6, p1

    float-to-int p1, v6

    add-int/2addr p1, v4

    if-gez p1, :cond_9

    goto :goto_3

    :cond_9
    if-le p1, v2, :cond_a

    move v1, v2

    goto :goto_3

    :cond_a
    move v1, p1

    :goto_3
    if-eq v1, v4, :cond_b

    .line 20
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 21
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->c:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->setCameraParameters(Landroid/hardware/Camera$Parameters;)Z

    .line 22
    :cond_b
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->d:Lcom/ksyun/media/streamer/capture/camera/ICameraHintView;

    if-eqz p1, :cond_c

    .line 23
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v5

    .line 24
    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->d:Lcom/ksyun/media/streamer/capture/camera/ICameraHintView;

    invoke-interface {p2, p1}, Lcom/ksyun/media/streamer/capture/camera/ICameraHintView;->updateZoomRatio(F)V

    :cond_c
    const/4 p1, 0x1

    return p1

    :cond_d
    :goto_4
    return v1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->q:Z

    return p1
.end method

.method private b(FF)V
    .locals 4

    .line 2
    iget v0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->l:I

    iget v1, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->m:I

    if-ge v0, v1, :cond_0

    int-to-float v1, v0

    goto :goto_0

    :cond_0
    int-to-float v1, v1

    :goto_0
    iget v2, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->e:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    float-to-int p1, p1

    const/4 v2, 0x0

    .line 3
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->a(IIII)I

    move-result p1

    float-to-int p2, p2

    .line 4
    iget v0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->m:I

    invoke-direct {p0, p2, v2, v0, v1}, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->a(IIII)I

    move-result p2

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->u:Landroid/graphics/Rect;

    sub-int v2, p1, v1

    sub-int v3, p2, v1

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, v2, v3, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->q:Z

    return p0
.end method

.method static synthetic c(Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;)Lcom/ksyun/media/streamer/capture/camera/ICameraHintView;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->d:Lcom/ksyun/media/streamer/capture/camera/ICameraHintView;

    return-object p0
.end method

.method static synthetic d(Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;)I
    .locals 0

    iget p0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->h:I

    return p0
.end method

.method static synthetic e(Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->o:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic f(Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->n:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic g(Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->p:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized addTouchListener(Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper$OnTouchListener;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
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

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->l:I

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->m:I

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 4
    iput-boolean v1, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->v:Z

    .line 5
    iput v2, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->w:I

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    const/4 v4, 0x2

    if-ne v0, v3, :cond_1

    .line 6
    iput-boolean v2, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->v:Z

    .line 7
    iget v0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->w:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->w:I

    if-ne v0, v4, :cond_5

    .line 8
    invoke-direct {p0, p2}, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->a(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->x:F

    .line 9
    invoke-direct {p0, v1, v2}, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->a(IZ)Z

    goto :goto_0

    :cond_1
    const/4 v3, 0x6

    if-ne v0, v3, :cond_2

    .line 10
    iget v0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->w:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->w:I

    goto :goto_0

    :cond_2
    if-ne v0, v4, :cond_3

    .line 11
    iget v0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->w:I

    if-lt v0, v4, :cond_5

    .line 12
    invoke-direct {p0, p2}, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->a(Landroid/view/MotionEvent;)F

    move-result v0

    .line 13
    iget v3, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->x:F

    sub-float/2addr v0, v3

    float-to-int v0, v0

    .line 14
    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->a(IZ)Z

    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_5

    .line 15
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->v:Z

    if-nez v0, :cond_4

    .line 16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->a(FF)Z

    .line 17
    :cond_4
    iput-boolean v1, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->v:Z

    .line 18
    iput v1, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->w:I

    .line 19
    :cond_5
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->a(Landroid/view/View;Landroid/view/MotionEvent;)V

    return v2
.end method

.method public declared-synchronized removeAllTouchListener()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeTouchListener(Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper$OnTouchListener;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
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

.method public setCameraCapture(Lcom/ksyun/media/streamer/capture/CameraCapture;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->c:Lcom/ksyun/media/streamer/capture/CameraCapture;

    return-void
.end method

.method public setCameraHintView(Lcom/ksyun/media/streamer/capture/camera/ICameraHintView;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->d:Lcom/ksyun/media/streamer/capture/camera/ICameraHintView;

    return-void
.end method

.method public setEnableTouchFocus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->f:Z

    return-void
.end method

.method public setEnableZoom(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->g:Z

    return-void
.end method

.method public setFocusAreaRadius(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 1
    iput p1, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->e:F

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "radius must be > 0 && < 0.5"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxZoomRatio(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    iput p1, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->i:F

    return-void
.end method

.method public setRefocusDelay(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->h:I

    return-void
.end method

.method public setZoomSpeed(F)V
    .locals 3

    const/high16 v0, 0x41200000    # 10.0f

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    const p1, 0x3dcccccd    # 0.1f

    goto :goto_0

    :cond_0
    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 p1, 0x41200000    # 10.0f

    :cond_1
    :goto_0
    iput p1, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->j:F

    return-void
.end method

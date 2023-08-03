.class public Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;
.super Ljava/lang/Object;
.source "ImgTexToBuf.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$a;,
        Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$ErrorListener;
    }
.end annotation


# static fields
.field public static final ERROR_UNKNOWN:I = -0x2

.field public static final ERROR_UNSUPPORTED:I = -0x1

.field private static final d:Ljava/lang/String; = "ImgTexToBuf"

.field private static final e:Z = false

.field private static final f:Ljava/lang/String; = "precision mediump float;\nvarying vec2 vTextureCoord;\n\nvec3 Rgb2Yuv( vec3 rgb ) {\n    lowp float  y = rgb.x *  .299 + rgb.y *  .587 + rgb.z *  .1140 + 0.0;\n    lowp float  u = rgb.x * -.169 + rgb.y * -.331 + rgb.z *  .4990 + 0.5;\n    lowp float  v = rgb.x *  .499 + rgb.y * -.418 + rgb.z * -.0813 + 0.5;\n    return vec3(y,u,v);\n}\n\nvoid main() {\n    gl_FragColor = vec4(Rgb2Yuv(texture2D(sTexture, vTextureCoord).rgb), 1);\n}\n"

.field private static final g:I = 0x1

.field private static final h:I = 0x2

.field private static final i:I = 0x3


# instance fields
.field protected volatile a:Z

.field protected b:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private j:Lcom/ksyun/media/streamer/util/gles/GLRender;

.field private k:Z

.field private l:Lcom/ksyun/media/streamer/util/gles/d;

.field private m:Landroid/view/Surface;

.field public mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/SinkPin<",
            "Lcom/ksyun/media/streamer/framework/ImgTexFrame;",
            ">;"
        }
    .end annotation
.end field

.field public mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "Lcom/ksyun/media/streamer/framework/ImgBufFrame;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/ksyun/media/streamer/util/gles/f;

.field private o:I

.field private p:I

.field private q:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

.field private r:Landroid/media/ImageReader;

.field private s:Lcom/ksyun/media/streamer/util/FrameBufferCache;

.field private t:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

.field private u:Landroid/os/HandlerThread;

.field private v:Landroid/os/Handler;

.field private w:Landroid/os/ConditionVariable;

.field private final x:Landroid/os/Handler;

.field private y:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$ErrorListener;

.field private z:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->p:I

    .line 3
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->w:Landroid/os/ConditionVariable;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->a:Z

    .line 5
    new-instance v1, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$1;

    invoke-direct {v1, p0}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$1;-><init>(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->z:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;

    .line 6
    new-instance v1, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$a;-><init>(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$1;)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    .line 7
    new-instance v1, Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-direct {v1}, Lcom/ksyun/media/streamer/framework/SrcPin;-><init>()V

    iput-object v1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    .line 8
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->x:Landroid/os/Handler;

    .line 11
    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->j:Lcom/ksyun/media/streamer/util/gles/GLRender;

    .line 12
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->z:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->addListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;)V

    .line 13
    invoke-direct {p0}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->a()V

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->o:I

    return p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;)Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$ErrorListener;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->y:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$ErrorListener;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 7
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImgTexToBuf"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->u:Landroid/os/HandlerThread;

    .line 8
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 9
    new-instance v0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$3;

    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->u:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$3;-><init>(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->v:Landroid/os/Handler;

    return-void
.end method

.method private a(I)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->x:Landroid/os/Handler;

    new-instance v1, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$2;

    invoke-direct {v1, p0, p1}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$2;-><init>(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Landroid/opengl/EGLContext;)V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->l:Lcom/ksyun/media/streamer/util/gles/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->n:Lcom/ksyun/media/streamer/util/gles/f;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/e;->d()V

    .line 69
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->n:Lcom/ksyun/media/streamer/util/gles/f;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/e;->c()V

    .line 70
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->l:Lcom/ksyun/media/streamer/util/gles/d;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/d;->a()V

    .line 71
    new-instance v0, Lcom/ksyun/media/streamer/util/gles/d;

    invoke-direct {v0, p1, v1}, Lcom/ksyun/media/streamer/util/gles/d;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->l:Lcom/ksyun/media/streamer/util/gles/d;

    .line 72
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->n:Lcom/ksyun/media/streamer/util/gles/f;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/util/gles/f;->a(Lcom/ksyun/media/streamer/util/gles/d;)V

    goto :goto_0

    .line 73
    :cond_0
    new-instance v0, Lcom/ksyun/media/streamer/util/gles/d;

    invoke-direct {v0, p1, v1}, Lcom/ksyun/media/streamer/util/gles/d;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->l:Lcom/ksyun/media/streamer/util/gles/d;

    .line 74
    new-instance p1, Lcom/ksyun/media/streamer/util/gles/f;

    iget-object v2, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->m:Landroid/view/Surface;

    invoke-direct {p1, v0, v2}, Lcom/ksyun/media/streamer/util/gles/f;-><init>(Lcom/ksyun/media/streamer/util/gles/d;Landroid/view/Surface;)V

    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->n:Lcom/ksyun/media/streamer/util/gles/f;

    .line 75
    :goto_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->n:Lcom/ksyun/media/streamer/util/gles/f;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/util/gles/e;->d()V

    .line 76
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->n:Lcom/ksyun/media/streamer/util/gles/f;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/util/gles/e;->a()I

    move-result p1

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->n:Lcom/ksyun/media/streamer/util/gles/f;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/e;->b()I

    move-result v0

    invoke-static {v1, v1, p1, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;Lcom/ksyun/media/streamer/framework/ImgTexFormat;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->a(Lcom/ksyun/media/streamer/framework/ImgTexFormat;)V

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->a(Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V

    return-void
.end method

.method private a(Lcom/ksyun/media/streamer/framework/ImgTexFormat;)V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->q:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->r:Landroid/media/ImageReader;

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->width:I

    iget v2, p1, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->width:I

    if-ne v1, v2, :cond_0

    iget v0, v0, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->height:I

    iget v1, p1, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->height:I

    if-eq v0, v1, :cond_1

    .line 46
    :cond_0
    invoke-direct {p0}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->b()V

    .line 47
    :cond_1
    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->q:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->t:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    .line 49
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->r:Landroid/media/ImageReader;

    if-nez v0, :cond_2

    .line 50
    iget v0, p1, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->width:I

    iget p1, p1, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->height:I

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->r:Landroid/media/ImageReader;

    .line 51
    invoke-virtual {p1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->m:Landroid/view/Surface;

    .line 52
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->r:Landroid/media/ImageReader;

    new-instance v0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$4;

    invoke-direct {v0, p0}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$4;-><init>(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;)V

    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->v:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :cond_2
    return-void
.end method

.method private a(Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V
    .locals 5

    .line 53
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->r:Landroid/media/ImageReader;

    if-eqz v0, :cond_2

    .line 54
    iget v0, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 55
    new-instance p1, Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->t:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/ksyun/media/streamer/framework/ImgBufFrame;-><init>(Lcom/ksyun/media/streamer/framework/ImgBufFormat;Ljava/nio/ByteBuffer;J)V

    .line 56
    iget v0, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    .line 57
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    return-void

    .line 58
    :cond_0
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->k:Z

    if-nez v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->j:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->getEGLContext()Landroid/opengl/EGLContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->a(Landroid/opengl/EGLContext;)V

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->k:Z

    :cond_1
    const/16 v0, 0x4000

    .line 61
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 62
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->b(Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V

    .line 63
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 64
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->n:Lcom/ksyun/media/streamer/util/gles/f;

    iget-wide v1, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    mul-long v1, v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/util/gles/e;->a(J)V

    .line 65
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->n:Lcom/ksyun/media/streamer/util/gles/f;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/e;->e()Z

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->j:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->getFboManager()Lcom/ksyun/media/streamer/util/gles/FboManager;

    move-result-object v0

    iget p1, p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->textureId:I

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/util/gles/FboManager;->unlock(I)Z

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;)Landroid/os/ConditionVariable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->w:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->r:Landroid/media/ImageReader;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 5
    iput-object v1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->r:Landroid/media/ImageReader;

    .line 6
    :cond_0
    iget v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->o:I

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 8
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    .line 9
    iput v2, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->o:I

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->n:Lcom/ksyun/media/streamer/util/gles/f;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/f;->f()V

    .line 12
    iput-object v1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->n:Lcom/ksyun/media/streamer/util/gles/f;

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->l:Lcom/ksyun/media/streamer/util/gles/d;

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/d;->a()V

    .line 15
    iput-object v1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->l:Lcom/ksyun/media/streamer/util/gles/d;

    .line 16
    :cond_3
    iput-object v1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->t:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    .line 17
    iput-object v1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->s:Lcom/ksyun/media/streamer/util/FrameBufferCache;

    .line 18
    iput-boolean v2, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->k:Z

    return-void
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->a(I)V

    return-void
.end method

.method private b(Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V
    .locals 12

    .line 19
    iget-object v0, p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->format:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    .line 20
    iget v1, p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->textureId:I

    .line 21
    iget-object p1, p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->texMatrix:[F

    .line 22
    iget v0, v0, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->colorFormat:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const v3, 0x8d65

    goto :goto_0

    :cond_0
    const/16 v3, 0xde1

    .line 23
    :goto_0
    iget v4, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->o:I

    if-nez v4, :cond_4

    .line 24
    iget v4, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->p:I

    if-ne v4, v2, :cond_1

    const-string v4, "precision mediump float;\nvarying vec2 vTextureCoord;\n\nvec3 Rgb2Yuv( vec3 rgb ) {\n    lowp float  y = rgb.x *  .299 + rgb.y *  .587 + rgb.z *  .1140 + 0.0;\n    lowp float  u = rgb.x * -.169 + rgb.y * -.331 + rgb.z *  .4990 + 0.5;\n    lowp float  v = rgb.x *  .499 + rgb.y * -.418 + rgb.z * -.0813 + 0.5;\n    return vec3(y,u,v);\n}\n\nvoid main() {\n    gl_FragColor = vec4(Rgb2Yuv(texture2D(sTexture, vTextureCoord).rgb), 1);\n}\n"

    goto :goto_1

    :cond_1
    const-string v4, "precision mediump float;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    :goto_1
    if-ne v0, v2, :cond_2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#extension GL_OES_EGL_image_external : require\nuniform samplerExternalOES sTexture;\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 26
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uniform sampler2D sTexture;\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    const-string v2, "uniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    .line 27
    invoke-static {v2, v0}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->o:I

    if-eqz v0, :cond_3

    goto :goto_3

    .line 28
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Created program "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->o:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " failed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImgTexToBuf"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unable to create program"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_4
    :goto_3
    iget v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->o:I

    const-string v2, "aPosition"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 31
    invoke-static {v0, v2}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 32
    iget v2, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->o:I

    const-string v4, "aTextureCoord"

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    .line 33
    invoke-static {v2, v4}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 34
    iget v4, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->o:I

    const-string v5, "uTexMatrix"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    .line 35
    invoke-static {v4, v5}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkLocation(ILjava/lang/String;)V

    const-string v5, "draw start"

    .line 36
    invoke-static {v5}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 37
    iget v5, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->o:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v5, "glUseProgram"

    .line 38
    invoke-static {v5}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    const v5, 0x84c0

    .line 39
    invoke-static {v5}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 40
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v1, 0x1

    const/4 v11, 0x0

    .line 41
    invoke-static {v4, v1, v11, p1, v11}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string p1, "glUniformMatrix4fv"

    .line 42
    invoke-static {p1}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 43
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string p1, "glEnableVertexAttribArray"

    .line 44
    invoke-static {p1}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/16 v8, 0x8

    .line 45
    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->getVertexCoordsBuf()Ljava/nio/FloatBuffer;

    move-result-object v9

    move v4, v0

    .line 46
    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v1, "glVertexAttribPointer"

    .line 47
    invoke-static {v1}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 48
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 49
    invoke-static {p1}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/16 v9, 0x8

    .line 50
    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->getTexCoordsBuf()Ljava/nio/FloatBuffer;

    move-result-object v10

    move v5, v2

    .line 51
    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 52
    invoke-static {v1}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    const/4 p1, 0x5

    const/4 v1, 0x4

    .line 53
    invoke-static {p1, v11, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string p1, "glDrawArrays"

    .line 54
    invoke-static {p1}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 55
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 56
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 57
    invoke-static {v3, v11}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 58
    invoke-static {v11}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method static synthetic c(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;)V
    .locals 0

    invoke-direct {p0}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->b()V

    return-void
.end method

.method static synthetic d(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;)Landroid/os/HandlerThread;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->u:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic e(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->v:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic f(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;)Lcom/ksyun/media/streamer/util/gles/GLRender;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->j:Lcom/ksyun/media/streamer/util/gles/GLRender;

    return-object p0
.end method


# virtual methods
.method protected a(Landroid/media/ImageReader;)V
    .locals 13

    .line 10
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 12
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v2

    if-eqz v0, :cond_7

    .line 13
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    div-long v11, v3, v5

    .line 14
    iget-object v3, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->t:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    const/4 v4, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x3

    if-nez v3, :cond_2

    .line 15
    new-instance v3, Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    iget v7, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->p:I

    iget-object v8, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->q:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    iget v9, v8, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->width:I

    iget v8, v8, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->height:I

    invoke-direct {v3, v7, v9, v8, v1}, Lcom/ksyun/media/streamer/framework/ImgBufFormat;-><init>(IIII)V

    iput-object v3, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->t:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    .line 16
    iget v7, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->p:I

    const/4 v8, 0x1

    if-ne v7, v5, :cond_0

    new-array v7, v8, [I

    .line 17
    iput-object v7, v3, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->stride:[I

    aput v2, v7, v1

    .line 18
    iput v8, v3, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->strideNum:I

    goto :goto_0

    :cond_0
    const/4 v9, 0x6

    if-ne v7, v9, :cond_1

    const/4 v7, 0x4

    new-array v9, v7, [I

    .line 19
    iput-object v9, v3, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->stride:[I

    .line 20
    iget-object v10, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->q:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    iget v10, v10, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->width:I

    aput v10, v9, v1

    aput v1, v9, v8

    aput v1, v9, v4

    aput v1, v9, v6

    .line 21
    iput v7, v3, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->strideNum:I

    .line 22
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v7, v3}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFormatChanged(Ljava/lang/Object;)V

    .line 23
    :cond_2
    iget v3, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->p:I

    if-ne v3, v5, :cond_3

    .line 24
    new-instance v1, Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    iget-object v2, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->t:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    invoke-direct {v1, v2, v0, v11, v12}, Lcom/ksyun/media/streamer/framework/ImgBufFrame;-><init>(Lcom/ksyun/media/streamer/framework/ImgBufFormat;Ljava/nio/ByteBuffer;J)V

    .line 25
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    goto/16 :goto_1

    :cond_3
    if-ne v3, v6, :cond_5

    .line 26
    iget-object v3, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->t:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    iget v5, v3, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->width:I

    iget v3, v3, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->height:I

    mul-int v5, v5, v3

    mul-int/lit8 v5, v5, 0x3

    div-int/2addr v5, v4

    .line 27
    iget-object v3, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->s:Lcom/ksyun/media/streamer/util/FrameBufferCache;

    if-nez v3, :cond_4

    .line 28
    new-instance v3, Lcom/ksyun/media/streamer/util/FrameBufferCache;

    invoke-direct {v3, v1, v5}, Lcom/ksyun/media/streamer/util/FrameBufferCache;-><init>(II)V

    iput-object v3, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->s:Lcom/ksyun/media/streamer/util/FrameBufferCache;

    .line 29
    :cond_4
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->s:Lcom/ksyun/media/streamer/util/FrameBufferCache;

    invoke-virtual {v1, v5}, Lcom/ksyun/media/streamer/util/FrameBufferCache;->poll(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 30
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->t:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    iget v3, v1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->width:I

    iget v1, v1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->height:I

    invoke-static {v0, v2, v3, v1, v10}, Lcom/ksyun/media/streamer/encoder/ColorFormatConvert;->YUVAToI420(Ljava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;)I

    .line 31
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 32
    new-instance v0, Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    iget-object v8, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->t:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    iget-object v9, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->s:Lcom/ksyun/media/streamer/util/FrameBufferCache;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/ksyun/media/streamer/framework/ImgBufFrame;-><init>(Lcom/ksyun/media/streamer/framework/ImgBufFormat;Lcom/ksyun/media/streamer/util/FrameBufferCache;Ljava/nio/ByteBuffer;J)V

    .line 33
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v1, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    .line 34
    invoke-virtual {v0}, Lcom/ksyun/media/streamer/framework/AVBufFrame;->unref()V

    goto :goto_1

    .line 35
    :cond_5
    iget-object v3, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->t:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    iget v4, v3, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->width:I

    iget v3, v3, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->height:I

    mul-int v4, v4, v3

    .line 36
    iget-object v3, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->s:Lcom/ksyun/media/streamer/util/FrameBufferCache;

    if-nez v3, :cond_6

    .line 37
    new-instance v3, Lcom/ksyun/media/streamer/util/FrameBufferCache;

    invoke-direct {v3, v1, v4}, Lcom/ksyun/media/streamer/util/FrameBufferCache;-><init>(II)V

    iput-object v3, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->s:Lcom/ksyun/media/streamer/util/FrameBufferCache;

    .line 38
    :cond_6
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->s:Lcom/ksyun/media/streamer/util/FrameBufferCache;

    invoke-virtual {v1, v4}, Lcom/ksyun/media/streamer/util/FrameBufferCache;->poll(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 39
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->t:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    iget v3, v1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->width:I

    iget v1, v1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->height:I

    invoke-static {v0, v2, v3, v1, v10}, Lcom/ksyun/media/streamer/encoder/ColorFormatConvert;->RGBAToBGR8(Ljava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;)I

    .line 40
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 41
    new-instance v0, Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    iget-object v8, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->t:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    iget-object v9, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->s:Lcom/ksyun/media/streamer/util/FrameBufferCache;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/ksyun/media/streamer/framework/ImgBufFrame;-><init>(Lcom/ksyun/media/streamer/framework/ImgBufFormat;Lcom/ksyun/media/streamer/util/FrameBufferCache;Ljava/nio/ByteBuffer;J)V

    .line 42
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v1, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    .line 43
    invoke-virtual {v0}, Lcom/ksyun/media/streamer/framework/AVBufFrame;->unref()V

    .line 44
    :cond_7
    :goto_1
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    return-void
.end method

.method public getFrameDropped()I
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getFrameSent()I
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksyun/media/streamer/framework/SinkPin<",
            "Lcom/ksyun/media/streamer/framework/ImgTexFrame;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    return-object v0
.end method

.method public getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "Lcom/ksyun/media/streamer/framework/ImgBufFrame;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    return-object v0
.end method

.method public release()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->w:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->j:Lcom/ksyun/media/streamer/util/gles/GLRender;

    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->z:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->removeListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;)V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->u:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->v:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->u:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->u:Landroid/os/HandlerThread;

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    :try_start_1
    const-string v1, "ImgTexToBuf"

    const-string v2, "ImgTexToBuf thread interrupted"

    .line 8
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 9
    :goto_1
    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->u:Landroid/os/HandlerThread;

    throw v1

    :cond_0
    :goto_2
    return-void
.end method

.method public resetFrameStat()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public setErrorListener(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$ErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->y:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$ErrorListener;

    return-void
.end method

.method public setOutputColorFormat(I)V
    .locals 1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "only FMT_RGBA or FMT_I420 supported!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iput p1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->p:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->s:Lcom/ksyun/media/streamer/util/FrameBufferCache;

    return-void
.end method

.method public start()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public stop()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.class public Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "AnimatedFileDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final G:Landroid/os/Handler;

.field private static H:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroid/view/View;

.field protected final C:Ljava/lang/Runnable;

.field private D:Ljava/lang/Runnable;

.field private E:Ljava/lang/Runnable;

.field private final F:Ljava/lang/Runnable;

.field private a:J

.field private b:I

.field private c:I

.field private final d:[I

.field private e:Ljava/lang/Runnable;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/graphics/Bitmap;

.field private i:Z

.field private j:Z

.field private k:Ljava/io/File;

.field private l:Z

.field private m:Landroid/graphics/BitmapShader;

.field private n:Landroid/graphics/BitmapShader;

.field private o:Landroid/graphics/BitmapShader;

.field private p:I

.field private q:Landroid/graphics/RectF;

.field private r:Landroid/graphics/RectF;

.field private s:Landroid/graphics/Matrix;

.field private t:F

.field private u:F

.field private v:Z

.field private final w:Landroid/graphics/Rect;

.field private volatile x:Z

.field private volatile y:Z

.field private volatile z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "gly"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->G:Landroid/os/Handler;

    .line 3
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v1}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->H:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    const/16 v0, 0x32

    .line 2
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->c:I

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 3
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->d:[I

    .line 4
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->q:Landroid/graphics/RectF;

    .line 5
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->r:Landroid/graphics/RectF;

    .line 6
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->s:Landroid/graphics/Matrix;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    iput v1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->t:F

    .line 8
    iput v1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->u:F

    .line 9
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->w:Landroid/graphics/Rect;

    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->A:Landroid/view/View;

    .line 11
    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->B:Landroid/view/View;

    .line 12
    new-instance v1, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$a;

    invoke-direct {v1, p0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$a;-><init>(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->C:Ljava/lang/Runnable;

    .line 13
    new-instance v1, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$b;

    invoke-direct {v1, p0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$b;-><init>(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->D:Ljava/lang/Runnable;

    .line 14
    new-instance v1, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$c;

    invoke-direct {v1, p0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$c;-><init>(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->E:Ljava/lang/Runnable;

    .line 15
    new-instance v1, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$d;

    invoke-direct {v1, p0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$d;-><init>(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->F:Ljava/lang/Runnable;

    .line 16
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->k:Ljava/io/File;

    if-eqz p2, :cond_0

    .line 17
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->createDecoder(Ljava/lang/String;[I)I

    move-result p1

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->z:I

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->j:Z

    :cond_0
    return-void
.end method

.method protected static E(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    sget-object v1, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->G:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private F()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->e:Ljava/lang/Runnable;

    if-nez v0, :cond_2

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->z:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->j:Z

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->i:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->E:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->e:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->C(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->B:Landroid/view/View;

    return-object p0
.end method

.method static synthetic b(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->A:Landroid/view/View;

    return-object p0
.end method

.method static synthetic c(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)[I
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->d:[I

    return-object p0
.end method

.method private static native createDecoder(Ljava/lang/String;[I)I
.end method

.method static synthetic d(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)I
    .locals 0

    iget p0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->b:I

    return p0
.end method

.method private static native destroyDecoder(I)V
.end method

.method static synthetic e(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;I)I
    .locals 0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->b:I

    return p1
.end method

.method static synthetic f(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;I)I
    .locals 0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->c:I

    return p1
.end method

.method static synthetic g(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->y:Z

    return p0
.end method

.method private static native getVideoFrame(ILandroid/graphics/Bitmap;[I)I
.end method

.method static synthetic h(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->j:Z

    return p0
.end method

.method static synthetic i(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->j:Z

    return p1
.end method

.method static synthetic j(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->k:Ljava/io/File;

    return-object p0
.end method

.method static synthetic k(Ljava/lang/String;[I)I
    .locals 0

    invoke-static {p0, p1}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->createDecoder(Ljava/lang/String;[I)I

    move-result p0

    return p0
.end method

.method static synthetic l(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)I
    .locals 0

    iget p0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->p:I

    return p0
.end method

.method static synthetic m(ILandroid/graphics/Bitmap;[I)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->getVideoFrame(ILandroid/graphics/Bitmap;[I)I

    move-result p0

    return p0
.end method

.method static synthetic n(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->D:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic o(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->i:Z

    return p0
.end method

.method static synthetic p(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)I
    .locals 0

    iget p0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->z:I

    return p0
.end method

.method static synthetic q(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;I)I
    .locals 0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->z:I

    return p1
.end method

.method static synthetic r(I)V
    .locals 0

    invoke-static {p0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->destroyDecoder(I)V

    return-void
.end method

.method static synthetic s(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->h:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic t(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->h:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic u(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->e:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic v(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->g:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic w(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;Landroid/graphics/BitmapShader;)Landroid/graphics/BitmapShader;
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->n:Landroid/graphics/BitmapShader;

    return-object p1
.end method

.method static synthetic x(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)Landroid/graphics/BitmapShader;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->o:Landroid/graphics/BitmapShader;

    return-object p0
.end method

.method static synthetic y(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;Landroid/graphics/BitmapShader;)Landroid/graphics/BitmapShader;
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->o:Landroid/graphics/BitmapShader;

    return-object p1
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->z:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->f:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public B()Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;
    .locals 5

    .line 1
    new-instance v0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->k:Ljava/io/File;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;-><init>(Ljava/io/File;Z)V

    .line 2
    iget-object v1, v0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->d:[I

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->d:[I

    aget v4, v3, v2

    aput v4, v1, v2

    const/4 v2, 0x1

    .line 3
    aget v3, v3, v2

    aput v3, v1, v2

    return-object v0
.end method

.method protected C(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->H:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public D()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->B:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->l:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->x:Z

    .line 4
    iput-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->y:Z

    .line 5
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->e:Ljava/lang/Runnable;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 6
    iget v1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->z:I

    if-eqz v1, :cond_1

    .line 7
    iget v1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->z:I

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->destroyDecoder(I)V

    .line 8
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->z:I

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 11
    iput-object v3, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->g:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 12
    :cond_2
    iput-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->i:Z

    .line 13
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 15
    iput-object v3, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->f:Landroid/graphics/Bitmap;

    :cond_4
    return-void
.end method

.method public G(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->A:Landroid/view/View;

    return-void
.end method

.method public H(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->p:I

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    return-void
.end method

.method public I(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->B:Landroid/view/View;

    if-nez p1, :cond_0

    .line 2
    iget-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->l:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->D()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->z:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->j:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->i:Z

    if-eqz v0, :cond_2

    :cond_1
    return-void

    .line 2
    :cond_2
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->x:Z

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->f:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->g:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 4
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->F()V

    goto :goto_0

    .line 5
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->a:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget v2, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->c:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_4

    .line 6
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 7
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->F()V

    .line 8
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->g:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->f:Landroid/graphics/Bitmap;

    .line 9
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->n:Landroid/graphics/BitmapShader;

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->m:Landroid/graphics/BitmapShader;

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->g:Landroid/graphics/Bitmap;

    .line 11
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->n:Landroid/graphics/BitmapShader;

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->a:J

    .line 13
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    .line 14
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->v:Z

    if-eqz v0, :cond_5

    .line 15
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->w:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 16
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->w:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->t:F

    .line 17
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->w:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->u:F

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->v:Z

    .line 19
    :cond_5
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->p:I

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 20
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 21
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 22
    iget v3, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->t:F

    iget v4, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->u:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 23
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->m:Landroid/graphics/BitmapShader;

    if-nez v4, :cond_6

    .line 24
    new-instance v4, Landroid/graphics/BitmapShader;

    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->h:Landroid/graphics/Bitmap;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, v5, v6, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v4, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->m:Landroid/graphics/BitmapShader;

    .line 25
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->m:Landroid/graphics/BitmapShader;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 26
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->q:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->w:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 27
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->s:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 28
    iget v4, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->t:F

    iget v5, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->u:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3727c5ac    # 1.0E-5f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_7

    .line 29
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->w:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 30
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->w:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    float-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 31
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->r:Landroid/graphics/RectF;

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    int-to-float v1, v1

    int-to-float v3, v3

    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 32
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->s:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->r:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->q:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 33
    :cond_7
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->r:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 34
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->s:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->r:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->q:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 35
    :goto_1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->m:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->s:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 36
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->q:Landroid/graphics/RectF;

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->p:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 37
    :cond_8
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->w:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 38
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->t:F

    iget v2, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->u:F

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 39
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 40
    :goto_2
    iget-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->x:Z

    if-eqz p1, :cond_9

    .line 41
    sget-object p1, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->G:Landroid/os/Handler;

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->C:Ljava/lang/Runnable;

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->c:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->D()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 3
    throw v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->d:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->d:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getMinimumHeight()I
    .locals 2

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->d:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getMinimumWidth()I
    .locals 2

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->d:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->x:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->v:Z

    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->x:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->x:Z

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->f:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->F()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->F:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->E(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->x:Z

    return-void
.end method

.method public z()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

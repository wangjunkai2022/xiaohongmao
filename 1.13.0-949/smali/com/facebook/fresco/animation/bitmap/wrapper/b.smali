.class public Lcom/facebook/fresco/animation/bitmap/wrapper/b;
.super Ljava/lang/Object;
.source "AnimatedDrawableBackendFrameRenderer.java"

# interfaces
.implements Lb1/c;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static final e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lb1/b;

.field private b:Lcom/facebook/imagepipeline/animated/base/a;

.field private c:Lcom/facebook/imagepipeline/animated/impl/d;

.field private final d:Lcom/facebook/imagepipeline/animated/impl/d$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/fresco/animation/bitmap/wrapper/b;

    sput-object v0, Lcom/facebook/fresco/animation/bitmap/wrapper/b;->e:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lb1/b;Lcom/facebook/imagepipeline/animated/base/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitmapFrameCache",
            "animatedDrawableBackend"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/facebook/fresco/animation/bitmap/wrapper/b$a;

    invoke-direct {v0, p0}, Lcom/facebook/fresco/animation/bitmap/wrapper/b$a;-><init>(Lcom/facebook/fresco/animation/bitmap/wrapper/b;)V

    iput-object v0, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/b;->d:Lcom/facebook/imagepipeline/animated/impl/d$b;

    .line 3
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/b;->a:Lb1/b;

    .line 4
    iput-object p2, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/b;->b:Lcom/facebook/imagepipeline/animated/base/a;

    .line 5
    new-instance p1, Lcom/facebook/imagepipeline/animated/impl/d;

    invoke-direct {p1, p2, v0}, Lcom/facebook/imagepipeline/animated/impl/d;-><init>(Lcom/facebook/imagepipeline/animated/base/a;Lcom/facebook/imagepipeline/animated/impl/d$b;)V

    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/b;->c:Lcom/facebook/imagepipeline/animated/impl/d;

    return-void
.end method

.method static synthetic a(Lcom/facebook/fresco/animation/bitmap/wrapper/b;)Lb1/b;
    .locals 0

    iget-object p0, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/b;->a:Lb1/b;

    return-object p0
.end method


# virtual methods
.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/b;->b:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/a;->getHeight()I

    move-result v0

    return v0
.end method

.method public e(Landroid/graphics/Rect;)V
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounds"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/b;->b:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/a;->g(Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/a;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/b;->b:Lcom/facebook/imagepipeline/animated/base/a;

    if-eq p1, v0, :cond_0

    .line 3
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/b;->b:Lcom/facebook/imagepipeline/animated/base/a;

    .line 4
    new-instance v0, Lcom/facebook/imagepipeline/animated/impl/d;

    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/b;->d:Lcom/facebook/imagepipeline/animated/impl/d$b;

    invoke-direct {v0, p1, v1}, Lcom/facebook/imagepipeline/animated/impl/d;-><init>(Lcom/facebook/imagepipeline/animated/base/a;Lcom/facebook/imagepipeline/animated/impl/d$b;)V

    iput-object v0, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/b;->c:Lcom/facebook/imagepipeline/animated/impl/d;

    :cond_0
    return-void
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/b;->b:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/a;->getWidth()I

    move-result v0

    return v0
.end method

.method public g(ILandroid/graphics/Bitmap;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "frameNumber",
            "targetBitmap"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/b;->c:Lcom/facebook/imagepipeline/animated/impl/d;

    invoke-virtual {v1, p1, p2}, Lcom/facebook/imagepipeline/animated/impl/d;->g(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p2

    .line 2
    sget-object v1, Lcom/facebook/fresco/animation/bitmap/wrapper/b;->e:Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const-string p1, "Rendering of frame unsuccessful. Frame number: %d"

    invoke-static {v1, p2, p1, v0}, Lp0/a;->t(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

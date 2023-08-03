.class public Lcom/facebook/imagepipeline/animated/factory/b;
.super Ljava/lang/Object;
.source "AnimatedFactoryProvider.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static a:Z

.field private static b:Lcom/facebook/imagepipeline/animated/factory/a;
    .annotation runtime Lr7/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/facebook/imagepipeline/bitmaps/f;Lcom/facebook/imagepipeline/core/f;Lcom/facebook/imagepipeline/cache/j;ZLjava/util/concurrent/ExecutorService;)Lcom/facebook/imagepipeline/animated/factory/a;
    .locals 9
    .param p4    # Ljava/util/concurrent/ExecutorService;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "platformBitmapFactory",
            "executorSupplier",
            "backingCache",
            "downscaleFrameToDrawableDimensions",
            "serialExecutorService"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/bitmaps/f;",
            "Lcom/facebook/imagepipeline/core/f;",
            "Lcom/facebook/imagepipeline/cache/j<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;Z",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Lcom/facebook/imagepipeline/animated/factory/a;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    sget-boolean v0, Lcom/facebook/imagepipeline/animated/factory/b;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    :try_start_0
    const-class v1, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;

    const/4 v2, 0x5

    new-array v3, v2, [Ljava/lang/Class;

    .line 3
    const-class v4, Lcom/facebook/imagepipeline/bitmaps/f;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/facebook/imagepipeline/core/f;

    aput-object v4, v3, v0

    const-class v4, Lcom/facebook/imagepipeline/cache/j;

    const/4 v6, 0x2

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x3

    aput-object v4, v3, v7

    const-class v4, Lcom/facebook/common/executors/g;

    const/4 v8, 0x4

    aput-object v4, v3, v8

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v0

    aput-object p2, v2, v6

    .line 5
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v7

    aput-object p4, v2, v8

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/imagepipeline/animated/factory/a;

    sput-object p0, Lcom/facebook/imagepipeline/animated/factory/b;->b:Lcom/facebook/imagepipeline/animated/factory/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 7
    :goto_0
    sget-object p0, Lcom/facebook/imagepipeline/animated/factory/b;->b:Lcom/facebook/imagepipeline/animated/factory/a;

    if-eqz p0, :cond_0

    .line 8
    sput-boolean v0, Lcom/facebook/imagepipeline/animated/factory/b;->a:Z

    .line 9
    :cond_0
    sget-object p0, Lcom/facebook/imagepipeline/animated/factory/b;->b:Lcom/facebook/imagepipeline/animated/factory/a;

    return-object p0
.end method

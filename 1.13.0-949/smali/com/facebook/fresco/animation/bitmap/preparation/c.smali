.class public Lcom/facebook/fresco/animation/bitmap/preparation/c;
.super Ljava/lang/Object;
.source "DefaultBitmapFramePreparer.java"

# interfaces
.implements Lcom/facebook/fresco/animation/bitmap/preparation/b;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/bitmap/preparation/c$a;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/facebook/imagepipeline/bitmaps/f;

.field private final b:Lb1/c;

.field private final c:Landroid/graphics/Bitmap$Config;

.field private final d:Ljava/util/concurrent/ExecutorService;

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/fresco/animation/bitmap/preparation/c;

    sput-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/c;->f:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/bitmaps/f;Lb1/c;Landroid/graphics/Bitmap$Config;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "platformBitmapFactory",
            "bitmapFrameRenderer",
            "bitmapConfig",
            "executorService"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/c;->a:Lcom/facebook/imagepipeline/bitmaps/f;

    .line 3
    iput-object p2, p0, Lcom/facebook/fresco/animation/bitmap/preparation/c;->b:Lb1/c;

    .line 4
    iput-object p3, p0, Lcom/facebook/fresco/animation/bitmap/preparation/c;->c:Landroid/graphics/Bitmap$Config;

    .line 5
    iput-object p4, p0, Lcom/facebook/fresco/animation/bitmap/preparation/c;->d:Ljava/util/concurrent/ExecutorService;

    .line 6
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/c;->e:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic b()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/c;->f:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/fresco/animation/bitmap/preparation/c;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/c;->e:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic d(Lcom/facebook/fresco/animation/bitmap/preparation/c;)Landroid/graphics/Bitmap$Config;
    .locals 0

    iget-object p0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/c;->c:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method static synthetic e(Lcom/facebook/fresco/animation/bitmap/preparation/c;)Lcom/facebook/imagepipeline/bitmaps/f;
    .locals 0

    iget-object p0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/c;->a:Lcom/facebook/imagepipeline/bitmaps/f;

    return-object p0
.end method

.method static synthetic f(Lcom/facebook/fresco/animation/bitmap/preparation/c;)Lb1/c;
    .locals 0

    iget-object p0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/c;->b:Lb1/c;

    return-object p0
.end method

.method private static g(Lcom/facebook/fresco/animation/backend/a;I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "backend",
            "frameNumber"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public a(Lb1/b;Lcom/facebook/fresco/animation/backend/a;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bitmapFrameCache",
            "animationBackend",
            "frameNumber"
        }
    .end annotation

    .line 1
    invoke-static {p2, p3}, Lcom/facebook/fresco/animation/bitmap/preparation/c;->g(Lcom/facebook/fresco/animation/backend/a;I)I

    move-result v6

    .line 2
    iget-object v7, p0, Lcom/facebook/fresco/animation/bitmap/preparation/c;->e:Landroid/util/SparseArray;

    monitor-enter v7

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/c;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v8, 0x1

    if-eqz v0, :cond_0

    .line 4
    sget-object p1, Lcom/facebook/fresco/animation/bitmap/preparation/c;->f:Ljava/lang/Class;

    const-string p2, "Already scheduled decode job for frame %d"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lp0/a;->V(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    monitor-exit v7

    return v8

    .line 6
    :cond_0
    invoke-interface {p1, p3}, Lb1/b;->h(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    sget-object p1, Lcom/facebook/fresco/animation/bitmap/preparation/c;->f:Ljava/lang/Class;

    const-string p2, "Frame %d is cached already."

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lp0/a;->V(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    monitor-exit v7

    return v8

    .line 9
    :cond_1
    new-instance v9, Lcom/facebook/fresco/animation/bitmap/preparation/c$a;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/fresco/animation/bitmap/preparation/c$a;-><init>(Lcom/facebook/fresco/animation/bitmap/preparation/c;Lcom/facebook/fresco/animation/backend/a;Lb1/b;II)V

    .line 10
    iget-object p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/c;->e:Landroid/util/SparseArray;

    invoke-virtual {p1, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/c;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 12
    monitor-exit v7

    return v8

    :catchall_0
    move-exception p1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

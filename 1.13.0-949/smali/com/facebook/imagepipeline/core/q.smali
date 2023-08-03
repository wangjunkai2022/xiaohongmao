.class public Lcom/facebook/imagepipeline/core/q;
.super Ljava/lang/Object;
.source "ProducerFactory.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static final z:I = 0x5


# instance fields
.field protected a:Landroid/content/ContentResolver;

.field protected b:Landroid/content/res/Resources;

.field protected c:Landroid/content/res/AssetManager;

.field protected final d:Lcom/facebook/common/memory/a;

.field protected final e:Lcom/facebook/imagepipeline/decoder/b;

.field protected final f:Lcom/facebook/imagepipeline/decoder/d;

.field protected final g:Z

.field protected final h:Z

.field protected final i:Z

.field protected final j:Lcom/facebook/imagepipeline/core/f;

.field protected final k:Lcom/facebook/common/memory/g;

.field protected final l:Lcom/facebook/imagepipeline/cache/f;

.field protected final m:Lcom/facebook/imagepipeline/cache/f;

.field protected final n:Lcom/facebook/imagepipeline/cache/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/u<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field protected final o:Lcom/facebook/imagepipeline/cache/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/u<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation
.end field

.field protected final p:Lcom/facebook/imagepipeline/cache/g;

.field protected final q:Lcom/facebook/imagepipeline/cache/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/e<",
            "Lcom/facebook/cache/common/c;",
            ">;"
        }
    .end annotation
.end field

.field protected final r:Lcom/facebook/imagepipeline/cache/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/e<",
            "Lcom/facebook/cache/common/c;",
            ">;"
        }
    .end annotation
.end field

.field protected final s:Lcom/facebook/imagepipeline/bitmaps/f;

.field protected final t:I

.field protected final u:I

.field protected v:Z

.field protected final w:Lcom/facebook/imagepipeline/core/a;

.field protected final x:I

.field protected final y:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/common/memory/a;Lcom/facebook/imagepipeline/decoder/b;Lcom/facebook/imagepipeline/decoder/d;ZZZLcom/facebook/imagepipeline/core/f;Lcom/facebook/common/memory/g;Lcom/facebook/imagepipeline/cache/u;Lcom/facebook/imagepipeline/cache/u;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/g;Lcom/facebook/imagepipeline/bitmaps/f;IIZILcom/facebook/imagepipeline/core/a;ZI)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "byteArrayPool",
            "imageDecoder",
            "progressiveJpegConfig",
            "downsampleEnabled",
            "resizeAndRotateEnabledForNetwork",
            "decodeCancellationEnabled",
            "executorSupplier",
            "pooledByteBufferFactory",
            "bitmapMemoryCache",
            "encodedMemoryCache",
            "defaultBufferedDiskCache",
            "smallImageBufferedDiskCache",
            "cacheKeyFactory",
            "platformBitmapFactory",
            "bitmapPrepareToDrawMinSizeBytes",
            "bitmapPrepareToDrawMaxSizeBytes",
            "bitmapPrepareToDrawForPrefetch",
            "maxBitmapSize",
            "closeableReferenceFactory",
            "keepCancelledFetchAsLowPriority",
            "trackedKeysSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/common/memory/a;",
            "Lcom/facebook/imagepipeline/decoder/b;",
            "Lcom/facebook/imagepipeline/decoder/d;",
            "ZZZ",
            "Lcom/facebook/imagepipeline/core/f;",
            "Lcom/facebook/common/memory/g;",
            "Lcom/facebook/imagepipeline/cache/u<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/u<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/f;",
            "Lcom/facebook/imagepipeline/cache/f;",
            "Lcom/facebook/imagepipeline/cache/g;",
            "Lcom/facebook/imagepipeline/bitmaps/f;",
            "IIZI",
            "Lcom/facebook/imagepipeline/core/a;",
            "ZI)V"
        }
    .end annotation

    move-object v0, p0

    move/from16 v1, p22

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/imagepipeline/core/q;->a:Landroid/content/ContentResolver;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/imagepipeline/core/q;->b:Landroid/content/res/Resources;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/imagepipeline/core/q;->c:Landroid/content/res/AssetManager;

    move-object v2, p2

    .line 5
    iput-object v2, v0, Lcom/facebook/imagepipeline/core/q;->d:Lcom/facebook/common/memory/a;

    move-object v2, p3

    .line 6
    iput-object v2, v0, Lcom/facebook/imagepipeline/core/q;->e:Lcom/facebook/imagepipeline/decoder/b;

    move-object v2, p4

    .line 7
    iput-object v2, v0, Lcom/facebook/imagepipeline/core/q;->f:Lcom/facebook/imagepipeline/decoder/d;

    move v2, p5

    .line 8
    iput-boolean v2, v0, Lcom/facebook/imagepipeline/core/q;->g:Z

    move v2, p6

    .line 9
    iput-boolean v2, v0, Lcom/facebook/imagepipeline/core/q;->h:Z

    move v2, p7

    .line 10
    iput-boolean v2, v0, Lcom/facebook/imagepipeline/core/q;->i:Z

    move-object v2, p8

    .line 11
    iput-object v2, v0, Lcom/facebook/imagepipeline/core/q;->j:Lcom/facebook/imagepipeline/core/f;

    move-object v2, p9

    .line 12
    iput-object v2, v0, Lcom/facebook/imagepipeline/core/q;->k:Lcom/facebook/common/memory/g;

    move-object v2, p10

    .line 13
    iput-object v2, v0, Lcom/facebook/imagepipeline/core/q;->o:Lcom/facebook/imagepipeline/cache/u;

    move-object v2, p11

    .line 14
    iput-object v2, v0, Lcom/facebook/imagepipeline/core/q;->n:Lcom/facebook/imagepipeline/cache/u;

    move-object v2, p12

    .line 15
    iput-object v2, v0, Lcom/facebook/imagepipeline/core/q;->l:Lcom/facebook/imagepipeline/cache/f;

    move-object/from16 v2, p13

    .line 16
    iput-object v2, v0, Lcom/facebook/imagepipeline/core/q;->m:Lcom/facebook/imagepipeline/cache/f;

    move-object/from16 v2, p14

    .line 17
    iput-object v2, v0, Lcom/facebook/imagepipeline/core/q;->p:Lcom/facebook/imagepipeline/cache/g;

    move-object/from16 v2, p15

    .line 18
    iput-object v2, v0, Lcom/facebook/imagepipeline/core/q;->s:Lcom/facebook/imagepipeline/bitmaps/f;

    .line 19
    new-instance v2, Lcom/facebook/imagepipeline/cache/e;

    invoke-direct {v2, v1}, Lcom/facebook/imagepipeline/cache/e;-><init>(I)V

    iput-object v2, v0, Lcom/facebook/imagepipeline/core/q;->q:Lcom/facebook/imagepipeline/cache/e;

    .line 20
    new-instance v2, Lcom/facebook/imagepipeline/cache/e;

    invoke-direct {v2, v1}, Lcom/facebook/imagepipeline/cache/e;-><init>(I)V

    iput-object v2, v0, Lcom/facebook/imagepipeline/core/q;->r:Lcom/facebook/imagepipeline/cache/e;

    move/from16 v1, p16

    .line 21
    iput v1, v0, Lcom/facebook/imagepipeline/core/q;->t:I

    move/from16 v1, p17

    .line 22
    iput v1, v0, Lcom/facebook/imagepipeline/core/q;->u:I

    move/from16 v1, p18

    .line 23
    iput-boolean v1, v0, Lcom/facebook/imagepipeline/core/q;->v:Z

    move/from16 v1, p19

    .line 24
    iput v1, v0, Lcom/facebook/imagepipeline/core/q;->x:I

    move-object/from16 v1, p20

    .line 25
    iput-object v1, v0, Lcom/facebook/imagepipeline/core/q;->w:Lcom/facebook/imagepipeline/core/a;

    move/from16 v1, p21

    .line 26
    iput-boolean v1, v0, Lcom/facebook/imagepipeline/core/q;->y:Z

    return-void
.end method

.method public static a(Lcom/facebook/imagepipeline/producers/q0;)Lcom/facebook/imagepipeline/producers/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/a;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/imagepipeline/producers/a;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/producers/a;-><init>(Lcom/facebook/imagepipeline/producers/q0;)V

    return-object v0
.end method

.method public static h(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/producers/q0;)Lcom/facebook/imagepipeline/producers/k;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputProducer1",
            "inputProducer2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/k;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/imagepipeline/producers/k;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/producers/k;-><init>(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/producers/q0;)V

    return-object v0
.end method


# virtual methods
.method public A(Lcom/facebook/imagepipeline/producers/q0;)Lcom/facebook/imagepipeline/producers/n0;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/n0;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/imagepipeline/producers/n0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/q;->o:Lcom/facebook/imagepipeline/cache/u;

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/q;->p:Lcom/facebook/imagepipeline/cache/g;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/n0;-><init>(Lcom/facebook/imagepipeline/cache/u;Lcom/facebook/imagepipeline/cache/g;Lcom/facebook/imagepipeline/producers/q0;)V

    return-object v0
.end method

.method public B(Lcom/facebook/imagepipeline/producers/q0;)Lcom/facebook/imagepipeline/producers/o0;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/o0;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/o0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/q;->s:Lcom/facebook/imagepipeline/bitmaps/f;

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/q;->j:Lcom/facebook/imagepipeline/core/f;

    .line 2
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/f;->e()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/imagepipeline/producers/o0;-><init>(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/bitmaps/f;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public C()Lcom/facebook/imagepipeline/producers/w0;
    .locals 4

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/w0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/q;->j:Lcom/facebook/imagepipeline/core/f;

    .line 2
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/f;->f()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/q;->k:Lcom/facebook/common/memory/g;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/q;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/w0;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method public D(Lcom/facebook/imagepipeline/producers/q0;ZLs1/d;)Lcom/facebook/imagepipeline/producers/y0;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0
        }
        names = {
            "inputProducer",
            "isResizingEnabled",
            "imageTranscoderFactory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;Z",
            "Ls1/d;",
            ")",
            "Lcom/facebook/imagepipeline/producers/y0;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/facebook/imagepipeline/producers/y0;

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/q;->j:Lcom/facebook/imagepipeline/core/f;

    .line 2
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/f;->e()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/q;->k:Lcom/facebook/common/memory/g;

    move-object v0, v6

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/producers/y0;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;Lcom/facebook/imagepipeline/producers/q0;ZLs1/d;)V

    return-object v6
.end method

.method public E(Lcom/facebook/imagepipeline/producers/q0;)Lcom/facebook/imagepipeline/producers/b1;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "TT;>;)",
            "Lcom/facebook/imagepipeline/producers/b1<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/imagepipeline/producers/b1;

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/producers/b1;-><init>(Lcom/facebook/imagepipeline/producers/q0;)V

    return-object v0
.end method

.method public F(Lcom/facebook/imagepipeline/producers/q0;)Lcom/facebook/imagepipeline/producers/f1;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "TT;>;)",
            "Lcom/facebook/imagepipeline/producers/f1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/f1;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/q;->j:Lcom/facebook/imagepipeline/core/f;

    .line 2
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/f;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1, p1}, Lcom/facebook/imagepipeline/producers/f1;-><init>(ILjava/util/concurrent/Executor;Lcom/facebook/imagepipeline/producers/q0;)V

    return-object v0
.end method

.method public G([Lcom/facebook/imagepipeline/producers/h1;)Lcom/facebook/imagepipeline/producers/g1;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thumbnailProducers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/facebook/imagepipeline/producers/h1<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/g1;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/imagepipeline/producers/g1;

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/producers/g1;-><init>([Lcom/facebook/imagepipeline/producers/h1;)V

    return-object v0
.end method

.method public H(Lcom/facebook/imagepipeline/producers/q0;)Lcom/facebook/imagepipeline/producers/j1;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/j1;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/j1;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/q;->j:Lcom/facebook/imagepipeline/core/f;

    .line 2
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/f;->e()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/q;->k:Lcom/facebook/common/memory/g;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/j1;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;Lcom/facebook/imagepipeline/producers/q0;)V

    return-object v0
.end method

.method public b(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/producers/d1;)Lcom/facebook/imagepipeline/producers/q0;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputProducer",
            "inputThreadHandoffProducerQueue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/d1;",
            ")",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/imagepipeline/producers/c1;

    invoke-direct {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/c1;-><init>(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/producers/d1;)V

    return-object v0
.end method

.method public c(Lcom/facebook/imagepipeline/producers/q0;)Lcom/facebook/imagepipeline/producers/f;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/f;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/imagepipeline/producers/f;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/q;->o:Lcom/facebook/imagepipeline/cache/u;

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/q;->p:Lcom/facebook/imagepipeline/cache/g;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/f;-><init>(Lcom/facebook/imagepipeline/cache/u;Lcom/facebook/imagepipeline/cache/g;Lcom/facebook/imagepipeline/producers/q0;)V

    return-object v0
.end method

.method public d(Lcom/facebook/imagepipeline/producers/q0;)Lcom/facebook/imagepipeline/producers/g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/g;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/imagepipeline/producers/g;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/q;->p:Lcom/facebook/imagepipeline/cache/g;

    invoke-direct {v0, v1, p1}, Lcom/facebook/imagepipeline/producers/g;-><init>(Lcom/facebook/imagepipeline/cache/g;Lcom/facebook/imagepipeline/producers/q0;)V

    return-object v0
.end method

.method public e(Lcom/facebook/imagepipeline/producers/q0;)Lcom/facebook/imagepipeline/producers/h;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/h;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/imagepipeline/producers/h;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/q;->o:Lcom/facebook/imagepipeline/cache/u;

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/q;->p:Lcom/facebook/imagepipeline/cache/g;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/h;-><init>(Lcom/facebook/imagepipeline/cache/u;Lcom/facebook/imagepipeline/cache/g;Lcom/facebook/imagepipeline/producers/q0;)V

    return-object v0
.end method

.method public f(Lcom/facebook/imagepipeline/producers/q0;)Lcom/facebook/imagepipeline/producers/i;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/i;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/imagepipeline/producers/i;

    iget v1, p0, Lcom/facebook/imagepipeline/core/q;->t:I

    iget v2, p0, Lcom/facebook/imagepipeline/core/q;->u:I

    iget-boolean v3, p0, Lcom/facebook/imagepipeline/core/q;->v:Z

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/i;-><init>(Lcom/facebook/imagepipeline/producers/q0;IIZ)V

    return-object v0
.end method

.method public g(Lcom/facebook/imagepipeline/producers/q0;)Lcom/facebook/imagepipeline/producers/j;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/j;"
        }
    .end annotation

    new-instance v8, Lcom/facebook/imagepipeline/producers/j;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/q;->n:Lcom/facebook/imagepipeline/cache/u;

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/q;->l:Lcom/facebook/imagepipeline/cache/f;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/q;->m:Lcom/facebook/imagepipeline/cache/f;

    iget-object v4, p0, Lcom/facebook/imagepipeline/core/q;->p:Lcom/facebook/imagepipeline/cache/g;

    iget-object v5, p0, Lcom/facebook/imagepipeline/core/q;->q:Lcom/facebook/imagepipeline/cache/e;

    iget-object v6, p0, Lcom/facebook/imagepipeline/core/q;->r:Lcom/facebook/imagepipeline/cache/e;

    move-object v0, v8

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/imagepipeline/producers/j;-><init>(Lcom/facebook/imagepipeline/cache/u;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/g;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/producers/q0;)V

    return-object v8
.end method

.method public i()Lcom/facebook/imagepipeline/producers/m;
    .locals 2

    new-instance v0, Lcom/facebook/imagepipeline/producers/m;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/q;->k:Lcom/facebook/common/memory/g;

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/producers/m;-><init>(Lcom/facebook/common/memory/g;)V

    return-object v0
.end method

.method public j(Lcom/facebook/imagepipeline/producers/q0;)Lcom/facebook/imagepipeline/producers/n;
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/n;"
        }
    .end annotation

    .line 1
    new-instance v13, Lcom/facebook/imagepipeline/producers/n;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/q;->d:Lcom/facebook/common/memory/a;

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/q;->j:Lcom/facebook/imagepipeline/core/f;

    .line 2
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/f;->d()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/q;->e:Lcom/facebook/imagepipeline/decoder/b;

    iget-object v4, p0, Lcom/facebook/imagepipeline/core/q;->f:Lcom/facebook/imagepipeline/decoder/d;

    iget-boolean v5, p0, Lcom/facebook/imagepipeline/core/q;->g:Z

    iget-boolean v6, p0, Lcom/facebook/imagepipeline/core/q;->h:Z

    iget-boolean v7, p0, Lcom/facebook/imagepipeline/core/q;->i:Z

    iget v9, p0, Lcom/facebook/imagepipeline/core/q;->x:I

    iget-object v10, p0, Lcom/facebook/imagepipeline/core/q;->w:Lcom/facebook/imagepipeline/core/a;

    sget-object v12, Lcom/facebook/common/internal/n;->b:Lcom/facebook/common/internal/m;

    const/4 v11, 0x0

    move-object v0, v13

    move-object v8, p1

    invoke-direct/range {v0 .. v12}, Lcom/facebook/imagepipeline/producers/n;-><init>(Lcom/facebook/common/memory/a;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/decoder/b;Lcom/facebook/imagepipeline/decoder/d;ZZZLcom/facebook/imagepipeline/producers/q0;ILcom/facebook/imagepipeline/core/a;Ljava/lang/Runnable;Lcom/facebook/common/internal/m;)V

    return-object v13
.end method

.method public k(Lcom/facebook/imagepipeline/producers/q0;)Lcom/facebook/imagepipeline/producers/o;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/o;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/o;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/q;->j:Lcom/facebook/imagepipeline/core/f;

    .line 2
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/f;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/facebook/imagepipeline/producers/o;-><init>(Lcom/facebook/imagepipeline/producers/q0;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method

.method public l(Lcom/facebook/imagepipeline/producers/q0;)Lcom/facebook/imagepipeline/producers/q;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/q;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/imagepipeline/producers/q;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/q;->l:Lcom/facebook/imagepipeline/cache/f;

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/q;->m:Lcom/facebook/imagepipeline/cache/f;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/q;->p:Lcom/facebook/imagepipeline/cache/g;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/facebook/imagepipeline/producers/q;-><init>(Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/g;Lcom/facebook/imagepipeline/producers/q0;)V

    return-object v0
.end method

.method public m(Lcom/facebook/imagepipeline/producers/q0;)Lcom/facebook/imagepipeline/producers/r;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/r;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/imagepipeline/producers/r;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/q;->l:Lcom/facebook/imagepipeline/cache/f;

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/q;->m:Lcom/facebook/imagepipeline/cache/f;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/q;->p:Lcom/facebook/imagepipeline/cache/g;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/facebook/imagepipeline/producers/r;-><init>(Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/g;Lcom/facebook/imagepipeline/producers/q0;)V

    return-object v0
.end method

.method public n(Lcom/facebook/imagepipeline/producers/q0;)Lcom/facebook/imagepipeline/producers/s;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/s;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/imagepipeline/producers/s;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/q;->p:Lcom/facebook/imagepipeline/cache/g;

    iget-boolean v2, p0, Lcom/facebook/imagepipeline/core/q;->y:Z

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/s;-><init>(Lcom/facebook/imagepipeline/cache/g;ZLcom/facebook/imagepipeline/producers/q0;)V

    return-object v0
.end method

.method public o(Lcom/facebook/imagepipeline/producers/q0;)Lcom/facebook/imagepipeline/producers/t;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/t;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/imagepipeline/producers/t;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/q;->n:Lcom/facebook/imagepipeline/cache/u;

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/q;->p:Lcom/facebook/imagepipeline/cache/g;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/t;-><init>(Lcom/facebook/imagepipeline/cache/u;Lcom/facebook/imagepipeline/cache/g;Lcom/facebook/imagepipeline/producers/q0;)V

    return-object v0
.end method

.method public p(Lcom/facebook/imagepipeline/producers/q0;)Lcom/facebook/imagepipeline/producers/u;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/u;"
        }
    .end annotation

    new-instance v7, Lcom/facebook/imagepipeline/producers/u;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/q;->l:Lcom/facebook/imagepipeline/cache/f;

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/q;->m:Lcom/facebook/imagepipeline/cache/f;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/q;->p:Lcom/facebook/imagepipeline/cache/g;

    iget-object v4, p0, Lcom/facebook/imagepipeline/core/q;->q:Lcom/facebook/imagepipeline/cache/e;

    iget-object v5, p0, Lcom/facebook/imagepipeline/core/q;->r:Lcom/facebook/imagepipeline/cache/e;

    move-object v0, v7

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/producers/u;-><init>(Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/g;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/producers/q0;)V

    return-object v7
.end method

.method public q()Lcom/facebook/imagepipeline/producers/b0;
    .locals 4

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/b0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/q;->j:Lcom/facebook/imagepipeline/core/f;

    .line 2
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/f;->f()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/q;->k:Lcom/facebook/common/memory/g;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/q;->c:Landroid/content/res/AssetManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/b0;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;Landroid/content/res/AssetManager;)V

    return-object v0
.end method

.method public r()Lcom/facebook/imagepipeline/producers/c0;
    .locals 4

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/c0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/q;->j:Lcom/facebook/imagepipeline/core/f;

    .line 2
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/f;->f()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/q;->k:Lcom/facebook/common/memory/g;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/q;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/c0;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method public s()Lcom/facebook/imagepipeline/producers/d0;
    .locals 4

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/d0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/q;->j:Lcom/facebook/imagepipeline/core/f;

    .line 2
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/f;->f()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/q;->k:Lcom/facebook/common/memory/g;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/q;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/d0;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method public t()Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;
    .locals 4

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/q;->j:Lcom/facebook/imagepipeline/core/f;

    .line 2
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/f;->g()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/q;->k:Lcom/facebook/common/memory/g;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/q;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method public u()Lcom/facebook/imagepipeline/producers/f0;
    .locals 3

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/f0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/q;->j:Lcom/facebook/imagepipeline/core/f;

    .line 2
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/f;->f()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/q;->k:Lcom/facebook/common/memory/g;

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/f0;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;)V

    return-object v0
.end method

.method public v()Lcom/facebook/imagepipeline/producers/g0;
    .locals 4

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/g0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/q;->j:Lcom/facebook/imagepipeline/core/f;

    .line 2
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/f;->f()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/q;->k:Lcom/facebook/common/memory/g;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/q;->b:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/g0;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public w()Lcom/facebook/imagepipeline/producers/h0;
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/h0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/q;->j:Lcom/facebook/imagepipeline/core/f;

    .line 2
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/f;->e()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/q;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/h0;-><init>(Ljava/util/concurrent/Executor;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method public x()Lcom/facebook/imagepipeline/producers/i0;
    .locals 3

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/i0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/q;->j:Lcom/facebook/imagepipeline/core/f;

    .line 2
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/f;->f()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/q;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/i0;-><init>(Ljava/util/concurrent/Executor;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method public y(Lcom/facebook/imagepipeline/producers/l0;)Lcom/facebook/imagepipeline/producers/q0;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "networkFetcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/l0;",
            ")",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/imagepipeline/producers/k0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/q;->k:Lcom/facebook/common/memory/g;

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/q;->d:Lcom/facebook/common/memory/a;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/k0;-><init>(Lcom/facebook/common/memory/g;Lcom/facebook/common/memory/a;Lcom/facebook/imagepipeline/producers/l0;)V

    return-object v0
.end method

.method public z(Lcom/facebook/imagepipeline/producers/q0;)Lcom/facebook/imagepipeline/producers/m0;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/m0;"
        }
    .end annotation

    new-instance v6, Lcom/facebook/imagepipeline/producers/m0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/q;->l:Lcom/facebook/imagepipeline/cache/f;

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/q;->p:Lcom/facebook/imagepipeline/cache/g;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/q;->k:Lcom/facebook/common/memory/g;

    iget-object v4, p0, Lcom/facebook/imagepipeline/core/q;->d:Lcom/facebook/common/memory/a;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/producers/m0;-><init>(Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/g;Lcom/facebook/common/memory/g;Lcom/facebook/common/memory/a;Lcom/facebook/imagepipeline/producers/q0;)V

    return-object v6
.end method

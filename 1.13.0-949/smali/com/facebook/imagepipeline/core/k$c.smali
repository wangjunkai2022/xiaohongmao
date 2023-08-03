.class public Lcom/facebook/imagepipeline/core/k$c;
.super Ljava/lang/Object;
.source "ImagePipelineExperiments.java"

# interfaces
.implements Lcom/facebook/imagepipeline/core/k$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/core/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/facebook/common/memory/a;Lcom/facebook/imagepipeline/decoder/b;Lcom/facebook/imagepipeline/decoder/d;ZZZLcom/facebook/imagepipeline/core/f;Lcom/facebook/common/memory/g;Lcom/facebook/common/memory/j;Lcom/facebook/imagepipeline/cache/u;Lcom/facebook/imagepipeline/cache/u;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/g;Lcom/facebook/imagepipeline/bitmaps/f;IIZILcom/facebook/imagepipeline/core/a;ZI)Lcom/facebook/imagepipeline/core/q;
    .locals 24
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
            "pooledByteStreams",
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
            "Lcom/facebook/common/memory/j;",
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
            "ZI)",
            "Lcom/facebook/imagepipeline/core/q;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    move-object/from16 v14, p15

    move-object/from16 v15, p16

    move/from16 v16, p17

    move/from16 v17, p18

    move/from16 v18, p19

    move/from16 v19, p20

    move-object/from16 v20, p21

    move/from16 v21, p22

    move/from16 v22, p23

    new-instance v23, Lcom/facebook/imagepipeline/core/q;

    move-object/from16 v0, v23

    invoke-direct/range {v0 .. v22}, Lcom/facebook/imagepipeline/core/q;-><init>(Landroid/content/Context;Lcom/facebook/common/memory/a;Lcom/facebook/imagepipeline/decoder/b;Lcom/facebook/imagepipeline/decoder/d;ZZZLcom/facebook/imagepipeline/core/f;Lcom/facebook/common/memory/g;Lcom/facebook/imagepipeline/cache/u;Lcom/facebook/imagepipeline/cache/u;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/g;Lcom/facebook/imagepipeline/bitmaps/f;IIZILcom/facebook/imagepipeline/core/a;ZI)V

    return-object v23
.end method

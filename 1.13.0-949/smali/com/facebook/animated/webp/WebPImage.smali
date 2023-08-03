.class public Lcom/facebook/animated/webp/WebPImage;
.super Ljava/lang/Object;
.source "WebPImage.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/base/d;
.implements Lcom/facebook/imagepipeline/animated/factory/c;


# annotations
.annotation build Lcom/facebook/common/internal/e;
.end annotation

.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation build Ls7/d;
.end annotation


# instance fields
.field private b:Landroid/graphics/Bitmap$Config;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private mNativeContext:J
    .annotation build Lcom/facebook/common/internal/e;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation build Lcom/facebook/common/internal/e;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/facebook/animated/webp/WebPImage;->b:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method constructor <init>(J)V
    .locals 1
    .annotation build Lcom/facebook/common/internal/e;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeContext"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/facebook/animated/webp/WebPImage;->b:Landroid/graphics/Bitmap$Config;

    .line 5
    iput-wide p1, p0, Lcom/facebook/animated/webp/WebPImage;->mNativeContext:J

    return-void
.end method

.method public static k([BLcom/facebook/imagepipeline/common/b;)Lcom/facebook/animated/webp/WebPImage;
    .locals 1
    .param p1    # Lcom/facebook/imagepipeline/common/b;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "options"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/nativecode/g;->a()V

    .line 2
    invoke-static {p0}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    array-length v0, p0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 6
    invoke-static {v0}, Lcom/facebook/animated/webp/WebPImage;->nativeCreateFromDirectByteBuffer(Ljava/nio/ByteBuffer;)Lcom/facebook/animated/webp/WebPImage;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p1, Lcom/facebook/imagepipeline/common/b;->h:Landroid/graphics/Bitmap$Config;

    iput-object p1, p0, Lcom/facebook/animated/webp/WebPImage;->b:Landroid/graphics/Bitmap$Config;

    :cond_0
    return-object p0
.end method

.method public static l(Ljava/nio/ByteBuffer;Lcom/facebook/imagepipeline/common/b;)Lcom/facebook/animated/webp/WebPImage;
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/common/b;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "byteBuffer",
            "options"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/nativecode/g;->a()V

    .line 2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 3
    invoke-static {p0}, Lcom/facebook/animated/webp/WebPImage;->nativeCreateFromDirectByteBuffer(Ljava/nio/ByteBuffer;)Lcom/facebook/animated/webp/WebPImage;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p1, Lcom/facebook/imagepipeline/common/b;->h:Landroid/graphics/Bitmap$Config;

    iput-object p1, p0, Lcom/facebook/animated/webp/WebPImage;->b:Landroid/graphics/Bitmap$Config;

    :cond_0
    return-object p0
.end method

.method public static m(JILcom/facebook/imagepipeline/common/b;)Lcom/facebook/animated/webp/WebPImage;
    .locals 3
    .param p3    # Lcom/facebook/imagepipeline/common/b;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativePtr",
            "sizeInBytes",
            "options"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/nativecode/g;->a()V

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/j;->d(Ljava/lang/Boolean;)V

    .line 3
    invoke-static {p0, p1, p2}, Lcom/facebook/animated/webp/WebPImage;->nativeCreateFromNativeMemory(JI)Lcom/facebook/animated/webp/WebPImage;

    move-result-object p0

    if-eqz p3, :cond_1

    .line 4
    iget-object p1, p3, Lcom/facebook/imagepipeline/common/b;->h:Landroid/graphics/Bitmap$Config;

    iput-object p1, p0, Lcom/facebook/animated/webp/WebPImage;->b:Landroid/graphics/Bitmap$Config;

    :cond_1
    return-object p0
.end method

.method private static native nativeCreateFromDirectByteBuffer(Ljava/nio/ByteBuffer;)Lcom/facebook/animated/webp/WebPImage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation
.end method

.method private static native nativeCreateFromNativeMemory(JI)Lcom/facebook/animated/webp/WebPImage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativePtr",
            "sizeInBytes"
        }
    .end annotation
.end method

.method private native nativeDispose()V
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeGetDuration()I
.end method

.method private native nativeGetFrame(I)Lcom/facebook/animated/webp/WebPFrame;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameNumber"
        }
    .end annotation
.end method

.method private native nativeGetFrameCount()I
.end method

.method private native nativeGetFrameDurations()[I
.end method

.method private native nativeGetHeight()I
.end method

.method private native nativeGetLoopCount()I
.end method

.method private native nativeGetSizeInBytes()I
.end method

.method private native nativeGetWidth()I
.end method


# virtual methods
.method public a()I
    .locals 1

    invoke-direct {p0}, Lcom/facebook/animated/webp/WebPImage;->nativeGetFrameCount()I

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    invoke-direct {p0}, Lcom/facebook/animated/webp/WebPImage;->nativeGetSizeInBytes()I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    invoke-direct {p0}, Lcom/facebook/animated/webp/WebPImage;->nativeGetLoopCount()I

    move-result v0

    return v0
.end method

.method public d(Ljava/nio/ByteBuffer;Lcom/facebook/imagepipeline/common/b;)Lcom/facebook/imagepipeline/animated/base/d;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "byteBuffer",
            "options"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/facebook/animated/webp/WebPImage;->l(Ljava/nio/ByteBuffer;Lcom/facebook/imagepipeline/common/b;)Lcom/facebook/animated/webp/WebPImage;

    move-result-object p1

    return-object p1
.end method

.method public dispose()V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/animated/webp/WebPImage;->nativeDispose()V

    return-void
.end method

.method public e(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameNumber"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/animated/webp/WebPImage;->n(I)Lcom/facebook/animated/webp/WebPFrame;

    move-result-object v0

    .line 2
    :try_start_0
    new-instance v9, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    .line 3
    invoke-virtual {v0}, Lcom/facebook/animated/webp/WebPFrame;->c()I

    move-result v3

    .line 4
    invoke-virtual {v0}, Lcom/facebook/animated/webp/WebPFrame;->d()I

    move-result v4

    .line 5
    invoke-virtual {v0}, Lcom/facebook/animated/webp/WebPFrame;->getWidth()I

    move-result v5

    .line 6
    invoke-virtual {v0}, Lcom/facebook/animated/webp/WebPFrame;->getHeight()I

    move-result v6

    .line 7
    invoke-virtual {v0}, Lcom/facebook/animated/webp/WebPFrame;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;->BLEND_WITH_PREVIOUS:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;->NO_BLEND:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;

    :goto_0
    move-object v7, v1

    .line 8
    invoke-virtual {v0}, Lcom/facebook/animated/webp/WebPFrame;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_TO_BACKGROUND:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_DO_NOT:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    :goto_1
    move-object v8, v1

    move-object v1, v9

    move v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;-><init>(IIIIILcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v0}, Lcom/facebook/animated/webp/WebPFrame;->dispose()V

    return-object v9

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/facebook/animated/webp/WebPFrame;->dispose()V

    .line 10
    throw p1
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected finalize()V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/animated/webp/WebPImage;->nativeFinalize()V

    return-void
.end method

.method public g(JILcom/facebook/imagepipeline/common/b;)Lcom/facebook/imagepipeline/animated/base/d;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativePtr",
            "sizeInBytes",
            "options"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lcom/facebook/animated/webp/WebPImage;->m(JILcom/facebook/imagepipeline/common/b;)Lcom/facebook/animated/webp/WebPImage;

    move-result-object p1

    return-object p1
.end method

.method public getDuration()I
    .locals 1

    invoke-direct {p0}, Lcom/facebook/animated/webp/WebPImage;->nativeGetDuration()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    invoke-direct {p0}, Lcom/facebook/animated/webp/WebPImage;->nativeGetHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    invoke-direct {p0}, Lcom/facebook/animated/webp/WebPImage;->nativeGetWidth()I

    move-result v0

    return v0
.end method

.method public h()Landroid/graphics/Bitmap$Config;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/animated/webp/WebPImage;->b:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public bridge synthetic i(I)Lcom/facebook/imagepipeline/animated/base/e;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "frameNumber"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/facebook/animated/webp/WebPImage;->n(I)Lcom/facebook/animated/webp/WebPFrame;

    move-result-object p1

    return-object p1
.end method

.method public j()[I
    .locals 1

    invoke-direct {p0}, Lcom/facebook/animated/webp/WebPImage;->nativeGetFrameDurations()[I

    move-result-object v0

    return-object v0
.end method

.method public n(I)Lcom/facebook/animated/webp/WebPFrame;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameNumber"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/facebook/animated/webp/WebPImage;->nativeGetFrame(I)Lcom/facebook/animated/webp/WebPFrame;

    move-result-object p1

    return-object p1
.end method

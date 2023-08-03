.class public Lcom/facebook/animated/gif/GifImage;
.super Ljava/lang/Object;
.source "GifImage.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/base/d;
.implements Lcom/facebook/imagepipeline/animated/factory/c;


# annotations
.annotation build Lcom/facebook/common/internal/e;
.end annotation

.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation build Ls7/d;
.end annotation


# static fields
.field private static final c:I = 0x0

.field private static final d:I = -0x1

.field private static volatile e:Z


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
    iput-object v0, p0, Lcom/facebook/animated/gif/GifImage;->b:Landroid/graphics/Bitmap$Config;

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
    iput-object v0, p0, Lcom/facebook/animated/gif/GifImage;->b:Landroid/graphics/Bitmap$Config;

    .line 5
    iput-wide p1, p0, Lcom/facebook/animated/gif/GifImage;->mNativeContext:J

    return-void
.end method

.method public static k([B)Lcom/facebook/animated/gif/GifImage;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 5
    invoke-static {}, Lcom/facebook/imagepipeline/common/b;->a()Lcom/facebook/imagepipeline/common/b;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/facebook/animated/gif/GifImage;->m(Ljava/nio/ByteBuffer;Lcom/facebook/imagepipeline/common/b;)Lcom/facebook/animated/gif/GifImage;

    move-result-object p0

    return-object p0
.end method

.method public static l(Ljava/nio/ByteBuffer;)Lcom/facebook/animated/gif/GifImage;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "byteBuffer"
        }
    .end annotation

    invoke-static {}, Lcom/facebook/imagepipeline/common/b;->a()Lcom/facebook/imagepipeline/common/b;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/animated/gif/GifImage;->m(Ljava/nio/ByteBuffer;Lcom/facebook/imagepipeline/common/b;)Lcom/facebook/animated/gif/GifImage;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/nio/ByteBuffer;Lcom/facebook/imagepipeline/common/b;)Lcom/facebook/animated/gif/GifImage;
    .locals 2
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
    invoke-static {}, Lcom/facebook/animated/gif/GifImage;->p()V

    .line 2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 3
    iget v0, p1, Lcom/facebook/imagepipeline/common/b;->b:I

    iget-boolean v1, p1, Lcom/facebook/imagepipeline/common/b;->f:Z

    .line 4
    invoke-static {p0, v0, v1}, Lcom/facebook/animated/gif/GifImage;->nativeCreateFromDirectByteBuffer(Ljava/nio/ByteBuffer;IZ)Lcom/facebook/animated/gif/GifImage;

    move-result-object p0

    .line 5
    iget-object p1, p1, Lcom/facebook/imagepipeline/common/b;->h:Landroid/graphics/Bitmap$Config;

    iput-object p1, p0, Lcom/facebook/animated/gif/GifImage;->b:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method public static n(ILcom/facebook/imagepipeline/common/b;)Lcom/facebook/animated/gif/GifImage;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fileDescriptor",
            "options"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/animated/gif/GifImage;->p()V

    .line 2
    iget v0, p1, Lcom/facebook/imagepipeline/common/b;->b:I

    iget-boolean p1, p1, Lcom/facebook/imagepipeline/common/b;->f:Z

    invoke-static {p0, v0, p1}, Lcom/facebook/animated/gif/GifImage;->nativeCreateFromFileDescriptor(IIZ)Lcom/facebook/animated/gif/GifImage;

    move-result-object p0

    return-object p0
.end method

.method private static native nativeCreateFromDirectByteBuffer(Ljava/nio/ByteBuffer;IZ)Lcom/facebook/animated/gif/GifImage;
    .annotation build Lcom/facebook/common/internal/e;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "maxDimension",
            "forceStatic"
        }
    .end annotation
.end method

.method private static native nativeCreateFromFileDescriptor(IIZ)Lcom/facebook/animated/gif/GifImage;
    .annotation build Lcom/facebook/common/internal/e;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fileDescriptor",
            "maxDimension",
            "forceStatic"
        }
    .end annotation
.end method

.method private static native nativeCreateFromNativeMemory(JIIZ)Lcom/facebook/animated/gif/GifImage;
    .annotation build Lcom/facebook/common/internal/e;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativePtr",
            "sizeInBytes",
            "maxDimension",
            "forceStatic"
        }
    .end annotation
.end method

.method private native nativeDispose()V
    .annotation build Lcom/facebook/common/internal/e;
    .end annotation
.end method

.method private native nativeFinalize()V
    .annotation build Lcom/facebook/common/internal/e;
    .end annotation
.end method

.method private native nativeGetDuration()I
    .annotation build Lcom/facebook/common/internal/e;
    .end annotation
.end method

.method private native nativeGetFrame(I)Lcom/facebook/animated/gif/GifFrame;
    .annotation build Lcom/facebook/common/internal/e;
    .end annotation

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
    .annotation build Lcom/facebook/common/internal/e;
    .end annotation
.end method

.method private native nativeGetFrameDurations()[I
    .annotation build Lcom/facebook/common/internal/e;
    .end annotation
.end method

.method private native nativeGetHeight()I
    .annotation build Lcom/facebook/common/internal/e;
    .end annotation
.end method

.method private native nativeGetLoopCount()I
    .annotation build Lcom/facebook/common/internal/e;
    .end annotation
.end method

.method private native nativeGetSizeInBytes()I
    .annotation build Lcom/facebook/common/internal/e;
    .end annotation
.end method

.method private native nativeGetWidth()I
    .annotation build Lcom/facebook/common/internal/e;
    .end annotation
.end method

.method private native nativeIsAnimated()Z
    .annotation build Lcom/facebook/common/internal/e;
    .end annotation
.end method

.method public static o(JILcom/facebook/imagepipeline/common/b;)Lcom/facebook/animated/gif/GifImage;
    .locals 3
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
    invoke-static {}, Lcom/facebook/animated/gif/GifImage;->p()V

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
    iget v0, p3, Lcom/facebook/imagepipeline/common/b;->b:I

    iget-boolean v1, p3, Lcom/facebook/imagepipeline/common/b;->f:Z

    .line 4
    invoke-static {p0, p1, p2, v0, v1}, Lcom/facebook/animated/gif/GifImage;->nativeCreateFromNativeMemory(JIIZ)Lcom/facebook/animated/gif/GifImage;

    move-result-object p0

    .line 5
    iget-object p1, p3, Lcom/facebook/imagepipeline/common/b;->h:Landroid/graphics/Bitmap$Config;

    iput-object p1, p0, Lcom/facebook/animated/gif/GifImage;->b:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method private static declared-synchronized p()V
    .locals 2

    const-class v0, Lcom/facebook/animated/gif/GifImage;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcom/facebook/animated/gif/GifImage;->e:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 2
    sput-boolean v1, Lcom/facebook/animated/gif/GifImage;->e:Z

    const-string v1, "gifimage"

    .line 3
    invoke-static {v1}, Ly1/a;->f(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static q(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disposalMode"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_DO_NOT:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 2
    sget-object p0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_DO_NOT:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 3
    sget-object p0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_TO_BACKGROUND:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    return-object p0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 4
    sget-object p0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_TO_PREVIOUS:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_DO_NOT:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    invoke-direct {p0}, Lcom/facebook/animated/gif/GifImage;->nativeGetFrameCount()I

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    invoke-direct {p0}, Lcom/facebook/animated/gif/GifImage;->nativeGetSizeInBytes()I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 3

    invoke-direct {p0}, Lcom/facebook/animated/gif/GifImage;->nativeGetLoopCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    add-int/2addr v0, v2

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v2
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

    invoke-static {p1, p2}, Lcom/facebook/animated/gif/GifImage;->m(Ljava/nio/ByteBuffer;Lcom/facebook/imagepipeline/common/b;)Lcom/facebook/animated/gif/GifImage;

    move-result-object p1

    return-object p1
.end method

.method public dispose()V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/animated/gif/GifImage;->nativeDispose()V

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
    invoke-virtual {p0, p1}, Lcom/facebook/animated/gif/GifImage;->r(I)Lcom/facebook/animated/gif/GifFrame;

    move-result-object v0

    .line 2
    :try_start_0
    new-instance v9, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    .line 3
    invoke-virtual {v0}, Lcom/facebook/animated/gif/GifFrame;->c()I

    move-result v3

    .line 4
    invoke-virtual {v0}, Lcom/facebook/animated/gif/GifFrame;->d()I

    move-result v4

    .line 5
    invoke-virtual {v0}, Lcom/facebook/animated/gif/GifFrame;->getWidth()I

    move-result v5

    .line 6
    invoke-virtual {v0}, Lcom/facebook/animated/gif/GifFrame;->getHeight()I

    move-result v6

    sget-object v7, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;->BLEND_WITH_PREVIOUS:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;

    .line 7
    invoke-virtual {v0}, Lcom/facebook/animated/gif/GifFrame;->e()I

    move-result v1

    invoke-static {v1}, Lcom/facebook/animated/gif/GifImage;->q(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    move-result-object v8

    move-object v1, v9

    move v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;-><init>(IIIIILcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {v0}, Lcom/facebook/animated/gif/GifFrame;->dispose()V

    return-object v9

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/facebook/animated/gif/GifFrame;->dispose()V

    .line 9
    throw p1
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/animated/gif/GifImage;->nativeFinalize()V

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

    invoke-static {p1, p2, p3, p4}, Lcom/facebook/animated/gif/GifImage;->o(JILcom/facebook/imagepipeline/common/b;)Lcom/facebook/animated/gif/GifImage;

    move-result-object p1

    return-object p1
.end method

.method public getDuration()I
    .locals 1

    invoke-direct {p0}, Lcom/facebook/animated/gif/GifImage;->nativeGetDuration()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    invoke-direct {p0}, Lcom/facebook/animated/gif/GifImage;->nativeGetHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    invoke-direct {p0}, Lcom/facebook/animated/gif/GifImage;->nativeGetWidth()I

    move-result v0

    return v0
.end method

.method public h()Landroid/graphics/Bitmap$Config;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/animated/gif/GifImage;->b:Landroid/graphics/Bitmap$Config;

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

    invoke-virtual {p0, p1}, Lcom/facebook/animated/gif/GifImage;->r(I)Lcom/facebook/animated/gif/GifFrame;

    move-result-object p1

    return-object p1
.end method

.method public j()[I
    .locals 1

    invoke-direct {p0}, Lcom/facebook/animated/gif/GifImage;->nativeGetFrameDurations()[I

    move-result-object v0

    return-object v0
.end method

.method public r(I)Lcom/facebook/animated/gif/GifFrame;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameNumber"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/facebook/animated/gif/GifImage;->nativeGetFrame(I)Lcom/facebook/animated/gif/GifFrame;

    move-result-object p1

    return-object p1
.end method

.method public s()Z
    .locals 1

    invoke-direct {p0}, Lcom/facebook/animated/gif/GifImage;->nativeIsAnimated()Z

    move-result v0

    return v0
.end method

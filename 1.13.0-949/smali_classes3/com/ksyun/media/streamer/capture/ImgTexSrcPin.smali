.class public Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;
.super Lcom/ksyun/media/streamer/framework/SrcPin;
.source "ImgTexSrcPin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ksyun/media/streamer/framework/SrcPin<",
        "Lcom/ksyun/media/streamer/framework/ImgTexFrame;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ImgTexSrcPin"


# instance fields
.field private e:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

.field private f:I

.field private g:[F

.field private h:Lcom/ksyun/media/streamer/util/gles/GLRender;

.field private i:Z

.field private j:Landroid/os/ConditionVariable;

.field private k:Lcom/ksyun/media/streamer/util/gles/g;

.field private l:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;

.field private m:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReleasedListener;


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/framework/SrcPin;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->f:I

    .line 3
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->j:Landroid/os/ConditionVariable;

    .line 4
    new-instance v0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$6;

    invoke-direct {v0, p0}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$6;-><init>(Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->l:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;

    .line 5
    new-instance v0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$7;

    invoke-direct {v0, p0}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$7;-><init>(Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->m:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReleasedListener;

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 6
    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->g:[F

    .line 7
    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->h:Lcom/ksyun/media/streamer/util/gles/GLRender;

    .line 8
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->l:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->addListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;)V

    .line 9
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->h:Lcom/ksyun/media/streamer/util/gles/GLRender;

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->m:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReleasedListener;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->addListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnReleasedListener;)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->f:I

    return p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;Lcom/ksyun/media/streamer/framework/ImgTexFormat;)Lcom/ksyun/media/streamer/framework/ImgTexFormat;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->e:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    return-object p1
.end method

.method private a()V
    .locals 5

    .line 8
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->k:Lcom/ksyun/media/streamer/util/gles/g;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 9
    iget v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->f:I

    if-eq v0, v1, :cond_1

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    .line 10
    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 11
    iput v1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->f:I

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/g;->a()V

    .line 13
    iput v1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->f:I

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->e:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    return-void
.end method

.method private a(J)V
    .locals 7

    .line 78
    iget v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->e:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    if-nez v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    new-instance v0, Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->e:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    iget v3, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->f:I

    iget-object v4, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->g:[F

    move-object v1, v0

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/ksyun/media/streamer/framework/ImgTexFrame;-><init>(Lcom/ksyun/media/streamer/framework/ImgTexFormat;I[FJ)V

    .line 80
    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;IJZ)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz p1, :cond_8

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 17
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 18
    rem-int/lit16 v5, p2, 0xb4

    if-eqz v5, :cond_1

    .line 19
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 21
    :cond_1
    iget-object v5, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->e:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    if-eqz v5, :cond_2

    iget v6, v5, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->width:I

    if-ne v6, v3, :cond_2

    iget v5, v5, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->height:I

    if-eq v5, v4, :cond_4

    .line 22
    :cond_2
    new-instance v5, Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    invoke-direct {v5, v2, v3, v4}, Lcom/ksyun/media/streamer/framework/ImgTexFormat;-><init>(III)V

    iput-object v5, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->e:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    .line 23
    iget v3, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->f:I

    if-eq v3, v1, :cond_3

    new-array v4, v2, [I

    aput v3, v4, v0

    .line 24
    invoke-static {v2, v4, v0}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 25
    iput v1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->f:I

    :cond_3
    const/4 v0, 0x1

    .line 26
    :cond_4
    iget v2, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->f:I

    invoke-static {p1, v2}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->loadTexture(Landroid/graphics/Bitmap;I)I

    move-result v2

    iput v2, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->f:I

    if-eqz p5, :cond_5

    .line 27
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 28
    :cond_5
    iget p1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->f:I

    if-ne p1, v1, :cond_6

    return-void

    :cond_6
    if-eqz v0, :cond_7

    .line 29
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->e:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFormatChanged(Ljava/lang/Object;)V

    .line 30
    :cond_7
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->g:[F

    const/high16 p5, 0x3f800000    # 1.0f

    invoke-static {p1, p5, p5, p2}, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->calTransformMatrix([FFFI)V

    .line 31
    new-instance p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->e:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    iget v2, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->f:I

    iget-object v3, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->g:[F

    move-object v0, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/ksyun/media/streamer/framework/ImgTexFrame;-><init>(Lcom/ksyun/media/streamer/framework/ImgTexFormat;I[FJ)V

    .line 32
    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    return-void

    .line 33
    :cond_8
    :goto_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->e:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    if-nez p1, :cond_9

    return-void

    .line 34
    :cond_9
    iget p1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->f:I

    if-eq p1, v1, :cond_a

    new-array p2, v2, [I

    aput p1, p2, v0

    .line 35
    invoke-static {v2, p2, v0}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 36
    iput v1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->f:I

    .line 37
    :cond_a
    new-instance p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    iget-object v4, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->e:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/ksyun/media/streamer/framework/ImgTexFrame;-><init>(Lcom/ksyun/media/streamer/framework/ImgTexFormat;I[FJ)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;J)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;Landroid/graphics/Bitmap;IJZ)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p5}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->a(Landroid/graphics/Bitmap;IJZ)V

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;Ljava/nio/ByteBuffer;IIIIJ)V
    .locals 0

    .line 5
    invoke-direct/range {p0 .. p7}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->a(Ljava/nio/ByteBuffer;IIIIJ)V

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;Ljava/nio/ByteBuffer;[IIIIJ)V
    .locals 0

    .line 6
    invoke-direct/range {p0 .. p7}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->a(Ljava/nio/ByteBuffer;[IIIIJ)V

    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;IIIIJ)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p5

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v1, :cond_7

    .line 39
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 40
    :cond_0
    rem-int/lit16 v6, v2, 0xb4

    if-eqz v6, :cond_1

    move v7, p3

    move v6, p4

    goto :goto_0

    :cond_1
    move v6, p3

    move v7, p4

    .line 41
    :goto_0
    iget-object v8, v0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->e:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    if-eqz v8, :cond_2

    iget v9, v8, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->width:I

    if-ne v9, v6, :cond_2

    iget v8, v8, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->height:I

    if-eq v8, v7, :cond_4

    .line 42
    :cond_2
    new-instance v8, Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    invoke-direct {v8, v5, v6, v7}, Lcom/ksyun/media/streamer/framework/ImgTexFormat;-><init>(III)V

    iput-object v8, v0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->e:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    .line 43
    iget v6, v0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->f:I

    if-eq v6, v4, :cond_3

    new-array v7, v5, [I

    aput v6, v7, v3

    .line 44
    invoke-static {v5, v7, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 45
    iput v4, v0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->f:I

    :cond_3
    const/4 v3, 0x1

    .line 46
    :cond_4
    div-int/lit8 v5, p2, 0x4

    .line 47
    iget v6, v0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->f:I

    move v7, p4

    invoke-static {p1, v5, p4, v6}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->loadTexture(Ljava/nio/ByteBuffer;III)I

    move-result v1

    iput v1, v0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->f:I

    if-ne v1, v4, :cond_5

    return-void

    :cond_5
    if-eqz v3, :cond_6

    .line 48
    iget-object v1, v0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->e:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    invoke-virtual {p0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFormatChanged(Ljava/lang/Object;)V

    :cond_6
    move v1, p3

    int-to-float v1, v1

    int-to-float v3, v5

    div-float/2addr v1, v3

    .line 49
    iget-object v3, v0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->g:[F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v1, v4, v2}, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->calTransformMatrix([FFFI)V

    .line 50
    new-instance v1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    iget-object v6, v0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->e:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    iget v7, v0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->f:I

    iget-object v8, v0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->g:[F

    move-object v5, v1

    move-wide/from16 v9, p6

    invoke-direct/range {v5 .. v10}, Lcom/ksyun/media/streamer/framework/ImgTexFrame;-><init>(Lcom/ksyun/media/streamer/framework/ImgTexFormat;I[FJ)V

    .line 51
    invoke-virtual {p0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    return-void

    .line 52
    :cond_7
    :goto_1
    iget-object v1, v0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->e:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    if-nez v1, :cond_8

    return-void

    .line 53
    :cond_8
    iget v1, v0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->f:I

    if-eq v1, v4, :cond_9

    new-array v2, v5, [I

    aput v1, v2, v3

    .line 54
    invoke-static {v5, v2, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 55
    iput v4, v0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->f:I

    .line 56
    :cond_9
    new-instance v1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    iget-object v2, v0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->e:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object p1, v1

    move-object p2, v2

    move p3, v3

    move-object p4, v4

    move-wide/from16 p5, v5

    invoke-direct/range {p1 .. p6}, Lcom/ksyun/media/streamer/framework/ImgTexFrame;-><init>(Lcom/ksyun/media/streamer/framework/ImgTexFormat;I[FJ)V

    .line 57
    invoke-virtual {p0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;[IIIIJ)V
    .locals 7

    const/4 v0, -0x1

    if-eqz p1, :cond_8

    .line 58
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 59
    :cond_0
    rem-int/lit16 v1, p5, 0xb4

    if-eqz v1, :cond_1

    move v2, p3

    move v1, p4

    goto :goto_0

    :cond_1
    move v1, p3

    move v2, p4

    :goto_0
    const/4 v3, 0x0

    .line 60
    iget-object v4, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->e:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    iget v6, v4, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->width:I

    if-ne v6, v1, :cond_2

    iget v4, v4, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->height:I

    if-eq v4, v2, :cond_4

    .line 61
    :cond_2
    new-instance v3, Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    invoke-direct {v3, v5, v1, v2}, Lcom/ksyun/media/streamer/framework/ImgTexFormat;-><init>(III)V

    iput-object v3, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->e:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    .line 62
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->k:Lcom/ksyun/media/streamer/util/gles/g;

    if-eqz v1, :cond_3

    .line 63
    invoke-virtual {v1}, Lcom/ksyun/media/streamer/util/gles/g;->a()V

    .line 64
    :cond_3
    iput v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->f:I

    const/4 v3, 0x1

    .line 65
    :cond_4
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->k:Lcom/ksyun/media/streamer/util/gles/g;

    if-nez v1, :cond_5

    .line 66
    new-instance v1, Lcom/ksyun/media/streamer/util/gles/g;

    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->h:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-direct {v1, v2}, Lcom/ksyun/media/streamer/util/gles/g;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->k:Lcom/ksyun/media/streamer/util/gles/g;

    .line 67
    :cond_5
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->k:Lcom/ksyun/media/streamer/util/gles/g;

    invoke-virtual {v1, p1, p3, p4, p2}, Lcom/ksyun/media/streamer/util/gles/g;->a(Ljava/nio/ByteBuffer;II[I)I

    move-result p1

    iput p1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->f:I

    if-ne p1, v0, :cond_6

    return-void

    :cond_6
    if-eqz v3, :cond_7

    .line 68
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->e:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFormatChanged(Ljava/lang/Object;)V

    .line 69
    :cond_7
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->g:[F

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p2, p2, p5}, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->calTransformMatrix([FFFI)V

    .line 70
    new-instance p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->e:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    iget v2, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->f:I

    iget-object v3, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->g:[F

    move-object v0, p1

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/ksyun/media/streamer/framework/ImgTexFrame;-><init>(Lcom/ksyun/media/streamer/framework/ImgTexFormat;I[FJ)V

    .line 71
    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    return-void

    .line 72
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->e:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    if-nez p1, :cond_9

    return-void

    .line 73
    :cond_9
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->k:Lcom/ksyun/media/streamer/util/gles/g;

    if-eqz p1, :cond_a

    .line 74
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/util/gles/g;->a()V

    .line 75
    :cond_a
    iput v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->f:I

    .line 76
    new-instance p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    iget-object p3, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->e:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    const/4 p4, -0x1

    const/4 p5, 0x0

    const-wide/16 p6, 0x0

    move-object p2, p1

    invoke-direct/range {p2 .. p7}, Lcom/ksyun/media/streamer/framework/ImgTexFrame;-><init>(Lcom/ksyun/media/streamer/framework/ImgTexFormat;I[FJ)V

    .line 77
    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;)Z
    .locals 0

    .line 7
    iget-boolean p0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->i:Z

    return p0
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;)Landroid/os/ConditionVariable;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->j:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method static synthetic c(Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;)V
    .locals 0

    invoke-direct {p0}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->a()V

    return-void
.end method

.method static synthetic d(Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;)Lcom/ksyun/media/streamer/util/gles/g;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->k:Lcom/ksyun/media/streamer/util/gles/g;

    return-object p0
.end method


# virtual methods
.method public getUseSyncMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->i:Z

    return v0
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->h:Lcom/ksyun/media/streamer/util/gles/GLRender;

    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->l:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->removeListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;)V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->h:Lcom/ksyun/media/streamer/util/gles/GLRender;

    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->m:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReleasedListener;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->removeListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnReleasedListener;)V

    .line 4
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->reset()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->k:Lcom/ksyun/media/streamer/util/gles/g;

    return-void
.end method

.method public repeatFrame()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->repeatFrame(J)V

    return-void
.end method

.method public repeatFrame(J)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->h:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->isGLRenderThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->a(J)V

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->i:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->j:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->h:Lcom/ksyun/media/streamer/util/gles/GLRender;

    new-instance v1, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$4;-><init>(Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;J)V

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->queueEvent(Ljava/lang/Runnable;)V

    .line 7
    iget-boolean p1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->i:Z

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->j:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    :cond_2
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->h:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->isGLRenderThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->a()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->h:Lcom/ksyun/media/streamer/util/gles/GLRender;

    new-instance v1, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$5;

    invoke-direct {v1, p0}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$5;-><init>(Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;)V

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->queueEvent(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public setUseSyncMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->i:Z

    return-void
.end method

.method public updateFrame(Landroid/graphics/Bitmap;IJZ)V
    .locals 9

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->h:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->isGLRenderThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct/range {p0 .. p5}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->a(Landroid/graphics/Bitmap;IJZ)V

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->i:Z

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->j:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->h:Lcom/ksyun/media/streamer/util/gles/GLRender;

    new-instance v8, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$1;-><init>(Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;Landroid/graphics/Bitmap;IJZ)V

    invoke-virtual {v0, v8}, Lcom/ksyun/media/streamer/util/gles/GLRender;->queueEvent(Ljava/lang/Runnable;)V

    .line 8
    iget-boolean p1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->i:Z

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->j:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateFrame(Landroid/graphics/Bitmap;JZ)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move v5, p4

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->updateFrame(Landroid/graphics/Bitmap;IJZ)V

    return-void
.end method

.method public updateFrame(Landroid/graphics/Bitmap;Z)V
    .locals 10

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    div-long v7, v0, v2

    const/4 v6, 0x0

    move-object v4, p0

    move-object v5, p1

    move v9, p2

    invoke-virtual/range {v4 .. v9}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->updateFrame(Landroid/graphics/Bitmap;IJZ)V

    return-void
.end method

.method public updateFrame(Ljava/nio/ByteBuffer;III)V
    .locals 12

    .line 10
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    div-long v10, v0, v2

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    invoke-virtual/range {v4 .. v11}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->updateFrame(Ljava/nio/ByteBuffer;IIIIJ)V

    return-void
.end method

.method public updateFrame(Ljava/nio/ByteBuffer;IIIIJ)V
    .locals 12

    move-object v9, p0

    .line 12
    iget-object v0, v9, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->h:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->isGLRenderThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-direct/range {p0 .. p7}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->a(Ljava/nio/ByteBuffer;IIIIJ)V

    goto :goto_0

    .line 14
    :cond_0
    iget-boolean v0, v9, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->i:Z

    if-eqz v0, :cond_1

    .line 15
    iget-object v0, v9, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->j:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 16
    :cond_1
    iget-object v10, v9, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->h:Lcom/ksyun/media/streamer/util/gles/GLRender;

    new-instance v11, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$2;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$2;-><init>(Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;Ljava/nio/ByteBuffer;IIIIJ)V

    invoke-virtual {v10, v11}, Lcom/ksyun/media/streamer/util/gles/GLRender;->queueEvent(Ljava/lang/Runnable;)V

    .line 17
    iget-boolean v0, v9, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->i:Z

    if-eqz v0, :cond_2

    .line 18
    iget-object v0, v9, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->j:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateFrame(Ljava/nio/ByteBuffer;IIIJ)V
    .locals 8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide v6, p5

    .line 11
    invoke-virtual/range {v0 .. v7}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->updateFrame(Ljava/nio/ByteBuffer;IIIIJ)V

    return-void
.end method

.method public updateYUVFrame(Ljava/nio/ByteBuffer;[IIIIJ)V
    .locals 12

    move-object v9, p0

    .line 1
    iget-object v0, v9, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->h:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->isGLRenderThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct/range {p0 .. p7}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->a(Ljava/nio/ByteBuffer;[IIIIJ)V

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, v9, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->i:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, v9, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->j:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 5
    :cond_1
    iget-object v10, v9, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->h:Lcom/ksyun/media/streamer/util/gles/GLRender;

    new-instance v11, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$3;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$3;-><init>(Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;Ljava/nio/ByteBuffer;[IIIIJ)V

    invoke-virtual {v10, v11}, Lcom/ksyun/media/streamer/util/gles/GLRender;->queueEvent(Ljava/lang/Runnable;)V

    .line 6
    iget-boolean v0, v9, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->i:Z

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, v9, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->j:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    :cond_2
    :goto_0
    return-void
.end method

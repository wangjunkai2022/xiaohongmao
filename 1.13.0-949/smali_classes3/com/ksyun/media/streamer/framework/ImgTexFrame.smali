.class public Lcom/ksyun/media/streamer/framework/ImgTexFrame;
.super Lcom/ksyun/media/streamer/framework/AVFrameBase;
.source "ImgTexFrame.java"


# static fields
.field public static final NO_TEXTURE:I = -0x1

.field private static final a:[F


# instance fields
.field private b:Lcom/ksyun/media/streamer/util/gles/FboManager;

.field public format:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

.field public final texMatrix:[F

.field public textureId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->a:[F

    return-void
.end method

.method public constructor <init>(Lcom/ksyun/media/streamer/framework/ImgTexFormat;I[FJ)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/ksyun/media/streamer/framework/AVFrameBase;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->b:Lcom/ksyun/media/streamer/util/gles/FboManager;

    .line 5
    iput-object p1, p0, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->format:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    .line 6
    iput p2, p0, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->textureId:I

    .line 7
    iput-wide p4, p0, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    if-eqz p3, :cond_1

    .line 9
    array-length p2, p3

    const/16 p4, 0x10

    if-eq p2, p4, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iput-object p3, p0, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->texMatrix:[F

    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    sget-object p2, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->a:[F

    iput-object p2, p0, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->texMatrix:[F

    .line 12
    invoke-static {p2, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    :goto_1
    return-void
.end method

.method public constructor <init>(Lcom/ksyun/media/streamer/framework/ImgTexFormat;Lcom/ksyun/media/streamer/util/gles/FboManager;I[FJ)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-wide v4, p5

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/ksyun/media/streamer/framework/ImgTexFrame;-><init>(Lcom/ksyun/media/streamer/framework/ImgTexFormat;I[FJ)V

    .line 2
    iput-object p2, p0, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->b:Lcom/ksyun/media/streamer/util/gles/FboManager;

    return-void
.end method

.method public constructor <init>(Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Lcom/ksyun/media/streamer/framework/AVFrameBase;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->b:Lcom/ksyun/media/streamer/util/gles/FboManager;

    .line 15
    iget-object v0, p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->format:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    iput-object v0, p0, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->format:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    .line 16
    iget v0, p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->textureId:I

    iput v0, p0, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->textureId:I

    .line 17
    iget-object v0, p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->texMatrix:[F

    iput-object v0, p0, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->texMatrix:[F

    .line 18
    iget-wide v0, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    iput-wide v0, p0, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    .line 19
    iget v0, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    iput v0, p0, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    .line 20
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->isRefCounted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->b:Lcom/ksyun/media/streamer/util/gles/FboManager;

    iput-object v0, p0, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->b:Lcom/ksyun/media/streamer/util/gles/FboManager;

    .line 22
    iget p1, p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->textureId:I

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/util/gles/FboManager;->lock(I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public isRefCounted()Z
    .locals 2

    iget-object v0, p0, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->b:Lcom/ksyun/media/streamer/util/gles/FboManager;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->textureId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized ref()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->isRefCounted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->b:Lcom/ksyun/media/streamer/util/gles/FboManager;

    iget v1, p0, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->textureId:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/util/gles/FboManager;->lock(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unref()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->isRefCounted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->b:Lcom/ksyun/media/streamer/util/gles/FboManager;

    iget v1, p0, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->textureId:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/util/gles/FboManager;->unlock(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.class public Lcom/ksyun/media/streamer/filter/audio/APMWrapper;
.super Ljava/lang/Object;
.source "APMWrapper.java"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0xbb80

.field public static final f:I = 0x2

.field public static final g:I = 0x1

.field public static h:Z = true

.field private static final i:Ljava/lang/String; = "APMWrapper"

.field private static final j:I


# instance fields
.field private k:J

.field private l:Lcom/ksyun/media/streamer/framework/AudioBufFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ksyun/media/streamer/util/LibraryLoader;->load()V

    :try_start_0
    const-string v0, "ksyapm"

    .line 2
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;->h:Z

    const-string v0, "APMWrapper"

    const-string v1, "No libksyapm.so! Please check "

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;->k:J

    .line 3
    sget-boolean v2, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;->h:Z

    const-string v3, "APMWrapper"

    if-nez v2, :cond_0

    const-string v0, "native library not loaded!"

    .line 4
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;->create()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;->k:J

    .line 6
    new-instance v2, Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    const/4 v4, 0x1

    const v5, 0xbb80

    const/4 v6, 0x2

    invoke-direct {v2, v4, v5, v6}, Lcom/ksyun/media/streamer/framework/AudioBufFormat;-><init>(III)V

    iput-object v2, p0, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;->l:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    .line 7
    iget-wide v4, p0, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;->k:J

    cmp-long v2, v4, v0

    if-nez v2, :cond_1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apm create failed \uff0cret "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;->k:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private native attachTo(JIJZ)V
.end method

.method private b(I)I
    .locals 5

    .line 4
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;->k:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    .line 5
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;->setVADLikelihood(JI)I

    move-result p1

    return p1
.end method

.method private b(Z)I
    .locals 5

    .line 2
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;->k:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    .line 3
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;->enableHighPassFilter(JZ)I

    move-result p1

    return p1
.end method

.method private c(Z)I
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;->k:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;->enableVAD(JZ)I

    move-result p1

    return p1
.end method

.method private native config(JII)I
.end method

.method private native create()J
.end method

.method private native enableHighPassFilter(JZ)I
.end method

.method private native enableNs(JZ)I
.end method

.method private native enableVAD(JZ)I
.end method

.method private native processStream(JLjava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
.end method

.method private native read(JLjava/nio/ByteBuffer;I)I
.end method

.method private native release(J)V
.end method

.method private native setNsLevel(JI)I
.end method

.method private native setVADLikelihood(JI)I
.end method


# virtual methods
.method public a(I)I
    .locals 5

    .line 6
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;->k:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    .line 7
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;->setNsLevel(JI)I

    move-result p1

    return p1
.end method

.method public a(II)I
    .locals 5

    .line 8
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;->k:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;->l:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    iput p1, v2, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->sampleRate:I

    .line 10
    iput p2, v2, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->channels:I

    .line 11
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;->config(JII)I

    move-result p1

    return p1
.end method

.method public a(Ljava/nio/ByteBuffer;I)I
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;->k:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;->read(JLjava/nio/ByteBuffer;I)I

    move-result p2

    if-ltz p2, :cond_0

    .line 14
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 15
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_0
    return p2
.end method

.method public a(Z)I
    .locals 5

    .line 4
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;->k:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    .line 5
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;->enableNs(JZ)I

    move-result p1

    return p1
.end method

.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;->k:J

    return-wide v0
.end method

.method public a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 5

    .line 2
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;->k:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;->processStream(JLjava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public a(IJZ)V
    .locals 7

    .line 12
    iget-wide v1, p0, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;->k:J

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;->attachTo(JIJZ)V

    return-void
.end method

.method public b()Lcom/ksyun/media/streamer/framework/AudioBufFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;->l:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    return-object v0
.end method

.method public c()V
    .locals 5

    .line 3
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;->k:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;->release(J)V

    return-void
.end method

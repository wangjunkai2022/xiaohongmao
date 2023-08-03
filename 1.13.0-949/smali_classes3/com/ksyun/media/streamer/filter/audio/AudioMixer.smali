.class public Lcom/ksyun/media/streamer/filter/audio/AudioMixer;
.super Ljava/lang/Object;
.source "AudioMixer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/streamer/filter/audio/AudioMixer$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "AudioMixer"

.field private static final b:I = 0x8

.field private static final c:Z = false

.field private static final d:I


# instance fields
.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ksyun/media/streamer/framework/SinkPin<",
            "Lcom/ksyun/media/streamer/framework/AudioBufFrame;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Lcom/ksyun/media/streamer/framework/SrcPin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "Lcom/ksyun/media/streamer/framework/AudioBufFrame;",
            ">;"
        }
    .end annotation
.end field

.field private g:J

.field private h:I

.field private i:[[F

.field private j:F

.field private k:F

.field private l:Z

.field private m:Z

.field private n:[Lcom/ksyun/media/streamer/framework/AudioBufFormat;

.field private o:Lcom/ksyun/media/streamer/framework/AudioBufFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/ksyun/media/streamer/util/LibraryLoader;->load()V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->g:J

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->h:I

    .line 4
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->e:Ljava/util/List;

    .line 5
    new-instance v1, Lcom/ksyun/media/streamer/filter/audio/b;

    invoke-direct {v1}, Lcom/ksyun/media/streamer/filter/audio/b;-><init>()V

    iput-object v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->f:Lcom/ksyun/media/streamer/framework/SrcPin;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    iput v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->j:F

    .line 7
    iput v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->k:F

    .line 8
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->getSinkPinNum()I

    move-result v2

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    aput v2, v4, v0

    const-class v2, F

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->i:[[F

    const/4 v2, 0x0

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->getSinkPinNum()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 10
    iget-object v3, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->e:Ljava/util/List;

    new-instance v4, Lcom/ksyun/media/streamer/filter/audio/AudioMixer$a;

    invoke-direct {v4, p0, v2}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer$a;-><init>(Lcom/ksyun/media/streamer/filter/audio/AudioMixer;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v3, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->i:[[F

    aget-object v4, v3, v2

    aput v1, v4, v0

    .line 12
    aget-object v3, v3, v2

    aput v1, v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->getSinkPinNum()I

    move-result v0

    new-array v0, v0, [Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->n:[Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    .line 14
    invoke-direct {p0}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->_init()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->g:J

    return-void
.end method

.method private native _attachTo(JIJZ)V
.end method

.method private native _config(JIIIII)I
.end method

.method private native _destroy(JI)V
.end method

.method private native _init()J
.end method

.method private native _process(JILjava/nio/ByteBuffer;I)I
.end method

.method private native _read(JLjava/nio/ByteBuffer;I)I
.end method

.method private native _release(J)V
.end method

.method private native _setBlockingMode(JZ)V
.end method

.method private native _setInputVolume(JIF)V
.end method

.method private native _setInputVolume(JIFF)V
.end method

.method private native _setMainIdx(JI)V
.end method

.method private native _setMute(JZ)V
.end method

.method private native _setOutputVolume(JF)V
.end method

.method private native _setOutputVolume(JFF)V
.end method

.method private a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->f:Lcom/ksyun/media/streamer/framework/SrcPin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->_release(J)V

    .line 5
    iput-wide v2, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->g:J

    :cond_0
    return-void
.end method


# virtual methods
.method protected declared-synchronized a(ILcom/ksyun/media/streamer/framework/AudioBufFormat;)V
    .locals 10

    monitor-enter p0

    if-nez p2, :cond_0

    .line 11
    monitor-exit p0

    return-void

    .line 12
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->n:[Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    aput-object p2, v0, p1

    const-string v0, "AudioMixer"

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doFormatChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " nativeModule="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->nativeModule:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-wide v6, p2, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->nativeModule:J

    const-wide/16 v0, 0x0

    cmp-long v2, v6, v0

    if-eqz v2, :cond_1

    .line 15
    iget-wide v3, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->g:J

    const/4 v8, 0x0

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->_attachTo(JIJZ)V

    goto :goto_0

    .line 16
    :cond_1
    iget-wide v3, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->g:J

    iget v6, p2, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->sampleRate:I

    iget v7, p2, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->channels:I

    const/16 v8, 0x400

    const/16 v9, 0x12c

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v2 .. v9}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->_config(JIIIII)I

    .line 17
    :goto_0
    iget v2, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->h:I

    if-ne p1, v2, :cond_3

    .line 18
    new-instance p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    iget v2, p2, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->sampleFormat:I

    iget v3, p2, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->sampleRate:I

    iget v4, p2, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->channels:I

    invoke-direct {p1, v2, v3, v4}, Lcom/ksyun/media/streamer/framework/AudioBufFormat;-><init>(III)V

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->o:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    .line 19
    iget-wide v2, p2, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->nativeModule:J

    cmp-long p2, v2, v0

    if-eqz p2, :cond_2

    .line 20
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->g:J

    iput-wide v0, p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->nativeModule:J

    .line 21
    :cond_2
    iget-object p2, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->f:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {p2, p1}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFormatChanged(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected a(ILcom/ksyun/media/streamer/framework/AudioBufFrame;)V
    .locals 11

    .line 23
    iget v0, p2, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 24
    iget-object v0, p2, Lcom/ksyun/media/streamer/framework/AudioBufFrame;->format:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    iget-wide v7, v0, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->nativeModule:J

    cmp-long v0, v7, v1

    if-eqz v0, :cond_0

    .line 25
    iget-wide v4, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->g:J

    const/4 v9, 0x1

    move-object v3, p0

    move v6, p1

    invoke-direct/range {v3 .. v9}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->_attachTo(JIJZ)V

    .line 26
    :cond_0
    iget-wide v3, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->g:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 27
    invoke-direct {p0, v3, v4, p1}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->_destroy(JI)V

    .line 28
    :cond_1
    iget v0, p2, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    iget-wide v3, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->g:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    .line 29
    invoke-direct {p0, v3, v4, p1}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->_destroy(JI)V

    .line 30
    :cond_2
    iget-object v9, p2, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    if-eqz v9, :cond_3

    iget-object v0, p2, Lcom/ksyun/media/streamer/framework/AudioBufFrame;->format:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    iget-wide v3, v0, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->nativeModule:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    iget-wide v6, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->g:J

    cmp-long v0, v6, v1

    if-eqz v0, :cond_3

    .line 31
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->limit()I

    move-result v10

    move-object v5, p0

    move v8, p1

    invoke-direct/range {v5 .. v10}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->_process(JILjava/nio/ByteBuffer;I)I

    .line 32
    :cond_3
    iget v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->h:I

    if-ne p1, v0, :cond_5

    .line 33
    iget-object p1, p2, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_4

    iget-object v0, p2, Lcom/ksyun/media/streamer/framework/AudioBufFrame;->format:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    iget-wide v3, v0, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->nativeModule:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_4

    .line 34
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->g:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->_read(JLjava/nio/ByteBuffer;I)I

    move-result p1

    if-gtz p1, :cond_4

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readNative failed ret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioMixer"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_4
    new-instance p1, Lcom/ksyun/media/streamer/framework/AudioBufFrame;

    invoke-direct {p1, p2}, Lcom/ksyun/media/streamer/framework/AudioBufFrame;-><init>(Lcom/ksyun/media/streamer/framework/AudioBufFrame;)V

    .line 37
    iget-object p2, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->o:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    iput-object p2, p1, Lcom/ksyun/media/streamer/framework/AudioBufFrame;->format:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    .line 38
    iget-object p2, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->f:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {p2, p1}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    :cond_5
    return-void
.end method

.method protected declared-synchronized a(IZ)V
    .locals 5

    monitor-enter p0

    .line 6
    :try_start_0
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 7
    invoke-direct {p0, v0, v1, p1}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->_destroy(JI)V

    .line 8
    :cond_0
    iget v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->h:I

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    .line 9
    invoke-direct {p0}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public clearBuffer()V
    .locals 0

    return-void
.end method

.method public clearBuffer(I)V
    .locals 0

    return-void
.end method

.method public getBlockingMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->m:Z

    return v0
.end method

.method public getEmptySinkPin()I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->getSinkPinNum()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksyun/media/streamer/framework/SinkPin;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/framework/SinkPin;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getInputVolume(I)F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->i:[[F

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 2
    aget-object p1, v0, p1

    const/4 v0, 0x0

    aget p1, p1, v0

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getInputVolume(IZ)F
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->i:[[F

    array-length v1, v0

    if-ge p1, v1, :cond_1

    if-eqz p2, :cond_0

    .line 4
    aget-object p1, v0, p1

    const/4 p2, 0x0

    aget p1, p1, p2

    return p1

    .line 5
    :cond_0
    aget-object p1, v0, p1

    const/4 p2, 0x1

    aget p1, p1, p2

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getMute()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->l:Z

    return v0
.end method

.method public getOutputVolume()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->j:F

    return v0
.end method

.method public getOutputVolume(Z)F
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    iget p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->j:F

    return p1

    .line 3
    :cond_0
    iget p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->k:F

    return p1
.end method

.method public getSinkPin(I)Lcom/ksyun/media/streamer/framework/SinkPin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/ksyun/media/streamer/framework/SinkPin<",
            "Lcom/ksyun/media/streamer/framework/AudioBufFrame;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ksyun/media/streamer/framework/SinkPin;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSinkPinNum()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "Lcom/ksyun/media/streamer/framework/AudioBufFrame;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->f:Lcom/ksyun/media/streamer/framework/SrcPin;

    return-object v0
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBlockingMode(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->m:Z

    .line 2
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->g:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->_setBlockingMode(JZ)V

    return-void
.end method

.method public setInputVolume(IF)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p2}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->setInputVolume(IFF)V

    return-void
.end method

.method public setInputVolume(IFF)V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->i:[[F

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 3
    aget-object v1, v0, p1

    const/4 v2, 0x0

    aput p2, v1, v2

    .line 4
    aget-object v0, v0, p1

    const/4 v1, 0x1

    aput p3, v0, v1

    .line 5
    iget-wide v3, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->g:J

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->_setInputVolume(JIFF)V

    :cond_0
    return-void
.end method

.method public final setMainSinkPinIndex(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->h:I

    .line 2
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->g:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->_setMainIdx(JI)V

    return-void
.end method

.method public setMute(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->l:Z

    .line 2
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->g:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->_setMute(JZ)V

    return-void
.end method

.method public setOutputVolume(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p1}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->setOutputVolume(FF)V

    return-void
.end method

.method public setOutputVolume(FF)V
    .locals 2

    .line 2
    iput p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->j:F

    .line 3
    iput p2, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->k:F

    .line 4
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->g:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->_setOutputVolume(JFF)V

    return-void
.end method

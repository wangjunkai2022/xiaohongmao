.class public abstract Lcom/ksyun/media/streamer/encoder/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/streamer/encoder/Encoder$a;,
        Lcom/ksyun/media/streamer/encoder/Encoder$EncoderListener;,
        Lcom/ksyun/media/streamer/encoder/Encoder$EncoderInfoListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lcom/ksyun/media/streamer/framework/AVFrameBase;",
        "O:",
        "Lcom/ksyun/media/streamer/framework/AVPacketBase;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ENCODER_ERROR_UNKNOWN:I = -0x3e9

.field public static final ENCODER_ERROR_UNSUPPORTED:I = -0x3ea

.field public static final ENCODER_STATE_ENCODING:I = 0x2

.field public static final ENCODER_STATE_FLUSHED:I = 0x5

.field public static final ENCODER_STATE_FLUSHING:I = 0x4

.field public static final ENCODER_STATE_IDLE:I = 0x0

.field public static final ENCODER_STATE_INITIALIZING:I = 0x1

.field public static final ENCODER_STATE_STOPPING:I = 0x3

.field public static final INFO_STARTED:I = 0x1

.field public static final INFO_STOPPED:I = 0x2

.field private static final k:Ljava/lang/String; = "Encoder"

.field private static final l:Z = false

.field private static final m:Z = false

.field private static final n:I = 0x1

.field private static final o:I = 0x2

.field private static final p:I = 0x3

.field private static final q:I = 0x4

.field private static final r:I = 0x5

.field private static final s:I = 0xa

.field private static final t:I = 0xb

.field private static final u:I = 0xc

.field private static final v:I = 0x0

.field private static final w:I = 0x1

.field private static final x:I = 0x2


# instance fields
.field private A:Lcom/ksyun/media/streamer/encoder/Encoder$EncoderListener;

.field private B:Lcom/ksyun/media/streamer/util/c;

.field private C:Z

.field private D:Z

.field private E:Ljava/nio/ByteBuffer;

.field private F:Lcom/ksyun/media/streamer/framework/AVPacketBase;

.field private G:Ljava/util/Timer;

.field private H:Lcom/ksyun/media/streamer/framework/AVFrameBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field protected a:I

.field protected b:Ljava/lang/Object;

.field protected c:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected d:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected e:Z

.field protected f:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected g:Landroid/os/HandlerThread;

.field protected h:Landroid/os/Handler;

.field protected i:Landroid/os/ConditionVariable;

.field protected volatile j:Z

.field public mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/SinkPin<",
            "TI;>;"
        }
    .end annotation
.end field

.field public mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final y:Landroid/os/Handler;

.field private z:Lcom/ksyun/media/streamer/encoder/Encoder$EncoderInfoListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->a:I

    .line 3
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->i:Landroid/os/ConditionVariable;

    .line 4
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->C:Z

    .line 5
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->D:Z

    .line 6
    new-instance v1, Lcom/ksyun/media/streamer/encoder/Encoder$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ksyun/media/streamer/encoder/Encoder$a;-><init>(Lcom/ksyun/media/streamer/encoder/Encoder;Lcom/ksyun/media/streamer/encoder/Encoder$1;)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    .line 7
    new-instance v1, Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-direct {v1}, Lcom/ksyun/media/streamer/framework/SrcPin;-><init>()V

    iput-object v1, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    .line 8
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->y:Landroid/os/Handler;

    .line 12
    new-instance v1, Lcom/ksyun/media/streamer/util/c;

    invoke-direct {v1}, Lcom/ksyun/media/streamer/util/c;-><init>()V

    iput-object v1, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->B:Lcom/ksyun/media/streamer/util/c;

    .line 13
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->j:Z

    .line 14
    invoke-direct {p0}, Lcom/ksyun/media/streamer/encoder/Encoder;->c()V

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/encoder/Encoder;)Lcom/ksyun/media/streamer/framework/AVFrameBase;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->H:Lcom/ksyun/media/streamer/framework/AVFrameBase;

    return-object p0
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/encoder/Encoder;Lcom/ksyun/media/streamer/framework/AVFrameBase;)Lcom/ksyun/media/streamer/framework/AVFrameBase;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->H:Lcom/ksyun/media/streamer/framework/AVFrameBase;

    return-object p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/encoder/Encoder;Lcom/ksyun/media/streamer/framework/AVPacketBase;)Lcom/ksyun/media/streamer/framework/AVPacketBase;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->F:Lcom/ksyun/media/streamer/framework/AVPacketBase;

    return-object p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/encoder/Encoder;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->E:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/encoder/Encoder;)Lcom/ksyun/media/streamer/encoder/Encoder$EncoderInfoListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->z:Lcom/ksyun/media/streamer/encoder/Encoder$EncoderInfoListener;

    return-object p0
.end method

.method private b(Lcom/ksyun/media/streamer/framework/AVPacketBase;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 2
    iget v0, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/ksyun/media/streamer/framework/AVPacketBase;->buf:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cache Extra: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/ksyun/media/streamer/framework/AVPacketBase;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Encoder"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->E:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget-object v1, p1, Lcom/ksyun/media/streamer/framework/AVPacketBase;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 5
    :cond_0
    iget-object v0, p1, Lcom/ksyun/media/streamer/framework/AVPacketBase;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->E:Ljava/nio/ByteBuffer;

    .line 6
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->E:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 8
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->E:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lcom/ksyun/media/streamer/framework/AVPacketBase;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 9
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->E:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 10
    iget-object v0, p1, Lcom/ksyun/media/streamer/framework/AVPacketBase;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 11
    instance-of v0, p1, Lcom/ksyun/media/streamer/framework/ImgPacket;

    if-eqz v0, :cond_2

    .line 12
    new-instance v0, Lcom/ksyun/media/streamer/framework/ImgPacket;

    check-cast p1, Lcom/ksyun/media/streamer/framework/ImgPacket;

    invoke-direct {v0, p1}, Lcom/ksyun/media/streamer/framework/ImgPacket;-><init>(Lcom/ksyun/media/streamer/framework/ImgPacket;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->F:Lcom/ksyun/media/streamer/framework/AVPacketBase;

    .line 13
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->E:Ljava/nio/ByteBuffer;

    iput-object p1, v0, Lcom/ksyun/media/streamer/framework/AVPacketBase;->buf:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 14
    :cond_2
    instance-of v0, p1, Lcom/ksyun/media/streamer/framework/AudioPacket;

    if-eqz v0, :cond_3

    .line 15
    new-instance v0, Lcom/ksyun/media/streamer/framework/AudioPacket;

    check-cast p1, Lcom/ksyun/media/streamer/framework/AudioPacket;

    invoke-direct {v0, p1}, Lcom/ksyun/media/streamer/framework/AudioPacket;-><init>(Lcom/ksyun/media/streamer/framework/AudioPacket;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->F:Lcom/ksyun/media/streamer/framework/AVPacketBase;

    .line 16
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->E:Ljava/nio/ByteBuffer;

    iput-object p1, v0, Lcom/ksyun/media/streamer/framework/AVPacketBase;->buf:Ljava/nio/ByteBuffer;

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/ksyun/media/streamer/encoder/Encoder;)Lcom/ksyun/media/streamer/encoder/Encoder$EncoderListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->A:Lcom/ksyun/media/streamer/encoder/Encoder$EncoderListener;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 3
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EncodeThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->g:Landroid/os/HandlerThread;

    .line 4
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 5
    new-instance v0, Lcom/ksyun/media/streamer/encoder/Encoder$4;

    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ksyun/media/streamer/encoder/Encoder$4;-><init>(Lcom/ksyun/media/streamer/encoder/Encoder;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->h:Landroid/os/Handler;

    return-void
.end method

.method static synthetic d(Lcom/ksyun/media/streamer/encoder/Encoder;)Lcom/ksyun/media/streamer/util/c;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->B:Lcom/ksyun/media/streamer/util/c;

    return-object p0
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;)I
.end method

.method protected abstract a()V
.end method

.method protected abstract a(I)V
.end method

.method protected a(II)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->y:Landroid/os/Handler;

    new-instance v1, Lcom/ksyun/media/streamer/encoder/Encoder$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/ksyun/media/streamer/encoder/Encoder$2;-><init>(Lcom/ksyun/media/streamer/encoder/Encoder;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected a(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    return-void
.end method

.method protected a(Lcom/ksyun/media/streamer/framework/AVPacketBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/encoder/Encoder;->b(Lcom/ksyun/media/streamer/framework/AVPacketBase;)V

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    return-void
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public adjustBitrate(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string p1, "Encoder"

    const-string v0, "Call adjustBitrate on invalid state"

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->g:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->h:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->h:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method protected abstract b(Lcom/ksyun/media/streamer/framework/AVFrameBase;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)I"
        }
    .end annotation
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method protected b(I)V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->y:Landroid/os/Handler;

    new-instance v1, Lcom/ksyun/media/streamer/encoder/Encoder$3;

    invoke-direct {v1, p0, p1}, Lcom/ksyun/media/streamer/encoder/Encoder$3;-><init>(Lcom/ksyun/media/streamer/encoder/Encoder;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected c(Ljava/lang/Object;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFormatChanged(Ljava/lang/Object;)V

    return-void
.end method

.method protected c(Lcom/ksyun/media/streamer/framework/AVFrameBase;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public configure(Ljava/lang/Object;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "config encoder width "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Encoder"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    instance-of v0, p1, Lcom/ksyun/media/streamer/encoder/AudioEncodeFormat;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

    check-cast p1, Lcom/ksyun/media/streamer/encoder/AudioEncodeFormat;

    invoke-direct {v0, p1}, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;-><init>(Lcom/ksyun/media/streamer/encoder/AudioEncodeFormat;)V

    :goto_0
    move-object p1, v0

    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    check-cast p1, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;

    invoke-direct {v0, p1}, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;-><init>(Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;)V

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->b:Ljava/lang/Object;

    .line 7
    iget v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->a:I

    if-nez v0, :cond_3

    .line 8
    instance-of v0, p1, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->a:I

    goto :goto_2

    .line 10
    :cond_2
    instance-of p1, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    .line 11
    iput p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->a:I

    :cond_3
    :goto_2
    return-void
.end method

.method public flush()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "Encoder"

    const-string v1, "Call flush on invalid state"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->g:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->h:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public forceKeyFrame()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->j:Z

    return-void
.end method

.method public getAutoWork()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->D:Z

    return v0
.end method

.method public getEncodeFormat()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public getExtra()Lcom/ksyun/media/streamer/framework/AVPacketBase;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->F:Lcom/ksyun/media/streamer/framework/AVPacketBase;

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/ksyun/media/streamer/framework/ImgPacket;

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lcom/ksyun/media/streamer/framework/ImgPacket;

    check-cast v0, Lcom/ksyun/media/streamer/framework/ImgPacket;

    invoke-direct {v1, v0}, Lcom/ksyun/media/streamer/framework/ImgPacket;-><init>(Lcom/ksyun/media/streamer/framework/ImgPacket;)V

    return-object v1

    .line 4
    :cond_0
    instance-of v1, v0, Lcom/ksyun/media/streamer/framework/AudioPacket;

    if-eqz v1, :cond_1

    .line 5
    new-instance v1, Lcom/ksyun/media/streamer/framework/AudioPacket;

    check-cast v0, Lcom/ksyun/media/streamer/framework/AudioPacket;

    invoke-direct {v1, v0}, Lcom/ksyun/media/streamer/framework/AudioPacket;-><init>(Lcom/ksyun/media/streamer/framework/AudioPacket;)V

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFrameDropped()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->isPermitLogReport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0

    :cond_0
    const-string v0, "Encoder"

    const-string v1, "you must enableStreamStatModule"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getFrameEncoded()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->isPermitLogReport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0

    :cond_0
    const-string v0, "Encoder"

    const-string v1, "you must enableStreamStatModule"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksyun/media/streamer/framework/SinkPin<",
            "TI;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    return-object v0
.end method

.method public getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getUseSyncMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->C:Z

    return v0
.end method

.method public isEncoding()Z
    .locals 2

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public release()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/encoder/Encoder;->stop()V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->g:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->h:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Encoder"

    const-string v1, "Encode Thread Interrupted!"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->g:Landroid/os/HandlerThread;

    :cond_0
    return-void
.end method

.method public setAutoWork(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->D:Z

    return-void
.end method

.method public setEncoderInfoListener(Lcom/ksyun/media/streamer/encoder/Encoder$EncoderInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->z:Lcom/ksyun/media/streamer/encoder/Encoder$EncoderInfoListener;

    return-void
.end method

.method public setEncoderListener(Lcom/ksyun/media/streamer/encoder/Encoder$EncoderListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->A:Lcom/ksyun/media/streamer/encoder/Encoder$EncoderListener;

    return-void
.end method

.method public setMute(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->e:Z

    return-void
.end method

.method public setUseSyncMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->C:Z

    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, "Encoder"

    const-string v1, "Call start on invalid state"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->g:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public startRepeatLastFrame()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->a:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->G:Ljava/util/Timer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->H:Lcom/ksyun/media/streamer/framework/AVFrameBase;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    iget v0, v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->frameRate:F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v1, v0

    float-to-int v0, v1

    .line 3
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->G:Ljava/util/Timer;

    .line 4
    new-instance v2, Lcom/ksyun/media/streamer/encoder/Encoder$1;

    invoke-direct {v2, p0}, Lcom/ksyun/media/streamer/encoder/Encoder$1;-><init>(Lcom/ksyun/media/streamer/encoder/Encoder;)V

    int-to-long v5, v0

    move-wide v3, v5

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "Encoder"

    const-string v1, "Call startRepeatLastFrame on invalid state"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/encoder/Encoder;->stopRepeatLastFrame()V

    .line 3
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/encoder/Encoder;->getUseSyncMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->i:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->g:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->h:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public stopRepeatLastFrame()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->G:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->G:Ljava/util/Timer;

    :cond_0
    return-void
.end method

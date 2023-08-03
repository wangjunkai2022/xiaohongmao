.class public abstract Lcom/ksyun/media/streamer/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/streamer/decoder/Decoder$a;,
        Lcom/ksyun/media/streamer/decoder/Decoder$DecoderErrorListener;,
        Lcom/ksyun/media/streamer/decoder/Decoder$DecoderInfoListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lcom/ksyun/media/streamer/framework/AVPacketBase;",
        "O:",
        "Lcom/ksyun/media/streamer/framework/AVFrameBase;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DECODER_STATE_DECODING:I = 0x2

.field public static final DECODER_STATE_FLUSHED:I = 0x5

.field public static final DECODER_STATE_FLUSHING:I = 0x4

.field public static final DECODER_STATE_IDLE:I = 0x0

.field public static final DECODER_STATE_INITIALIZING:I = 0x1

.field public static final DECODER_STATE_STOPPING:I = 0x3

.field public static final ERROR_UNKNOWN:I = -0x1

.field public static final ERROR_UNSUPPORTED:I = -0x2

.field public static final INFO_STARTED:I = 0x1

.field public static final INFO_STOPPED:I = 0x2

.field protected static final a:Z = false

.field private static final g:Ljava/lang/String; = "Decoder"

.field private static final h:I = 0x0

.field private static final i:I = 0x1

.field private static final j:I = 0x2


# instance fields
.field protected b:I

.field protected c:Ljava/lang/Object;

.field protected d:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected e:F

.field protected f:J

.field private final k:Landroid/os/Handler;

.field private l:Lcom/ksyun/media/streamer/decoder/Decoder$DecoderInfoListener;

.field private m:Lcom/ksyun/media/streamer/decoder/Decoder$DecoderErrorListener;

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

.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->b:I

    .line 3
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->n:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    iput v1, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->e:F

    .line 5
    new-instance v1, Lcom/ksyun/media/streamer/decoder/Decoder$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ksyun/media/streamer/decoder/Decoder$a;-><init>(Lcom/ksyun/media/streamer/decoder/Decoder;Lcom/ksyun/media/streamer/decoder/Decoder$1;)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    .line 6
    new-instance v1, Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-direct {v1}, Lcom/ksyun/media/streamer/framework/SrcPin;-><init>()V

    iput-object v1, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    .line 7
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->k:Landroid/os/Handler;

    .line 9
    iput v0, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->b:I

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/decoder/Decoder;)Lcom/ksyun/media/streamer/decoder/Decoder$DecoderInfoListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->l:Lcom/ksyun/media/streamer/decoder/Decoder$DecoderInfoListener;

    return-object p0
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/decoder/Decoder;)Lcom/ksyun/media/streamer/decoder/Decoder$DecoderErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->m:Lcom/ksyun/media/streamer/decoder/Decoder$DecoderErrorListener;

    return-object p0
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected abstract a(Lcom/ksyun/media/streamer/framework/AVPacketBase;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)I"
        }
    .end annotation
.end method

.method protected a(I)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->k:Landroid/os/Handler;

    new-instance v1, Lcom/ksyun/media/streamer/decoder/Decoder$2;

    invoke-direct {v1, p0, p1}, Lcom/ksyun/media/streamer/decoder/Decoder$2;-><init>(Lcom/ksyun/media/streamer/decoder/Decoder;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected a(II)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->k:Landroid/os/Handler;

    new-instance v1, Lcom/ksyun/media/streamer/decoder/Decoder$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/ksyun/media/streamer/decoder/Decoder$1;-><init>(Lcom/ksyun/media/streamer/decoder/Decoder;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected abstract b()V
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "Decoder"

    const-string v1, "Call flush on invalid state"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 4
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/decoder/Decoder;->c()V

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public getAutoWork()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->n:Z

    return v0
.end method

.method public isDecoding()Z
    .locals 2

    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->d:Ljava/util/concurrent/atomic/AtomicInteger;

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
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/decoder/Decoder;->stop()V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    return-void
.end method

.method public setAutoWork(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->n:Z

    return-void
.end method

.method public setDecoderErrorListener(Lcom/ksyun/media/streamer/decoder/Decoder$DecoderErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->m:Lcom/ksyun/media/streamer/decoder/Decoder$DecoderErrorListener;

    return-void
.end method

.method public setDecoderInfoListener(Lcom/ksyun/media/streamer/decoder/Decoder$DecoderInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->l:Lcom/ksyun/media/streamer/decoder/Decoder$DecoderInfoListener;

    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->e:F

    return-void
.end method

.method public start()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, "Decoder"

    const-string v1, "Call start on invalid state"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 5
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/decoder/Decoder;->a()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 7
    invoke-virtual {p0, v1, v2}, Lcom/ksyun/media/streamer/decoder/Decoder;->a(II)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/decoder/Decoder;->a(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_2

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 4
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/decoder/Decoder;->b()V

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 6
    invoke-virtual {p0, v2, v1}, Lcom/ksyun/media/streamer/decoder/Decoder;->a(II)V

    :cond_2
    :goto_0
    return-void
.end method

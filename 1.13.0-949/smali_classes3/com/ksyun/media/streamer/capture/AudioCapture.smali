.class public Lcom/ksyun/media/streamer/capture/AudioCapture;
.super Ljava/lang/Object;
.source "AudioCapture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/streamer/capture/AudioCapture$a;,
        Lcom/ksyun/media/streamer/capture/AudioCapture$OnAudioCaptureListener;
    }
.end annotation


# static fields
.field public static final AUDIO_CAPTURE_TYPE_AUDIORECORDER:I = 0x1

.field public static final AUDIO_CAPTURE_TYPE_DUMMY:I = 0x3

.field public static final AUDIO_CAPTURE_TYPE_OPENSLES:I = 0x2

.field public static final AUDIO_ERROR_UNKNOWN:I = -0x7d5

.field public static final AUDIO_START_FAILED:I = -0x7d3

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_RECORDING:I = 0x2

.field private static final a:Ljava/lang/String; = "AudioCapture"

.field private static final b:Z = false


# instance fields
.field private c:I

.field private d:I

.field private e:I

.field private f:F

.field private g:Landroid/content/Context;

.field private h:Lcom/ksyun/media/streamer/capture/audio/a;

.field private i:Ljava/lang/Thread;

.field private j:Landroid/os/Handler;

.field private k:I

.field private l:Z

.field private volatile m:Z

.field public mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "Lcom/ksyun/media/streamer/framework/AudioBufFrame;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/ksyun/media/streamer/capture/AudioCapture$OnAudioCaptureListener;

.field private o:Lcom/ksyun/media/streamer/kit/OnAudioRawDataListener;

.field private p:[S


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xac44

    .line 2
    iput v0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->c:I

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->d:I

    .line 4
    iput v0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->e:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    iput v1, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->f:F

    .line 6
    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->g:Landroid/content/Context;

    .line 7
    invoke-static {p1}, Lcom/ksyun/media/streamer/util/audio/a;->a(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->c:I

    .line 8
    iput v0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->d:I

    .line 9
    new-instance p1, Lcom/ksyun/media/streamer/filter/audio/b;

    invoke-direct {p1}, Lcom/ksyun/media/streamer/filter/audio/b;-><init>()V

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    .line 10
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->j:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->k:I

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/AudioCapture;)Lcom/ksyun/media/streamer/capture/AudioCapture$OnAudioCaptureListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->n:Lcom/ksyun/media/streamer/capture/AudioCapture$OnAudioCaptureListener;

    return-object p0
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/AudioCapture;Lcom/ksyun/media/streamer/capture/audio/a;)Lcom/ksyun/media/streamer/capture/audio/a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->h:Lcom/ksyun/media/streamer/capture/audio/a;

    return-object p1
.end method

.method private a(I)V
    .locals 1

    .line 5
    iput p1, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->k:I

    .line 6
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->j:Landroid/os/Handler;

    new-instance v0, Lcom/ksyun/media/streamer/capture/AudioCapture$1;

    invoke-direct {v0, p0}, Lcom/ksyun/media/streamer/capture/AudioCapture$1;-><init>(Lcom/ksyun/media/streamer/capture/AudioCapture;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/AudioCapture;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/capture/AudioCapture;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/AudioCapture;[S)[S
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->p:[S

    return-object p1
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/capture/AudioCapture;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->k:I

    return p0
.end method

.method private b(I)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->j:Landroid/os/Handler;

    new-instance v1, Lcom/ksyun/media/streamer/capture/AudioCapture$2;

    invoke-direct {v1, p0, p1}, Lcom/ksyun/media/streamer/capture/AudioCapture$2;-><init>(Lcom/ksyun/media/streamer/capture/AudioCapture;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/capture/AudioCapture;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/capture/AudioCapture;->a(I)V

    return-void
.end method

.method static synthetic c(Lcom/ksyun/media/streamer/capture/AudioCapture;)I
    .locals 0

    iget p0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->e:I

    return p0
.end method

.method static synthetic d(Lcom/ksyun/media/streamer/capture/AudioCapture;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->g:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcom/ksyun/media/streamer/capture/AudioCapture;)I
    .locals 0

    iget p0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->c:I

    return p0
.end method

.method static synthetic f(Lcom/ksyun/media/streamer/capture/AudioCapture;)I
    .locals 0

    iget p0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->d:I

    return p0
.end method

.method static synthetic g(Lcom/ksyun/media/streamer/capture/AudioCapture;)Lcom/ksyun/media/streamer/capture/audio/a;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->h:Lcom/ksyun/media/streamer/capture/audio/a;

    return-object p0
.end method

.method static synthetic h(Lcom/ksyun/media/streamer/capture/AudioCapture;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->l:Z

    return p0
.end method

.method static synthetic i(Lcom/ksyun/media/streamer/capture/AudioCapture;)F
    .locals 0

    iget p0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->f:F

    return p0
.end method

.method static synthetic j(Lcom/ksyun/media/streamer/capture/AudioCapture;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->m:Z

    return p0
.end method

.method static synthetic k(Lcom/ksyun/media/streamer/capture/AudioCapture;)Lcom/ksyun/media/streamer/kit/OnAudioRawDataListener;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->o:Lcom/ksyun/media/streamer/kit/OnAudioRawDataListener;

    return-object p0
.end method

.method static synthetic l(Lcom/ksyun/media/streamer/capture/AudioCapture;)[S
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->p:[S

    return-object p0
.end method


# virtual methods
.method public getChannels()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->d:I

    return v0
.end method

.method public getEnableLatencyTest()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->l:Z

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->c:I

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

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->f:F

    return v0
.end method

.method public isRecordingState()Z
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->i:Ljava/lang/Thread;

    if-eqz v0, :cond_0

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
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/capture/AudioCapture;->stop()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->p:[S

    .line 3
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->j:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4
    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->j:Landroid/os/Handler;

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    return-void
.end method

.method public setAudioCaptureListener(Lcom/ksyun/media/streamer/capture/AudioCapture$OnAudioCaptureListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->n:Lcom/ksyun/media/streamer/capture/AudioCapture$OnAudioCaptureListener;

    return-void
.end method

.method public setAudioCaptureType(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/capture/AudioCapture;->isRecordingState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->e:I

    if-eq v0, p1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switch audio capture type from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioCapture"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/capture/AudioCapture;->stop()V

    .line 4
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/capture/AudioCapture;->start()V

    .line 5
    :cond_0
    iput p1, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->e:I

    return-void
.end method

.method public setChannels(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->d:I

    return-void
.end method

.method public setEnableLatencyTest(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->l:Z

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->h:Lcom/ksyun/media/streamer/capture/audio/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/ksyun/media/streamer/capture/audio/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public setOnAudioRawDataListener(Lcom/ksyun/media/streamer/kit/OnAudioRawDataListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->o:Lcom/ksyun/media/streamer/kit/OnAudioRawDataListener;

    return-void
.end method

.method public setSampleRate(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->c:I

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->f:F

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->h:Lcom/ksyun/media/streamer/capture/audio/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/ksyun/media/streamer/capture/audio/a;->a(F)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->i:Ljava/lang/Thread;

    if-nez v0, :cond_0

    const-string v0, "AudioCapture"

    const-string v1, "start"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->m:Z

    .line 4
    new-instance v0, Lcom/ksyun/media/streamer/capture/AudioCapture$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ksyun/media/streamer/capture/AudioCapture$a;-><init>(Lcom/ksyun/media/streamer/capture/AudioCapture;Lcom/ksyun/media/streamer/capture/AudioCapture$1;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->i:Ljava/lang/Thread;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->i:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const-string v0, "AudioCapture"

    const-string v1, "stop"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->m:Z

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->i:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->i:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->i:Ljava/lang/Thread;

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 7
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8
    :goto_1
    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioCapture;->i:Ljava/lang/Thread;

    throw v1

    :cond_0
    :goto_2
    return-void
.end method

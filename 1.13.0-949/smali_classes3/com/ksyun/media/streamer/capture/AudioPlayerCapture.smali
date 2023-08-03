.class public Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;
.super Ljava/lang/Object;
.source "AudioPlayerCapture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$PlayRanges;
    }
.end annotation


# static fields
.field public static final AUDIO_PLAYER_TYPE_AUDIOTRACK:I = 0x0

.field public static final AUDIO_PLAYER_TYPE_OPENSLES:I = 0x1

.field private static final a:Ljava/lang/String; = "AudioPlayerCapture"

.field private static final b:Z = true

.field private static final c:Ljava/lang/String; = "assets://"


# instance fields
.field private A:Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;

.field private B:Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;

.field private C:Lcom/ksyun/media/player/KSYMediaPlayer$OnAudioPCMListener;

.field private d:Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;

.field private e:Lcom/ksyun/media/streamer/filter/audio/AudioSpeedFilter;

.field private f:Landroid/content/Context;

.field private g:Lcom/ksyun/media/player/KSYMediaPlayer;

.field private h:Lcom/ksyun/media/streamer/filter/audio/d;

.field private i:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

.field private j:Ljava/nio/ByteBuffer;

.field private k:I

.field private l:Z

.field private m:Z

.field public mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "Lcom/ksyun/media/streamer/framework/AudioBufFrame;",
            ">;"
        }
    .end annotation
.end field

.field private n:F

.field private o:Z

.field private p:J

.field private q:F

.field private r:J

.field private s:J

.field private t:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$PlayRanges;

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;

.field private x:Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;

.field private y:Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;

.field private z:Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->k:I

    .line 3
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->m:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->n:F

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->p:J

    .line 6
    iput v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->q:F

    .line 7
    iput-wide v1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->r:J

    .line 8
    iput-wide v1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->s:J

    .line 9
    new-instance v0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$3;

    invoke-direct {v0, p0}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$3;-><init>(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->z:Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;

    .line 10
    new-instance v0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$4;

    invoke-direct {v0, p0}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$4;-><init>(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->A:Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;

    .line 11
    new-instance v0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$5;

    invoke-direct {v0, p0}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$5;-><init>(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->B:Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;

    .line 12
    new-instance v0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$6;

    invoke-direct {v0, p0}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$6;-><init>(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->C:Lcom/ksyun/media/player/KSYMediaPlayer$OnAudioPCMListener;

    .line 13
    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->f:Landroid/content/Context;

    .line 14
    new-instance p1, Lcom/ksyun/media/streamer/filter/audio/b;

    invoke-direct {p1}, Lcom/ksyun/media/streamer/filter/audio/b;-><init>()V

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    .line 15
    new-instance p1, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;

    invoke-direct {p1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;-><init>()V

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->d:Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;

    .line 16
    new-instance p1, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$1;

    invoke-direct {p1, p0}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$1;-><init>(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)V

    .line 17
    new-instance v0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$2;

    invoke-direct {v0, p0}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$2;-><init>(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)V

    .line 18
    new-instance v1, Lcom/ksyun/media/streamer/filter/audio/AudioSpeedFilter;

    invoke-direct {v1}, Lcom/ksyun/media/streamer/filter/audio/AudioSpeedFilter;-><init>()V

    iput-object v1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->e:Lcom/ksyun/media/streamer/filter/audio/AudioSpeedFilter;

    .line 19
    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 20
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->d:Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->p:J

    return-wide p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Lcom/ksyun/media/streamer/filter/audio/d;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->h:Lcom/ksyun/media/streamer/filter/audio/d;

    return-object p0
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;Lcom/ksyun/media/streamer/filter/audio/d;)Lcom/ksyun/media/streamer/filter/audio/d;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->h:Lcom/ksyun/media/streamer/filter/audio/d;

    return-object p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;Lcom/ksyun/media/streamer/framework/AudioBufFormat;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->i:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    return-object p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->j:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method private a()V
    .locals 5

    const-string v0, "AudioPlayerCapture"

    const-string v1, "sendEos"

    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->i:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    if-eqz v0, :cond_0

    .line 16
    new-instance v1, Lcom/ksyun/media/streamer/framework/AudioBufFrame;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/ksyun/media/streamer/framework/AudioBufFrame;-><init>(Lcom/ksyun/media/streamer/framework/AudioBufFormat;Ljava/nio/ByteBuffer;J)V

    .line 17
    iget v0, v1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    const/high16 v2, 0x10000

    or-int/2addr v0, v2

    or-int/lit8 v0, v0, 0x4

    .line 18
    iput v0, v1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    .line 19
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    :try_start_0
    const-string v0, "assets://"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->f:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->g:Lcom/ksyun/media/player/KSYMediaPlayer;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/ksyun/media/player/KSYMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->g:Lcom/ksyun/media/player/KSYMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->g:Lcom/ksyun/media/player/KSYMediaPlayer;

    invoke-virtual {p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;Z)Z
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->o:Z

    return p0
.end method

.method static synthetic c(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)F
    .locals 0

    iget p0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->q:F

    return p0
.end method

.method static synthetic d(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->w:Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method static synthetic e(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->j:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic f(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->v:Z

    return p0
.end method

.method static synthetic g(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)V
    .locals 0

    invoke-direct {p0}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->a()V

    return-void
.end method

.method static synthetic h(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->x:Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static synthetic i(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->y:Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static synthetic j(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->l:Z

    return p0
.end method

.method static synthetic k(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)I
    .locals 0

    iget p0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->k:I

    return p0
.end method

.method static synthetic l(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->i:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    return-object p0
.end method

.method static synthetic m(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->m:Z

    return p0
.end method

.method static synthetic n(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->f:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic o(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->d:Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;

    return-object p0
.end method


# virtual methods
.method public getAudioFilterMgt()Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->d:Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;

    return-object v0
.end method

.method public getFileDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->p:J

    return-wide v0
.end method

.method public getMediaPlayer()Lcom/ksyun/media/player/KSYMediaPlayer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->g:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/ksyun/media/player/KSYMediaPlayer$Builder;

    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ksyun/media/player/KSYMediaPlayer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer$Builder;->build()Lcom/ksyun/media/player/KSYMediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->g:Lcom/ksyun/media/player/KSYMediaPlayer;

    .line 3
    iget v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    new-instance v0, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->h:Lcom/ksyun/media/streamer/filter/audio/d;

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/ksyun/media/streamer/filter/audio/c;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/filter/audio/c;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->h:Lcom/ksyun/media/streamer/filter/audio/d;

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->g:Lcom/ksyun/media/player/KSYMediaPlayer;

    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->B:Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/player/a;->setOnErrorListener(Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;)V

    const/16 v0, 0x2000

    .line 7
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->j:Ljava/nio/ByteBuffer;

    .line 8
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->g:Lcom/ksyun/media/player/KSYMediaPlayer;

    return-object v0
.end method

.method public getPlayableRanges()Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$PlayRanges;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->t:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$PlayRanges;

    return-object v0
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

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->n:F

    return v0
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->g:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->pause()V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->h:Lcom/ksyun/media/streamer/filter/audio/d;

    invoke-interface {v0}, Lcom/ksyun/media/streamer/filter/audio/d;->d()I

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->stop()V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->g:Lcom/ksyun/media/player/KSYMediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->release()V

    .line 5
    iput-object v1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->g:Lcom/ksyun/media/player/KSYMediaPlayer;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->h:Lcom/ksyun/media/streamer/filter/audio/d;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Lcom/ksyun/media/streamer/filter/audio/d;->f()V

    .line 8
    iput-object v1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->h:Lcom/ksyun/media/streamer/filter/audio/d;

    .line 9
    :cond_1
    iput-object v1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->j:Ljava/nio/ByteBuffer;

    .line 10
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->e:Lcom/ksyun/media/streamer/filter/audio/AudioSpeedFilter;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->release()V

    return-void
.end method

.method public restart()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->g:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->stop()V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->g:Lcom/ksyun/media/player/KSYMediaPlayer;

    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->reset()V

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->g:Lcom/ksyun/media/player/KSYMediaPlayer;

    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->z:Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/player/a;->setOnPreparedListener(Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->g:Lcom/ksyun/media/player/KSYMediaPlayer;

    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->A:Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/player/a;->setOnCompletionListener(Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->g:Lcom/ksyun/media/player/KSYMediaPlayer;

    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->C:Lcom/ksyun/media/player/KSYMediaPlayer$OnAudioPCMListener;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setOnAudioPCMAvailableListener(Lcom/ksyun/media/player/KSYMediaPlayer$OnAudioPCMListener;)V

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->g:Lcom/ksyun/media/player/KSYMediaPlayer;

    iget-boolean v1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->v:Z

    invoke-virtual {v0, v1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setLooping(Z)V

    .line 8
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->g:Lcom/ksyun/media/player/KSYMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ksyun/media/player/KSYMediaPlayer;->shouldAutoPlay(Z)V

    .line 9
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->g:Lcom/ksyun/media/player/KSYMediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/player/KSYMediaPlayer;->enableFastPlayMode(Z)V

    .line 10
    iget-wide v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->r:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-wide v2, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->s:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 11
    iget-object v4, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->g:Lcom/ksyun/media/player/KSYMediaPlayer;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/ksyun/media/player/KSYMediaPlayer;->setPlayableRanges(JJ)V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->u:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->a(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->g:Lcom/ksyun/media/player/KSYMediaPlayer;

    iget v1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->n:F

    invoke-virtual {v0, v1, v1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setVolume(FF)V

    .line 14
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->h:Lcom/ksyun/media/streamer/filter/audio/d;

    iget-boolean v1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->m:Z

    invoke-interface {v0, v1}, Lcom/ksyun/media/streamer/filter/audio/d;->b(Z)V

    :cond_1
    return-void
.end method

.method public resume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->g:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->start()V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->h:Lcom/ksyun/media/streamer/filter/audio/d;

    invoke-interface {v0}, Lcom/ksyun/media/streamer/filter/audio/d;->e()I

    :cond_0
    return-void
.end method

.method public setAudioPlayerType(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->k:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->l:Z

    .line 2
    iput p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->k:I

    return-void
.end method

.method public setEnableFastPlay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->o:Z

    return-void
.end method

.method public setMute(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->h:Lcom/ksyun/media/streamer/filter/audio/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/ksyun/media/streamer/filter/audio/d;->b(Z)V

    .line 3
    :cond_0
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->m:Z

    return-void
.end method

.method public setOnCompletionListener(Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->x:Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->y:Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnPreparedListener(Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->w:Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setPlayableRanges(JJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->r:J

    .line 2
    iput-wide p3, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->s:J

    .line 3
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->t:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$PlayRanges;

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$PlayRanges;

    invoke-direct {p1, p0}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$PlayRanges;-><init>(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)V

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->t:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$PlayRanges;

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->t:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$PlayRanges;

    iget-wide p2, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->r:J

    iput-wide p2, p1, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$PlayRanges;->startTime:J

    .line 6
    iget-wide p2, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->s:J

    iput-wide p2, p1, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$PlayRanges;->endTime:J

    return-void
.end method

.method public setSpeed(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->q:F

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->e:Lcom/ksyun/media/streamer/filter/audio/AudioSpeedFilter;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/audio/AudioSpeedFilter;->setSpeed(F)V

    .line 3
    iget p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->q:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->i:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->e:Lcom/ksyun/media/streamer/filter/audio/AudioSpeedFilter;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/audio/AudioSpeedFilter;->config(Lcom/ksyun/media/streamer/framework/AudioBufFormat;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->d:Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object p1

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->e:Lcom/ksyun/media/streamer/filter/audio/AudioSpeedFilter;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->d:Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object p1

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->e:Lcom/ksyun/media/streamer/filter/audio/AudioSpeedFilter;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Lcom/ksyun/media/streamer/framework/SinkPin;Z)V

    :goto_0
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->n:F

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->g:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public start(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->getMediaPlayer()Lcom/ksyun/media/player/KSYMediaPlayer;

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->g:Lcom/ksyun/media/player/KSYMediaPlayer;

    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->reset()V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->g:Lcom/ksyun/media/player/KSYMediaPlayer;

    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->z:Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/player/a;->setOnPreparedListener(Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->g:Lcom/ksyun/media/player/KSYMediaPlayer;

    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->A:Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/player/a;->setOnCompletionListener(Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->g:Lcom/ksyun/media/player/KSYMediaPlayer;

    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->C:Lcom/ksyun/media/player/KSYMediaPlayer$OnAudioPCMListener;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setOnAudioPCMAvailableListener(Lcom/ksyun/media/player/KSYMediaPlayer$OnAudioPCMListener;)V

    .line 6
    iput-boolean p2, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->v:Z

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->g:Lcom/ksyun/media/player/KSYMediaPlayer;

    invoke-virtual {v0, p2}, Lcom/ksyun/media/player/KSYMediaPlayer;->setLooping(Z)V

    .line 8
    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->g:Lcom/ksyun/media/player/KSYMediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->shouldAutoPlay(Z)V

    .line 9
    iget-object p2, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->g:Lcom/ksyun/media/player/KSYMediaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->enableFastPlayMode(Z)V

    .line 10
    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->u:Ljava/lang/String;

    .line 11
    iget-wide p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->r:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-wide v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->s:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    .line 12
    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->g:Lcom/ksyun/media/player/KSYMediaPlayer;

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setPlayableRanges(JJ)V

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->u:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->a(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->g:Lcom/ksyun/media/player/KSYMediaPlayer;

    iget p2, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->n:F

    invoke-virtual {p1, p2, p2}, Lcom/ksyun/media/player/KSYMediaPlayer;->setVolume(FF)V

    .line 15
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->h:Lcom/ksyun/media/streamer/filter/audio/d;

    iget-boolean p2, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->m:Z

    invoke-interface {p1, p2}, Lcom/ksyun/media/streamer/filter/audio/d;->b(Z)V

    .line 16
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object p1

    const-string p2, "bgm"

    invoke-virtual {p1, p2}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->updateFunctionPoint(Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->g:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    const-string v0, "AudioPlayerCapture"

    const-string v1, "stop"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->g:Lcom/ksyun/media/player/KSYMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setOnAudioPCMAvailableListener(Lcom/ksyun/media/player/KSYMediaPlayer$OnAudioPCMListener;)V

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->g:Lcom/ksyun/media/player/KSYMediaPlayer;

    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->stop()V

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->h:Lcom/ksyun/media/streamer/filter/audio/d;

    invoke-interface {v0}, Lcom/ksyun/media/streamer/filter/audio/d;->c()I

    .line 6
    invoke-direct {p0}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->a()V

    :cond_0
    return-void
.end method

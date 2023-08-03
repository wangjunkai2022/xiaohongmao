.class Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;
.super Ljava/lang/Object;
.source "KSYAudioEffectWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper$EffectOption;
    }
.end annotation


# instance fields
.field private a:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

.field private b:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/ksyun/media/streamer/util/LibraryLoader;->load()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;->b:J

    .line 3
    invoke-direct {p0}, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;->native_init()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;->b:J

    .line 4
    invoke-direct {p0, v0, v1, p1}, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;->native_set_effect_type(JI)V

    return-void
.end method

.method private native attachTo(JIJZ)V
.end method

.method private native native_add_effect(JLjava/lang/String;I[Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper$EffectOption;)V
.end method

.method private native native_init()J
.end method

.method private native native_process(JLjava/nio/ByteBuffer;I)V
.end method

.method private native native_quit(J)V
.end method

.method private native native_read(JLjava/nio/ByteBuffer;I)I
.end method

.method private native native_remove_effects(J)V
.end method

.method private native native_set_audio_format(JIII)V
.end method

.method private native native_set_effect_type(JI)V
.end method

.method private native native_set_pitch_level(JI)V
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;I)I
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;->native_read(JLjava/nio/ByteBuffer;I)I

    move-result p2

    if-ltz p2, :cond_0

    .line 14
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 15
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_0
    return p2
.end method

.method public a()V
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;->b:J

    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;->native_remove_effects(J)V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;->native_set_effect_type(JI)V

    return-void
.end method

.method public a(IJZ)V
    .locals 7

    .line 12
    iget-wide v1, p0, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;->b:J

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;->attachTo(JIJZ)V

    return-void
.end method

.method public a(Lcom/ksyun/media/streamer/framework/AudioBufFormat;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;->a:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    .line 2
    iget-wide v1, p0, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;->b:J

    iget v0, p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->sampleFormat:I

    invoke-static {v0}, Lcom/ksyun/media/streamer/framework/AVConst;->getBytesPerSample(I)I

    move-result v0

    mul-int/lit8 v3, v0, 0x8

    iget v4, p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->sampleRate:I

    iget v5, p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->channels:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;->native_set_audio_format(JIII)V

    return-void
.end method

.method public a(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 7

    .line 4
    array-length v0, p3

    .line 5
    new-array v6, v0, [Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper$EffectOption;

    const/4 v0, 0x0

    .line 6
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 7
    new-instance v1, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper$EffectOption;

    aget-object v2, p3, v0

    invoke-direct {v1, v2}, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper$EffectOption;-><init>(Ljava/lang/String;)V

    aput-object v1, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iget-wide v2, p0, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;->b:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;->native_add_effect(JLjava/lang/String;I[Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper$EffectOption;)V

    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-lez v0, :cond_0

    .line 11
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;->b:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;->native_process(JLjava/nio/ByteBuffer;I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;->b:J

    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;->native_quit(J)V

    return-void
.end method

.method public b(I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;->native_set_pitch_level(JI)V

    return-void
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;->b:J

    return-wide v0
.end method

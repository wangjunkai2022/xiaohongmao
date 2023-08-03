.class public Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectFilter;
.super Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;
.source "KSYAudioEffectFilter.java"


# static fields
.field public static AUDIO_EFFECT_TYPE_FEMALE:I = 0xa

.field public static AUDIO_EFFECT_TYPE_HEROIC:I = 0xc

.field public static AUDIO_EFFECT_TYPE_MALE:I = 0xb

.field public static AUDIO_EFFECT_TYPE_PITCH:I = 0x9

.field public static AUDIO_EFFECT_TYPE_ROBOT:I = 0xd

.field public static AUDIO_PITCH_LEVEL_1:I = -0x3

.field public static AUDIO_PITCH_LEVEL_2:I = -0x2

.field public static AUDIO_PITCH_LEVEL_3:I = -0x1

.field public static AUDIO_PITCH_LEVEL_4:I = 0x0

.field public static AUDIO_PITCH_LEVEL_5:I = 0x1

.field public static AUDIO_PITCH_LEVEL_6:I = 0x2

.field public static AUDIO_PITCH_LEVEL_7:I = 0x3

.field public static Audio_EFFECT_TYPE_USER_DEFINE:I = 0x14

.field private static final a:Ljava/lang/String; = "KSYAudioEffectFilter"

.field private static final b:Z = false


# instance fields
.field private c:Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;

.field private d:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;-><init>()V

    .line 2
    sget v0, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectFilter;->AUDIO_PITCH_LEVEL_4:I

    iput v0, p0, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectFilter;->f:I

    .line 3
    iput p1, p0, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectFilter;->e:I

    .line 4
    new-instance v0, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;

    invoke-direct {v0, p1}, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;-><init>(I)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectFilter;->c:Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;

    return-void
.end method


# virtual methods
.method public addEffect(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectFilter;->c:Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "argv must not been null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected attachTo(IJZ)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectFilter;->c:Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;->a(IJZ)V

    return-void
.end method

.method protected doFilter(Lcom/ksyun/media/streamer/framework/AudioBufFrame;)Lcom/ksyun/media/streamer/framework/AudioBufFrame;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectFilter;->c:Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectFilter;->c:Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;

    iget-object v1, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;->a(Ljava/nio/ByteBuffer;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    :cond_0
    return-object p1
.end method

.method protected doFormatChanged(Lcom/ksyun/media/streamer/framework/AudioBufFormat;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectFilter;->d:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectFilter;->c:Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;->a(Lcom/ksyun/media/streamer/framework/AudioBufFormat;)V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectFilter;->c:Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;

    iget v1, p0, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectFilter;->e:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;->a(I)V

    return-object p1
.end method

.method protected doRelease()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectFilter;->c:Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;->b()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectFilter;->c:Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;

    :cond_0
    return-void
.end method

.method public getAudioEffectType()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectFilter;->e:I

    return v0
.end method

.method protected getNativeInstance()J
    .locals 2

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectFilter;->c:Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPitchLevel()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectFilter;->f:I

    return v0
.end method

.method protected readNative(Ljava/nio/ByteBuffer;I)I
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectFilter;->c:Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;->a(Ljava/nio/ByteBuffer;I)I

    move-result p1

    return p1
.end method

.method public removeEffects()V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectFilter;->c:Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;->a()V

    return-void
.end method

.method public setAudioEffectType(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectFilter;->e:I

    return-void
.end method

.method public setPitchLevel(I)V
    .locals 1

    .line 1
    sget v0, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectFilter;->AUDIO_EFFECT_TYPE_PITCH:I

    iput v0, p0, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectFilter;->e:I

    .line 2
    iput p1, p0, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectFilter;->f:I

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectFilter;->c:Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;->b(I)V

    return-void
.end method

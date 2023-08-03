.class Lcom/ksyun/media/player/util/AudioUtil;
.super Ljava/lang/Object;
.source "AudioUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioUtil"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onAudioPCMReady(Ljava/lang/Object;Ljava/nio/ByteBuffer;JIII)V
    .locals 7

    .line 1
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/ksyun/media/player/KSYMediaPlayer;->_onAudioPCMReady(Ljava/nio/ByteBuffer;JIII)V

    :cond_0
    return-void
.end method

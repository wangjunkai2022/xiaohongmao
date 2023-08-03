.class public Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper$EffectOption;
.super Ljava/lang/Object;
.source "KSYAudioEffectWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EffectOption"
.end annotation


# instance fields
.field option:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/audio/KSYAudioEffectWrapper$EffectOption;->option:Ljava/lang/String;

    return-void
.end method

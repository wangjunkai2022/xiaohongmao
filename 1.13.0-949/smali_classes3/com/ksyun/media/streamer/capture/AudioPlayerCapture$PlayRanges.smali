.class public Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$PlayRanges;
.super Ljava/lang/Object;
.source "AudioPlayerCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlayRanges"
.end annotation


# instance fields
.field public endTime:J

.field public startTime:J

.field final synthetic this$0:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$PlayRanges;->this$0:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

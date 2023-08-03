.class public Lcom/ksyun/media/streamer/publisher/RtmpPublisher$BwEstConfig;
.super Ljava/lang/Object;
.source "RtmpPublisher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/publisher/RtmpPublisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BwEstConfig"
.end annotation


# instance fields
.field public initAudioBitrate:I

.field public initVideoBitrate:I

.field public isAdjustBitrate:Z

.field public maxVideoBitrate:I

.field public minVideoBitrate:I

.field public strategy:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$BwEstConfig;->strategy:I

    return-void
.end method

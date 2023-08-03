.class public Lcom/ksyun/media/streamer/publisher/RTPPublisher;
.super Lcom/ksyun/media/streamer/publisher/Publisher;
.source "RTPPublisher.java"


# static fields
.field private static a:Ljava/lang/String; = "RTPPublisher"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/ksyun/media/streamer/publisher/RTPPublisher;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ksyun/media/streamer/publisher/Publisher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected isAddExtraForVideoKeyFrame()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public release()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/publisher/Publisher;->stop()V

    .line 2
    invoke-super {p0}, Lcom/ksyun/media/streamer/publisher/Publisher;->release()V

    return-void
.end method

.class public Lcom/ksyun/media/player/detector/KSYNetworkTrackerConfig;
.super Ljava/lang/Object;
.source "KSYNetworkTrackerConfig.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:I

.field private g:Lcom/ksyun/media/player/KSYNetworkDetector$KSYDetectorPacketType;

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "tracker_type"

    .line 2
    iput-object v0, p0, Lcom/ksyun/media/player/detector/KSYNetworkTrackerConfig;->a:Ljava/lang/String;

    const-string v0, "tracker_pkt_type"

    .line 3
    iput-object v0, p0, Lcom/ksyun/media/player/detector/KSYNetworkTrackerConfig;->b:Ljava/lang/String;

    const-string v0, "tracker_timeout"

    .line 4
    iput-object v0, p0, Lcom/ksyun/media/player/detector/KSYNetworkTrackerConfig;->c:Ljava/lang/String;

    const-string v0, "tracker_max_ttl"

    .line 5
    iput-object v0, p0, Lcom/ksyun/media/player/detector/KSYNetworkTrackerConfig;->d:Ljava/lang/String;

    const-string v0, "tracker_detect_count"

    .line 6
    iput-object v0, p0, Lcom/ksyun/media/player/detector/KSYNetworkTrackerConfig;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/ksyun/media/player/detector/KSYNetworkTrackerConfig;->h:I

    .line 8
    iput v0, p0, Lcom/ksyun/media/player/detector/KSYNetworkTrackerConfig;->i:I

    .line 9
    iput v0, p0, Lcom/ksyun/media/player/detector/KSYNetworkTrackerConfig;->j:I

    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lcom/ksyun/media/player/detector/KSYNetworkTrackerConfig;->f:I

    .line 11
    sget-object v0, Lcom/ksyun/media/player/KSYNetworkDetector$KSYDetectorPacketType;->KSY_DETECTOR_PACKET_TYPE_ICMP:Lcom/ksyun/media/player/KSYNetworkDetector$KSYDetectorPacketType;

    iput-object v0, p0, Lcom/ksyun/media/player/detector/KSYNetworkTrackerConfig;->g:Lcom/ksyun/media/player/KSYNetworkDetector$KSYDetectorPacketType;

    return-void
.end method


# virtual methods
.method public getDetectCount()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/detector/KSYNetworkTrackerConfig;->j:I

    return v0
.end method

.method public getMaxTimeToLiveCount()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/detector/KSYNetworkTrackerConfig;->i:I

    return v0
.end method

.method public getTimeout()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/detector/KSYNetworkTrackerConfig;->h:I

    return v0
.end method

.method public getTrackerType()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/detector/KSYNetworkTrackerConfig;->f:I

    return v0
.end method

.method public parse(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "tracker_pkt_type"

    .line 1
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2
    invoke-static {}, Lcom/ksyun/media/player/KSYNetworkDetector$KSYDetectorPacketType;->values()[Lcom/ksyun/media/player/KSYNetworkDetector$KSYDetectorPacketType;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 3
    invoke-static {}, Lcom/ksyun/media/player/KSYNetworkDetector$KSYDetectorPacketType;->values()[Lcom/ksyun/media/player/KSYNetworkDetector$KSYDetectorPacketType;

    move-result-object v1

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/ksyun/media/player/detector/KSYNetworkTrackerConfig;->g:Lcom/ksyun/media/player/KSYNetworkDetector$KSYDetectorPacketType;

    :cond_1
    const-string v0, "tracker_timeout"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/player/detector/KSYNetworkTrackerConfig;->h:I

    const-string v0, "tracker_max_ttl"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/player/detector/KSYNetworkTrackerConfig;->i:I

    const-string v0, "tracker_detect_count"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ksyun/media/player/detector/KSYNetworkTrackerConfig;->j:I

    return-void
.end method

.method public setDetectCount(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/player/detector/KSYNetworkTrackerConfig;->j:I

    return-void
.end method

.method public setMaxTimeToLiveCount(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/player/detector/KSYNetworkTrackerConfig;->i:I

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/player/detector/KSYNetworkTrackerConfig;->h:I

    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget v1, p0, Lcom/ksyun/media/player/detector/KSYNetworkTrackerConfig;->f:I

    const-string v2, "tracker_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget-object v1, p0, Lcom/ksyun/media/player/detector/KSYNetworkTrackerConfig;->g:Lcom/ksyun/media/player/KSYNetworkDetector$KSYDetectorPacketType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "tracker_pkt_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    iget v1, p0, Lcom/ksyun/media/player/detector/KSYNetworkTrackerConfig;->h:I

    const-string v2, "tracker_timeout"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    iget v1, p0, Lcom/ksyun/media/player/detector/KSYNetworkTrackerConfig;->i:I

    const-string v2, "tracker_max_ttl"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    iget v1, p0, Lcom/ksyun/media/player/detector/KSYNetworkTrackerConfig;->j:I

    const-string v2, "tracker_detect_count"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

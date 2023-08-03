.class public Lcom/ksyun/media/player/detector/KSYTrackerRouterInfo;
.super Ljava/lang/Object;
.source "KSYTrackerRouterInfo.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "router_ip"

    .line 2
    iput-object v0, p0, Lcom/ksyun/media/player/detector/KSYTrackerRouterInfo;->a:Ljava/lang/String;

    const-string v0, "router_max_delay"

    .line 3
    iput-object v0, p0, Lcom/ksyun/media/player/detector/KSYTrackerRouterInfo;->b:Ljava/lang/String;

    const-string v0, "router_min_delay"

    .line 4
    iput-object v0, p0, Lcom/ksyun/media/player/detector/KSYTrackerRouterInfo;->c:Ljava/lang/String;

    const-string v0, "router_avg_delay"

    .line 5
    iput-object v0, p0, Lcom/ksyun/media/player/detector/KSYTrackerRouterInfo;->d:Ljava/lang/String;

    const-string v0, "router_avg_dev"

    .line 6
    iput-object v0, p0, Lcom/ksyun/media/player/detector/KSYTrackerRouterInfo;->e:Ljava/lang/String;

    const-string v0, "router_pkt_loss"

    .line 7
    iput-object v0, p0, Lcom/ksyun/media/player/detector/KSYTrackerRouterInfo;->f:Ljava/lang/String;

    const-string v0, "router_bandwidth"

    .line 8
    iput-object v0, p0, Lcom/ksyun/media/player/detector/KSYTrackerRouterInfo;->g:Ljava/lang/String;

    const-string v0, "router_pkt_number"

    .line 9
    iput-object v0, p0, Lcom/ksyun/media/player/detector/KSYTrackerRouterInfo;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAverageDelay()F
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/detector/KSYTrackerRouterInfo;->l:F

    return v0
.end method

.method public getDelayAverageDeviation()F
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/detector/KSYTrackerRouterInfo;->m:F

    return v0
.end method

.method public getMaxDelay()F
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/detector/KSYTrackerRouterInfo;->j:F

    return v0
.end method

.method public getMinDelay()F
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/detector/KSYTrackerRouterInfo;->k:F

    return v0
.end method

.method public getPacketLossRate()F
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/detector/KSYTrackerRouterInfo;->n:F

    return v0
.end method

.method public getRouterIP()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/player/detector/KSYTrackerRouterInfo;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method public parse(Landroid/os/Bundle;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const-string v0, "router_ip"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/player/detector/KSYTrackerRouterInfo;->i:Ljava/util/ArrayList;

    const-string v0, "router_max_delay"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/ksyun/media/player/detector/KSYTrackerRouterInfo;->j:F

    const-string v0, "router_min_delay"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/ksyun/media/player/detector/KSYTrackerRouterInfo;->k:F

    const-string v0, "router_avg_delay"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/ksyun/media/player/detector/KSYTrackerRouterInfo;->l:F

    const-string v0, "router_avg_dev"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/ksyun/media/player/detector/KSYTrackerRouterInfo;->m:F

    const-string v0, "router_pkt_loss"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/ksyun/media/player/detector/KSYTrackerRouterInfo;->n:F

    const-string v0, "router_bandwidth"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/player/detector/KSYTrackerRouterInfo;->o:I

    const-string v0, "router_pkt_number"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ksyun/media/player/detector/KSYTrackerRouterInfo;->p:I

    const/4 p1, 0x0

    return p1
.end method

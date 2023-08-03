.class public Lcom/ksyun/media/streamer/filter/AVPtsFilter;
.super Ljava/lang/Object;
.source "AVPtsFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/streamer/filter/AVPtsFilter$PTSFilterSinkPin;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ksyun/media/streamer/framework/AVFrameBase;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Z = false

.field private static final b:Ljava/lang/String; = "AVPtsFilter"


# instance fields
.field private c:J

.field private d:F

.field private e:F

.field public mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/SinkPin<",
            "TT;>;"
        }
    .end annotation
.end field

.field public mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/ksyun/media/streamer/filter/AVPtsFilter;->c:J

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Lcom/ksyun/media/streamer/filter/AVPtsFilter;->d:F

    .line 4
    iput v0, p0, Lcom/ksyun/media/streamer/filter/AVPtsFilter;->e:F

    .line 5
    new-instance v0, Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/framework/SrcPin;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/AVPtsFilter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    .line 6
    new-instance v0, Lcom/ksyun/media/streamer/filter/AVPtsFilter$PTSFilterSinkPin;

    invoke-direct {v0, p0}, Lcom/ksyun/media/streamer/filter/AVPtsFilter$PTSFilterSinkPin;-><init>(Lcom/ksyun/media/streamer/filter/AVPtsFilter;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/AVPtsFilter;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    return-void
.end method

.method private a(J)J
    .locals 5

    .line 2
    iget v0, p0, Lcom/ksyun/media/streamer/filter/AVPtsFilter;->d:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    .line 3
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/AVPtsFilter;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 4
    iput-wide p1, p0, Lcom/ksyun/media/streamer/filter/AVPtsFilter;->c:J

    goto :goto_1

    :cond_0
    sub-long/2addr p1, v0

    long-to-float p1, p1

    .line 5
    iget p2, p0, Lcom/ksyun/media/streamer/filter/AVPtsFilter;->e:F

    mul-float p1, p1, p2

    float-to-long p1, p1

    goto :goto_0

    .line 6
    :cond_1
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/AVPtsFilter;->c:J

    :goto_0
    add-long/2addr p1, v0

    :goto_1
    return-wide p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/filter/AVPtsFilter;J)J
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ksyun/media/streamer/filter/AVPtsFilter;->a(J)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public getPtsOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/AVPtsFilter;->c:J

    return-wide v0
.end method

.method public onDisconnect(Z)V
    .locals 0

    return-void
.end method

.method public setPtsOffSet(J)V
    .locals 0

    iput-wide p1, p0, Lcom/ksyun/media/streamer/filter/AVPtsFilter;->c:J

    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/ksyun/media/streamer/filter/AVPtsFilter;->d:F

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    .line 2
    iput v0, p0, Lcom/ksyun/media/streamer/filter/AVPtsFilter;->e:F

    return-void
.end method

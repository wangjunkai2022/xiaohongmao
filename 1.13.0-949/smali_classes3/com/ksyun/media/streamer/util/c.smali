.class public Lcom/ksyun/media/streamer/util/c;
.super Ljava/lang/Object;
.source "FpsLimiter.java"


# static fields
.field private static final a:Ljava/lang/String; = "FpsLimiter"

.field private static final b:I = 0xf


# instance fields
.field private c:F

.field private d:J

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FJ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ksyun/media/streamer/util/c;->c:F

    .line 2
    iput-wide p2, p0, Lcom/ksyun/media/streamer/util/c;->d:J

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/ksyun/media/streamer/util/c;->e:I

    return-void
.end method

.method public a(J)Z
    .locals 6

    .line 4
    iget v0, p0, Lcom/ksyun/media/streamer/util/c;->e:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-float v0, v0

    iget v1, p0, Lcom/ksyun/media/streamer/util/c;->c:F

    div-float/2addr v0, v1

    float-to-long v2, v0

    .line 5
    iget-wide v4, p0, Lcom/ksyun/media/streamer/util/c;->d:J

    sub-long v4, p1, v4

    long-to-float v0, v4

    long-to-float v4, v2

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v5, v1

    add-float/2addr v4, v5

    const/4 v1, 0x0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    .line 6
    iput-wide p1, p0, Lcom/ksyun/media/streamer/util/c;->d:J

    .line 7
    iput v1, p0, Lcom/ksyun/media/streamer/util/c;->e:I

    const-wide/16 v2, 0x0

    .line 8
    :cond_0
    iget-wide v4, p0, Lcom/ksyun/media/streamer/util/c;->d:J

    sub-long/2addr p1, v4

    const-wide/16 v4, 0xf

    sub-long/2addr v2, v4

    const/4 v0, 0x1

    cmp-long v4, p1, v2

    if-gez v4, :cond_1

    return v0

    .line 9
    :cond_1
    iget p1, p0, Lcom/ksyun/media/streamer/util/c;->e:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/ksyun/media/streamer/util/c;->e:I

    return v1
.end method

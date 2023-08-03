.class public Lcom/rudresh/videocompression/videocompression/h;
.super Ljava/lang/Object;
.source "Sample.java"


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/rudresh/videocompression/videocompression/h;->a:J

    .line 3
    iput-wide p3, p0, Lcom/rudresh/videocompression/videocompression/h;->b:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/rudresh/videocompression/videocompression/h;->a:J

    return-wide v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/rudresh/videocompression/videocompression/h;->b:J

    return-wide v0
.end method

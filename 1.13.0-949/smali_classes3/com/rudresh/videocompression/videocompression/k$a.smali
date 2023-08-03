.class Lcom/rudresh/videocompression/videocompression/k$a;
.super Ljava/lang/Object;
.source "Track.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rudresh/videocompression/videocompression/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:J

.field private c:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/rudresh/videocompression/videocompression/k$a;->a:I

    .line 3
    iput-wide p2, p0, Lcom/rudresh/videocompression/videocompression/k$a;->b:J

    return-void
.end method

.method static synthetic a(Lcom/rudresh/videocompression/videocompression/k$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/rudresh/videocompression/videocompression/k$a;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcom/rudresh/videocompression/videocompression/k$a;)I
    .locals 0

    iget p0, p0, Lcom/rudresh/videocompression/videocompression/k$a;->a:I

    return p0
.end method

.method static synthetic c(Lcom/rudresh/videocompression/videocompression/k$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/rudresh/videocompression/videocompression/k$a;->c:J

    return-wide v0
.end method

.method static synthetic d(Lcom/rudresh/videocompression/videocompression/k$a;J)J
    .locals 0

    iput-wide p1, p0, Lcom/rudresh/videocompression/videocompression/k$a;->c:J

    return-wide p1
.end method

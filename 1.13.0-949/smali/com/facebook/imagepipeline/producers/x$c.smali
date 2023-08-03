.class public Lcom/facebook/imagepipeline/producers/x$c;
.super Lcom/facebook/imagepipeline/producers/w;
.source "HttpUrlConnectionNetworkFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private f:J

.field private g:J

.field private h:J


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "consumer",
            "producerContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/l<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/s0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/w;-><init>(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)V

    return-void
.end method

.method static synthetic l(Lcom/facebook/imagepipeline/producers/x$c;)J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/imagepipeline/producers/x$c;->f:J

    return-wide v0
.end method

.method static synthetic m(Lcom/facebook/imagepipeline/producers/x$c;J)J
    .locals 0

    iput-wide p1, p0, Lcom/facebook/imagepipeline/producers/x$c;->f:J

    return-wide p1
.end method

.method static synthetic n(Lcom/facebook/imagepipeline/producers/x$c;)J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/imagepipeline/producers/x$c;->g:J

    return-wide v0
.end method

.method static synthetic o(Lcom/facebook/imagepipeline/producers/x$c;J)J
    .locals 0

    iput-wide p1, p0, Lcom/facebook/imagepipeline/producers/x$c;->g:J

    return-wide p1
.end method

.method static synthetic p(Lcom/facebook/imagepipeline/producers/x$c;)J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/imagepipeline/producers/x$c;->h:J

    return-wide v0
.end method

.method static synthetic q(Lcom/facebook/imagepipeline/producers/x$c;J)J
    .locals 0

    iput-wide p1, p0, Lcom/facebook/imagepipeline/producers/x$c;->h:J

    return-wide p1
.end method

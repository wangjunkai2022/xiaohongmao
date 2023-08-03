.class public Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;
.super Lcom/facebook/imagepipeline/producers/w;
.source "PriorityNetworkFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FETCH_STATE:",
        "Lcom/facebook/imagepipeline/producers/w;",
        ">",
        "Lcom/facebook/imagepipeline/producers/w;"
    }
.end annotation


# instance fields
.field public f:Lcom/facebook/imagepipeline/producers/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFETCH_STATE;"
        }
    .end annotation
.end field

.field final g:J

.field final h:I

.field final i:I

.field final j:I

.field k:Lcom/facebook/imagepipeline/producers/l0$a;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field l:J

.field m:I

.field n:I

.field o:I

.field final p:Z


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;Lcom/facebook/imagepipeline/producers/w;JIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "consumer",
            "producerContext",
            "delegatedState",
            "enqueuedTimestamp",
            "hiPriCountWhenCreated",
            "lowPriCountWhenCreated",
            "currentlyFetchingCountWhenCreated"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/l<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/s0;",
            "TFETCH_STATE;JIII)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/w;-><init>(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->m:I

    .line 4
    iput p1, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->n:I

    .line 5
    iput p1, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->o:I

    .line 6
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->f:Lcom/facebook/imagepipeline/producers/w;

    .line 7
    iput-wide p4, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->g:J

    .line 8
    iput p6, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->h:I

    .line 9
    iput p7, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->i:I

    .line 10
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/s0;->getPriority()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object p2

    sget-object p3, Lcom/facebook/imagepipeline/common/Priority;->HIGH:Lcom/facebook/imagepipeline/common/Priority;

    if-ne p2, p3, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->p:Z

    .line 11
    iput p8, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->j:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;Lcom/facebook/imagepipeline/producers/w;JIIILcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;-><init>(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;Lcom/facebook/imagepipeline/producers/w;JIII)V

    return-void
.end method

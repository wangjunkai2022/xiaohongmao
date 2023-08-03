.class Lcom/facebook/imagepipeline/producers/p0$b;
.super Ljava/lang/Object;
.source "PriorityStarvingThrottlingProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lcom/facebook/imagepipeline/producers/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/l<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lcom/facebook/imagepipeline/producers/s0;

.field final c:J


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "consumer",
            "producerContext",
            "time"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/l<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/s0;",
            "J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/p0$b;->a:Lcom/facebook/imagepipeline/producers/l;

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/p0$b;->b:Lcom/facebook/imagepipeline/producers/s0;

    .line 4
    iput-wide p3, p0, Lcom/facebook/imagepipeline/producers/p0$b;->c:J

    return-void
.end method

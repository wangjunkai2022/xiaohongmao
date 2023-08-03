.class Lcom/facebook/imagepipeline/producers/p0$d$a;
.super Ljava/lang/Object;
.source "PriorityStarvingThrottlingProducer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/p0$d;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/p0$b;

.field final synthetic b:Lcom/facebook/imagepipeline/producers/p0$d;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/p0$d;Lcom/facebook/imagepipeline/producers/p0$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$nextRequest"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/p0$d$a;->b:Lcom/facebook/imagepipeline/producers/p0$d;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/p0$d$a;->a:Lcom/facebook/imagepipeline/producers/p0$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/p0$d$a;->b:Lcom/facebook/imagepipeline/producers/p0$d;

    iget-object v0, v0, Lcom/facebook/imagepipeline/producers/p0$d;->i:Lcom/facebook/imagepipeline/producers/p0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/p0$d$a;->a:Lcom/facebook/imagepipeline/producers/p0$b;

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/producers/p0;->e(Lcom/facebook/imagepipeline/producers/p0;Lcom/facebook/imagepipeline/producers/p0$b;)V

    return-void
.end method

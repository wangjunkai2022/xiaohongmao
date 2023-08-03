.class Lcom/facebook/imagepipeline/producers/c1$b;
.super Lcom/facebook/imagepipeline/producers/e;
.source "ThreadHandoffProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/c1;->b(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/a1;

.field final synthetic b:Lcom/facebook/imagepipeline/producers/c1;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/c1;Lcom/facebook/imagepipeline/producers/a1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$statefulRunnable"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/c1$b;->b:Lcom/facebook/imagepipeline/producers/c1;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/c1$b;->a:Lcom/facebook/imagepipeline/producers/a1;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/e;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/c1$b;->a:Lcom/facebook/imagepipeline/producers/a1;

    invoke-virtual {v0}, Lcom/facebook/common/executors/h;->a()V

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/c1$b;->b:Lcom/facebook/imagepipeline/producers/c1;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/c1;->d(Lcom/facebook/imagepipeline/producers/c1;)Lcom/facebook/imagepipeline/producers/d1;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/c1$b;->a:Lcom/facebook/imagepipeline/producers/a1;

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/producers/d1;->b(Ljava/lang/Runnable;)V

    return-void
.end method

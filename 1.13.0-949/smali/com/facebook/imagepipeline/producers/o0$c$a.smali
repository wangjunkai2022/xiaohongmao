.class Lcom/facebook/imagepipeline/producers/o0$c$a;
.super Lcom/facebook/imagepipeline/producers/e;
.source "PostprocessorProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/o0$c;-><init>(Lcom/facebook/imagepipeline/producers/o0;Lcom/facebook/imagepipeline/producers/o0$b;Lcom/facebook/imagepipeline/request/e;Lcom/facebook/imagepipeline/producers/s0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/o0;

.field final synthetic b:Lcom/facebook/imagepipeline/producers/o0$c;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/o0$c;Lcom/facebook/imagepipeline/producers/o0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/o0$c$a;->b:Lcom/facebook/imagepipeline/producers/o0$c;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/o0$c$a;->a:Lcom/facebook/imagepipeline/producers/o0;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/e;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/o0$c$a;->b:Lcom/facebook/imagepipeline/producers/o0$c;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/o0$c;->s(Lcom/facebook/imagepipeline/producers/o0$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/o0$c$a;->b:Lcom/facebook/imagepipeline/producers/o0$c;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/p;->r()Lcom/facebook/imagepipeline/producers/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/l;->b()V

    :cond_0
    return-void
.end method

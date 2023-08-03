.class Lcom/facebook/imagepipeline/producers/n$c$b;
.super Lcom/facebook/imagepipeline/producers/e;
.source "DecodeProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/n$c;-><init>(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/n;

.field final synthetic b:Z

.field final synthetic c:Lcom/facebook/imagepipeline/producers/n$c;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/n$c;Lcom/facebook/imagepipeline/producers/n;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$decodeCancellationEnabled",
            "val$this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/n$c$b;->c:Lcom/facebook/imagepipeline/producers/n$c;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/n$c$b;->a:Lcom/facebook/imagepipeline/producers/n;

    iput-boolean p3, p0, Lcom/facebook/imagepipeline/producers/n$c$b;->b:Z

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/n$c$b;->c:Lcom/facebook/imagepipeline/producers/n$c;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/n$c;->s(Lcom/facebook/imagepipeline/producers/n$c;)Lcom/facebook/imagepipeline/producers/s0;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/s0;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/n$c$b;->c:Lcom/facebook/imagepipeline/producers/n$c;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/n$c;->v(Lcom/facebook/imagepipeline/producers/n$c;)Lcom/facebook/imagepipeline/producers/a0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/a0;->h()Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/n$c$b;->b:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/n$c$b;->c:Lcom/facebook/imagepipeline/producers/n$c;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/n$c;->w(Lcom/facebook/imagepipeline/producers/n$c;)V

    :cond_0
    return-void
.end method

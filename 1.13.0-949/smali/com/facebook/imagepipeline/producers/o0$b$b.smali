.class Lcom/facebook/imagepipeline/producers/o0$b$b;
.super Ljava/lang/Object;
.source "PostprocessorProducer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/o0$b;->L()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/o0$b;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/o0$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/o0$b$b;->a:Lcom/facebook/imagepipeline/producers/o0$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/o0$b$b;->a:Lcom/facebook/imagepipeline/producers/o0$b;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/o0$b$b;->a:Lcom/facebook/imagepipeline/producers/o0$b;

    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/o0$b;->t(Lcom/facebook/imagepipeline/producers/o0$b;)Lcom/facebook/common/references/a;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/o0$b$b;->a:Lcom/facebook/imagepipeline/producers/o0$b;

    invoke-static {v2}, Lcom/facebook/imagepipeline/producers/o0$b;->v(Lcom/facebook/imagepipeline/producers/o0$b;)I

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/o0$b$b;->a:Lcom/facebook/imagepipeline/producers/o0$b;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/facebook/imagepipeline/producers/o0$b;->u(Lcom/facebook/imagepipeline/producers/o0$b;Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    .line 5
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/o0$b$b;->a:Lcom/facebook/imagepipeline/producers/o0$b;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/facebook/imagepipeline/producers/o0$b;->w(Lcom/facebook/imagepipeline/producers/o0$b;Z)Z

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    invoke-static {v1}, Lcom/facebook/common/references/a;->A(Lcom/facebook/common/references/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/o0$b$b;->a:Lcom/facebook/imagepipeline/producers/o0$b;

    invoke-static {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/o0$b;->x(Lcom/facebook/imagepipeline/producers/o0$b;Lcom/facebook/common/references/a;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    invoke-static {v1}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V

    .line 10
    throw v0

    .line 11
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/o0$b$b;->a:Lcom/facebook/imagepipeline/producers/o0$b;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/o0$b;->y(Lcom/facebook/imagepipeline/producers/o0$b;)V

    return-void

    :catchall_1
    move-exception v1

    .line 12
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

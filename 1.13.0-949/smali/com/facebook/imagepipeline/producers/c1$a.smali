.class Lcom/facebook/imagepipeline/producers/c1$a;
.super Lcom/facebook/imagepipeline/producers/a1;
.source "ThreadHandoffProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/c1;->b(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/a1<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic k:Lcom/facebook/imagepipeline/producers/u0;

.field final synthetic l:Lcom/facebook/imagepipeline/producers/s0;

.field final synthetic m:Lcom/facebook/imagepipeline/producers/l;

.field final synthetic n:Lcom/facebook/imagepipeline/producers/c1;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/c1;Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/u0;Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/u0;Lcom/facebook/imagepipeline/producers/s0;Lcom/facebook/imagepipeline/producers/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "consumer",
            "producerListener",
            "producerContext",
            "producerName",
            "val$consumer",
            "val$context",
            "val$producerListener"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/c1$a;->n:Lcom/facebook/imagepipeline/producers/c1;

    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/c1$a;->k:Lcom/facebook/imagepipeline/producers/u0;

    iput-object p7, p0, Lcom/facebook/imagepipeline/producers/c1$a;->l:Lcom/facebook/imagepipeline/producers/s0;

    iput-object p8, p0, Lcom/facebook/imagepipeline/producers/c1$a;->m:Lcom/facebook/imagepipeline/producers/l;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/facebook/imagepipeline/producers/a1;-><init>(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/u0;Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ignored"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method protected c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected f(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ignored"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/c1$a;->k:Lcom/facebook/imagepipeline/producers/u0;

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/c1$a;->l:Lcom/facebook/imagepipeline/producers/s0;

    const-string v1, "BackgroundThreadHandoffProducer"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/imagepipeline/producers/u0;->j(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Ljava/util/Map;)V

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/c1$a;->n:Lcom/facebook/imagepipeline/producers/c1;

    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/c1;->c(Lcom/facebook/imagepipeline/producers/c1;)Lcom/facebook/imagepipeline/producers/q0;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/c1$a;->m:Lcom/facebook/imagepipeline/producers/l;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/c1$a;->l:Lcom/facebook/imagepipeline/producers/s0;

    invoke-interface {p1, v0, v1}, Lcom/facebook/imagepipeline/producers/q0;->b(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)V

    return-void
.end method

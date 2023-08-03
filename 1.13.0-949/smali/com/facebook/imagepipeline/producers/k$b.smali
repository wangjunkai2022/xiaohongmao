.class Lcom/facebook/imagepipeline/producers/k$b;
.super Lcom/facebook/imagepipeline/producers/p;
.source "BranchOnSeparateImagesProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/p<",
        "Lcom/facebook/imagepipeline/image/e;",
        "Lcom/facebook/imagepipeline/image/e;",
        ">;"
    }
.end annotation


# instance fields
.field private i:Lcom/facebook/imagepipeline/producers/s0;

.field final synthetic j:Lcom/facebook/imagepipeline/producers/k;


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/producers/k;Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            "this$0",
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

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/k$b;->j:Lcom/facebook/imagepipeline/producers/k;

    .line 3
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/p;-><init>(Lcom/facebook/imagepipeline/producers/l;)V

    .line 4
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/k$b;->i:Lcom/facebook/imagepipeline/producers/s0;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/producers/k;Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;Lcom/facebook/imagepipeline/producers/k$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/producers/k$b;-><init>(Lcom/facebook/imagepipeline/producers/k;Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)V

    return-void
.end method


# virtual methods
.method protected i(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/k$b;->j:Lcom/facebook/imagepipeline/producers/k;

    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/k;->c(Lcom/facebook/imagepipeline/producers/k;)Lcom/facebook/imagepipeline/producers/q0;

    move-result-object p1

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/p;->r()Lcom/facebook/imagepipeline/producers/l;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/k$b;->i:Lcom/facebook/imagepipeline/producers/s0;

    invoke-interface {p1, v0, v1}, Lcom/facebook/imagepipeline/producers/q0;->b(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)V

    return-void
.end method

.method protected bridge synthetic j(Ljava/lang/Object;I)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "newResult",
            "status"
        }
    .end annotation

    check-cast p1, Lcom/facebook/imagepipeline/image/e;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/k$b;->s(Lcom/facebook/imagepipeline/image/e;I)V

    return-void
.end method

.method protected s(Lcom/facebook/imagepipeline/image/e;I)V
    .locals 4
    .param p1    # Lcom/facebook/imagepipeline/image/e;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newResult",
            "status"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/k$b;->i:Lcom/facebook/imagepipeline/producers/s0;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/s0;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 2
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->f(I)Z

    move-result v1

    .line 3
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->s()Lcom/facebook/imagepipeline/common/d;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/facebook/imagepipeline/producers/i1;->c(Lcom/facebook/imagepipeline/image/e;Lcom/facebook/imagepipeline/common/d;)Z

    move-result v2

    if-eqz p1, :cond_2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->k()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/p;->r()Lcom/facebook/imagepipeline/producers/l;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/facebook/imagepipeline/producers/l;->c(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    .line 6
    invoke-static {p2, v3}, Lcom/facebook/imagepipeline/producers/b;->p(II)I

    move-result p2

    .line 7
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/p;->r()Lcom/facebook/imagepipeline/producers/l;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/facebook/imagepipeline/producers/l;->c(Ljava/lang/Object;I)V

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    if-nez v2, :cond_3

    .line 8
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->j()Z

    move-result p2

    if-nez p2, :cond_3

    .line 9
    invoke-static {p1}, Lcom/facebook/imagepipeline/image/e;->d(Lcom/facebook/imagepipeline/image/e;)V

    .line 10
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/k$b;->j:Lcom/facebook/imagepipeline/producers/k;

    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/k;->c(Lcom/facebook/imagepipeline/producers/k;)Lcom/facebook/imagepipeline/producers/q0;

    move-result-object p1

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/p;->r()Lcom/facebook/imagepipeline/producers/l;

    move-result-object p2

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/k$b;->i:Lcom/facebook/imagepipeline/producers/s0;

    invoke-interface {p1, p2, v0}, Lcom/facebook/imagepipeline/producers/q0;->b(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)V

    :cond_3
    return-void
.end method

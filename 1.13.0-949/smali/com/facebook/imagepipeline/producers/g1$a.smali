.class Lcom/facebook/imagepipeline/producers/g1$a;
.super Lcom/facebook/imagepipeline/producers/p;
.source "ThumbnailBranchProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
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
.field private final i:Lcom/facebook/imagepipeline/producers/s0;

.field private final j:I

.field private final k:Lcom/facebook/imagepipeline/common/d;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field final synthetic l:Lcom/facebook/imagepipeline/producers/g1;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/g1;Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10,
            0x10,
            0x0
        }
        names = {
            "this$0",
            "consumer",
            "producerContext",
            "producerIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/l<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/s0;",
            "I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/g1$a;->l:Lcom/facebook/imagepipeline/producers/g1;

    .line 2
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/p;-><init>(Lcom/facebook/imagepipeline/producers/l;)V

    .line 3
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/g1$a;->i:Lcom/facebook/imagepipeline/producers/s0;

    .line 4
    iput p4, p0, Lcom/facebook/imagepipeline/producers/g1$a;->j:I

    .line 5
    invoke-interface {p3}, Lcom/facebook/imagepipeline/producers/s0;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->s()Lcom/facebook/imagepipeline/common/d;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/g1$a;->k:Lcom/facebook/imagepipeline/common/d;

    return-void
.end method


# virtual methods
.method protected i(Ljava/lang/Throwable;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/g1$a;->l:Lcom/facebook/imagepipeline/producers/g1;

    iget v1, p0, Lcom/facebook/imagepipeline/producers/g1$a;->j:I

    add-int/lit8 v1, v1, 0x1

    .line 2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/p;->r()Lcom/facebook/imagepipeline/producers/l;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/g1$a;->i:Lcom/facebook/imagepipeline/producers/s0;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/g1;->c(Lcom/facebook/imagepipeline/producers/g1;ILcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/p;->r()Lcom/facebook/imagepipeline/producers/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/l;->a(Ljava/lang/Throwable;)V

    :cond_0
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

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/g1$a;->s(Lcom/facebook/imagepipeline/image/e;I)V

    return-void
.end method

.method protected s(Lcom/facebook/imagepipeline/image/e;I)V
    .locals 3
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

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->g(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/g1$a;->k:Lcom/facebook/imagepipeline/common/d;

    .line 2
    invoke-static {p1, v0}, Lcom/facebook/imagepipeline/producers/i1;->c(Lcom/facebook/imagepipeline/image/e;Lcom/facebook/imagepipeline/common/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/p;->r()Lcom/facebook/imagepipeline/producers/l;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/l;->c(Ljava/lang/Object;I)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->f(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 5
    invoke-static {p1}, Lcom/facebook/imagepipeline/image/e;->d(Lcom/facebook/imagepipeline/image/e;)V

    .line 6
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/g1$a;->l:Lcom/facebook/imagepipeline/producers/g1;

    iget p2, p0, Lcom/facebook/imagepipeline/producers/g1$a;->j:I

    const/4 v0, 0x1

    add-int/2addr p2, v0

    .line 7
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/p;->r()Lcom/facebook/imagepipeline/producers/l;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/g1$a;->i:Lcom/facebook/imagepipeline/producers/s0;

    .line 8
    invoke-static {p1, p2, v1, v2}, Lcom/facebook/imagepipeline/producers/g1;->c(Lcom/facebook/imagepipeline/producers/g1;ILcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/p;->r()Lcom/facebook/imagepipeline/producers/l;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2, v0}, Lcom/facebook/imagepipeline/producers/l;->c(Ljava/lang/Object;I)V

    :cond_2
    :goto_0
    return-void
.end method

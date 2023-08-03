.class Lcom/facebook/imagepipeline/datasource/a$a;
.super Lcom/facebook/imagepipeline/producers/b;
.source "AbstractProducerToDataSourceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/datasource/a;->C()Lcom/facebook/imagepipeline/producers/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic h:Lcom/facebook/imagepipeline/datasource/a;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/datasource/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/datasource/a$a;->h:Lcom/facebook/imagepipeline/datasource/a;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected h()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/a$a;->h:Lcom/facebook/imagepipeline/datasource/a;

    invoke-static {v0}, Lcom/facebook/imagepipeline/datasource/a;->A(Lcom/facebook/imagepipeline/datasource/a;)V

    return-void
.end method

.method protected i(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/a$a;->h:Lcom/facebook/imagepipeline/datasource/a;

    invoke-static {v0, p1}, Lcom/facebook/imagepipeline/datasource/a;->z(Lcom/facebook/imagepipeline/datasource/a;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected j(Ljava/lang/Object;I)V
    .locals 2
    .param p1    # Ljava/lang/Object;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/a$a;->h:Lcom/facebook/imagepipeline/datasource/a;

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/datasource/a;->y(Lcom/facebook/imagepipeline/datasource/a;)Lcom/facebook/imagepipeline/producers/z0;

    move-result-object v1

    .line 3
    invoke-virtual {v0, p1, p2, v1}, Lcom/facebook/imagepipeline/datasource/a;->G(Ljava/lang/Object;ILcom/facebook/imagepipeline/producers/s0;)V

    return-void
.end method

.method protected k(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/a$a;->h:Lcom/facebook/imagepipeline/datasource/a;

    invoke-static {v0, p1}, Lcom/facebook/imagepipeline/datasource/a;->B(Lcom/facebook/imagepipeline/datasource/a;F)Z

    return-void
.end method

.class public Lcom/facebook/imagepipeline/producers/w;
.super Ljava/lang/Object;
.source "FetchState.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/producers/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/l<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/imagepipeline/producers/s0;

.field private c:J

.field private d:I

.field private e:Lcom/facebook/imagepipeline/common/a;
    .annotation runtime Lr7/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "consumer",
            "context"
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/w;->a:Lcom/facebook/imagepipeline/producers/l;

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/w;->b:Lcom/facebook/imagepipeline/producers/s0;

    const-wide/16 p1, 0x0

    .line 4
    iput-wide p1, p0, Lcom/facebook/imagepipeline/producers/w;->c:J

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/producers/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/l<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/w;->a:Lcom/facebook/imagepipeline/producers/l;

    return-object v0
.end method

.method public b()Lcom/facebook/imagepipeline/producers/s0;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/w;->b:Lcom/facebook/imagepipeline/producers/s0;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/w;->b:Lcom/facebook/imagepipeline/producers/s0;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/s0;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/imagepipeline/producers/w;->c:J

    return-wide v0
.end method

.method public e()Lcom/facebook/imagepipeline/producers/u0;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/w;->b:Lcom/facebook/imagepipeline/producers/s0;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/s0;->k()Lcom/facebook/imagepipeline/producers/u0;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/facebook/imagepipeline/producers/w;->d:I

    return v0
.end method

.method public g()Lcom/facebook/imagepipeline/common/a;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/w;->e:Lcom/facebook/imagepipeline/common/a;

    return-object v0
.end method

.method public h()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/w;->b:Lcom/facebook/imagepipeline/producers/s0;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/s0;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->w()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public i(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastIntermediateResultTimeMs"
        }
    .end annotation

    iput-wide p1, p0, Lcom/facebook/imagepipeline/producers/w;->c:J

    return-void
.end method

.method public j(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onNewResultStatusFlags"
        }
    .end annotation

    iput p1, p0, Lcom/facebook/imagepipeline/producers/w;->d:I

    return-void
.end method

.method public k(Lcom/facebook/imagepipeline/common/a;)V
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/common/a;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytesRange"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/w;->e:Lcom/facebook/imagepipeline/common/a;

    return-void
.end method

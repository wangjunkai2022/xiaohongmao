.class public abstract Lcom/facebook/imagepipeline/producers/p;
.super Lcom/facebook/imagepipeline/producers/b;
.source "DelegatingConsumer.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/imagepipeline/producers/b<",
        "TI;>;"
    }
.end annotation


# instance fields
.field private final h:Lcom/facebook/imagepipeline/producers/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/l<",
            "TO;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "consumer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/l<",
            "TO;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/b;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/p;->h:Lcom/facebook/imagepipeline/producers/l;

    return-void
.end method


# virtual methods
.method protected h()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/p;->h:Lcom/facebook/imagepipeline/producers/l;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/l;->b()V

    return-void
.end method

.method protected i(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/p;->h:Lcom/facebook/imagepipeline/producers/l;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/l;->a(Ljava/lang/Throwable;)V

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

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/p;->h:Lcom/facebook/imagepipeline/producers/l;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/l;->d(F)V

    return-void
.end method

.method public r()Lcom/facebook/imagepipeline/producers/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/l<",
            "TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/p;->h:Lcom/facebook/imagepipeline/producers/l;

    return-object v0
.end method

.class final Lcom/google/common/collect/e3$r;
.super Lcom/google/common/collect/e3$c;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/e3$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/e3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "r"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/e3$r$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/e3$c<",
        "TK;",
        "Lcom/google/common/collect/d3$a;",
        "Lcom/google/common/collect/e3$r<",
        "TK;>;>;",
        "Lcom/google/common/collect/e3$x<",
        "TK;",
        "Lcom/google/common/collect/d3$a;",
        "Lcom/google/common/collect/e3$r<",
        "TK;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/e3$r;)V
    .locals 0
    .param p3    # Lcom/google/common/collect/e3$r;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/e3$r<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/e3$c;-><init>(Ljava/lang/Object;ILcom/google/common/collect/e3$j;)V

    return-void
.end method


# virtual methods
.method e(Lcom/google/common/collect/e3$r;)Lcom/google/common/collect/e3$r;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e3$r<",
            "TK;>;)",
            "Lcom/google/common/collect/e3$r<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/e3$r;

    iget-object v1, p0, Lcom/google/common/collect/e3$c;->a:Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/e3$c;->b:I

    invoke-direct {v0, v1, v2, p1}, Lcom/google/common/collect/e3$r;-><init>(Ljava/lang/Object;ILcom/google/common/collect/e3$r;)V

    return-object v0
.end method

.method public f()Lcom/google/common/collect/d3$a;
    .locals 1

    sget-object v0, Lcom/google/common/collect/d3$a;->a:Lcom/google/common/collect/d3$a;

    return-object v0
.end method

.method g(Lcom/google/common/collect/d3$a;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/e3$r;->f()Lcom/google/common/collect/d3$a;

    move-result-object v0

    return-object v0
.end method

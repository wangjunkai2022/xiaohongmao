.class final Lcom/google/common/collect/e3$a0;
.super Lcom/google/common/collect/e3$d;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/e3$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/e3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a0"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/e3$a0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/e3$d<",
        "TK;",
        "Lcom/google/common/collect/d3$a;",
        "Lcom/google/common/collect/e3$a0<",
        "TK;>;>;",
        "Lcom/google/common/collect/e3$x<",
        "TK;",
        "Lcom/google/common/collect/d3$a;",
        "Lcom/google/common/collect/e3$a0<",
        "TK;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/e3$a0;)V
    .locals 0
    .param p4    # Lcom/google/common/collect/e3$a0;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;TK;I",
            "Lcom/google/common/collect/e3$a0<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/e3$d;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/e3$j;)V

    return-void
.end method


# virtual methods
.method e(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/e3$a0;)Lcom/google/common/collect/e3$a0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;",
            "Lcom/google/common/collect/e3$a0<",
            "TK;>;)",
            "Lcom/google/common/collect/e3$a0<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/e3$a0;

    invoke-virtual {p0}, Lcom/google/common/collect/e3$d;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/google/common/collect/e3$d;->a:I

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/google/common/collect/e3$a0;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/e3$a0;)V

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

    invoke-virtual {p0}, Lcom/google/common/collect/e3$a0;->f()Lcom/google/common/collect/d3$a;

    move-result-object v0

    return-object v0
.end method

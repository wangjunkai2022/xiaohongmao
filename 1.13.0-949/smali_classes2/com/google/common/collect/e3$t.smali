.class final Lcom/google/common/collect/e3$t;
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
    name = "t"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/e3$t$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/e3$c<",
        "TK;TV;",
        "Lcom/google/common/collect/e3$t<",
        "TK;TV;>;>;",
        "Lcom/google/common/collect/e3$x<",
        "TK;TV;",
        "Lcom/google/common/collect/e3$t<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private volatile d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/e3$t;)V
    .locals 0
    .param p3    # Lcom/google/common/collect/e3$t;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/e3$t<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/e3$c;-><init>(Ljava/lang/Object;ILcom/google/common/collect/e3$j;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/e3$t;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method e(Lcom/google/common/collect/e3$t;)Lcom/google/common/collect/e3$t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e3$t<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/e3$t<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/e3$t;

    iget-object v1, p0, Lcom/google/common/collect/e3$c;->a:Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/e3$c;->b:I

    invoke-direct {v0, v1, v2, p1}, Lcom/google/common/collect/e3$t;-><init>(Ljava/lang/Object;ILcom/google/common/collect/e3$t;)V

    .line 2
    iget-object p1, p0, Lcom/google/common/collect/e3$t;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/google/common/collect/e3$t;->d:Ljava/lang/Object;

    return-object v0
.end method

.method f(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/e3$t;->d:Ljava/lang/Object;

    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/e3$t;->d:Ljava/lang/Object;

    return-object v0
.end method

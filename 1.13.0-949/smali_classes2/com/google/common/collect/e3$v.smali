.class final Lcom/google/common/collect/e3$v;
.super Lcom/google/common/collect/e3$c;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/e3$g0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/e3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "v"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/e3$v$a;
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
        "Lcom/google/common/collect/e3$v<",
        "TK;TV;>;>;",
        "Lcom/google/common/collect/e3$g0<",
        "TK;TV;",
        "Lcom/google/common/collect/e3$v<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private volatile d:Lcom/google/common/collect/e3$h0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/e3$h0<",
            "TK;TV;",
            "Lcom/google/common/collect/e3$v<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/e3$v;)V
    .locals 0
    .param p3    # Lcom/google/common/collect/e3$v;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/e3$v<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/e3$c;-><init>(Ljava/lang/Object;ILcom/google/common/collect/e3$j;)V

    .line 2
    invoke-static {}, Lcom/google/common/collect/e3;->t()Lcom/google/common/collect/e3$h0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/e3$v;->d:Lcom/google/common/collect/e3$h0;

    return-void
.end method

.method static synthetic e(Lcom/google/common/collect/e3$v;)Lcom/google/common/collect/e3$h0;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/e3$v;->d:Lcom/google/common/collect/e3$h0;

    return-object p0
.end method

.method static synthetic f(Lcom/google/common/collect/e3$v;Lcom/google/common/collect/e3$h0;)Lcom/google/common/collect/e3$h0;
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/e3$v;->d:Lcom/google/common/collect/e3$h0;

    return-object p1
.end method


# virtual methods
.method public a()Lcom/google/common/collect/e3$h0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e3$h0<",
            "TK;TV;",
            "Lcom/google/common/collect/e3$v<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/e3$v;->d:Lcom/google/common/collect/e3$h0;

    return-object v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/e3$v;->d:Lcom/google/common/collect/e3$h0;

    invoke-interface {v0}, Lcom/google/common/collect/e3$h0;->clear()V

    return-void
.end method

.method g(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/e3$v;)Lcom/google/common/collect/e3$v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;",
            "Lcom/google/common/collect/e3$v<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/e3$v<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/e3$v;

    iget-object v1, p0, Lcom/google/common/collect/e3$c;->a:Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/e3$c;->b:I

    invoke-direct {v0, v1, v2, p2}, Lcom/google/common/collect/e3$v;-><init>(Ljava/lang/Object;ILcom/google/common/collect/e3$v;)V

    .line 2
    iget-object p2, p0, Lcom/google/common/collect/e3$v;->d:Lcom/google/common/collect/e3$h0;

    invoke-interface {p2, p1, v0}, Lcom/google/common/collect/e3$h0;->a(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/e3$j;)Lcom/google/common/collect/e3$h0;

    move-result-object p1

    iput-object p1, v0, Lcom/google/common/collect/e3$v;->d:Lcom/google/common/collect/e3$h0;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/e3$v;->d:Lcom/google/common/collect/e3$h0;

    invoke-interface {v0}, Lcom/google/common/collect/e3$h0;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method h(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e3$v;->d:Lcom/google/common/collect/e3$h0;

    .line 2
    new-instance v1, Lcom/google/common/collect/e3$i0;

    invoke-direct {v1, p2, p1, p0}, Lcom/google/common/collect/e3$i0;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/e3$j;)V

    iput-object v1, p0, Lcom/google/common/collect/e3$v;->d:Lcom/google/common/collect/e3$h0;

    .line 3
    invoke-interface {v0}, Lcom/google/common/collect/e3$h0;->clear()V

    return-void
.end method

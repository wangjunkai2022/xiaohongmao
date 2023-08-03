.class Lcom/google/common/util/concurrent/h1$h;
.super Lcom/google/common/util/concurrent/h1$k;
.source "Striped.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/h1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/h1$k<",
        "T",
        "L;",
        ">;"
    }
.end annotation

.annotation build Lh3/d;
.end annotation


# instance fields
.field final f:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field final g:Lcom/google/common/base/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/i0<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field final h:I


# direct methods
.method constructor <init>(ILcom/google/common/base/i0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/base/i0<",
            "T",
            "L;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/h1$k;-><init>(I)V

    .line 2
    iget p1, p0, Lcom/google/common/util/concurrent/h1$k;->e:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    :goto_0
    iput p1, p0, Lcom/google/common/util/concurrent/h1$h;->h:I

    .line 3
    iput-object p2, p0, Lcom/google/common/util/concurrent/h1$h;->g:Lcom/google/common/base/i0;

    .line 4
    new-instance p1, Lcom/google/common/collect/d3;

    invoke-direct {p1}, Lcom/google/common/collect/d3;-><init>()V

    invoke-virtual {p1}, Lcom/google/common/collect/d3;->m()Lcom/google/common/collect/d3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/d3;->i()Ljava/util/concurrent/ConcurrentMap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/util/concurrent/h1$h;->f:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public g(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)T",
            "L;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/util/concurrent/h1$h;->h:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/h1$h;->p()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/a0;->C(II)I

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/h1$h;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/h1$h;->g:Lcom/google/common/base/i0;

    invoke-interface {v0}, Lcom/google/common/base/i0;->get()Ljava/lang/Object;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/common/util/concurrent/h1$h;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-static {p1, v0}, Lcom/google/common/base/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/google/common/util/concurrent/h1$h;->h:I

    return v0
.end method

.class abstract Lcom/google/common/collect/f$c;
.super Ljava/lang/Object;
.source "AbstractMapBasedMultiset.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field final synthetic d:Lcom/google/common/collect/f;


# direct methods
.method constructor <init>(Lcom/google/common/collect/f;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/f$c;->d:Lcom/google/common/collect/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/google/common/collect/f;->c:Lcom/google/common/collect/q3;

    invoke-virtual {v0}, Lcom/google/common/collect/q3;->f()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/f$c;->a:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/common/collect/f$c;->b:I

    .line 4
    iget-object p1, p1, Lcom/google/common/collect/f;->c:Lcom/google/common/collect/q3;

    iget p1, p1, Lcom/google/common/collect/q3;->d:I

    iput p1, p0, Lcom/google/common/collect/f$c;->c:I

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/f$c;->d:Lcom/google/common/collect/f;

    iget-object v0, v0, Lcom/google/common/collect/f;->c:Lcom/google/common/collect/q3;

    iget v0, v0, Lcom/google/common/collect/q3;->d:I

    iget v1, p0, Lcom/google/common/collect/f$c;->c:I

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method abstract b(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/f$c;->a()V

    .line 2
    iget v0, p0, Lcom/google/common/collect/f$c;->a:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/f$c;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/google/common/collect/f$c;->a:I

    invoke-virtual {p0, v0}, Lcom/google/common/collect/f$c;->b(I)Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/google/common/collect/f$c;->a:I

    iput v1, p0, Lcom/google/common/collect/f$c;->b:I

    .line 4
    iget-object v2, p0, Lcom/google/common/collect/f$c;->d:Lcom/google/common/collect/f;

    iget-object v2, v2, Lcom/google/common/collect/f;->c:Lcom/google/common/collect/q3;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/q3;->t(I)I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/f$c;->a:I

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/f$c;->a()V

    .line 2
    iget v0, p0, Lcom/google/common/collect/f$c;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/y;->e(Z)V

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/f$c;->d:Lcom/google/common/collect/f;

    iget-wide v2, v0, Lcom/google/common/collect/f;->d:J

    iget-object v4, v0, Lcom/google/common/collect/f;->c:Lcom/google/common/collect/q3;

    iget v5, p0, Lcom/google/common/collect/f$c;->b:I

    invoke-virtual {v4, v5}, Lcom/google/common/collect/q3;->y(I)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/google/common/collect/f;->d:J

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/f$c;->d:Lcom/google/common/collect/f;

    iget-object v0, v0, Lcom/google/common/collect/f;->c:Lcom/google/common/collect/q3;

    iget v2, p0, Lcom/google/common/collect/f$c;->a:I

    iget v3, p0, Lcom/google/common/collect/f$c;->b:I

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/q3;->u(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/f$c;->a:I

    .line 5
    iput v1, p0, Lcom/google/common/collect/f$c;->b:I

    .line 6
    iget-object v0, p0, Lcom/google/common/collect/f$c;->d:Lcom/google/common/collect/f;

    iget-object v0, v0, Lcom/google/common/collect/f;->c:Lcom/google/common/collect/q3;

    iget v0, v0, Lcom/google/common/collect/q3;->d:I

    iput v0, p0, Lcom/google/common/collect/f$c;->c:I

    return-void
.end method

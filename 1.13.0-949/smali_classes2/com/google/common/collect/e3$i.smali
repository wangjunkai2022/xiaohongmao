.class abstract Lcom/google/common/collect/e3$i;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/e3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "i"
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

.field c:Lcom/google/common/collect/e3$o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/e3$o<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field d:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field e:Lcom/google/common/collect/e3$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field f:Lcom/google/common/collect/e3$j0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/e3<",
            "TK;TV;TE;TS;>.j0;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field g:Lcom/google/common/collect/e3$j0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/e3<",
            "TK;TV;TE;TS;>.j0;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field final synthetic h:Lcom/google/common/collect/e3;


# direct methods
.method constructor <init>(Lcom/google/common/collect/e3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/e3$i;->h:Lcom/google/common/collect/e3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/common/collect/e3;->c:[Lcom/google/common/collect/e3$o;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/e3$i;->a:I

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/google/common/collect/e3$i;->b:I

    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/e3$i;->a()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/common/collect/e3$i;->f:Lcom/google/common/collect/e3$j0;

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/e3$i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/e3$i;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget v0, p0, Lcom/google/common/collect/e3$i;->a:I

    if-ltz v0, :cond_2

    .line 5
    iget-object v1, p0, Lcom/google/common/collect/e3$i;->h:Lcom/google/common/collect/e3;

    iget-object v1, v1, Lcom/google/common/collect/e3;->c:[Lcom/google/common/collect/e3$o;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/google/common/collect/e3$i;->a:I

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/google/common/collect/e3$i;->c:Lcom/google/common/collect/e3$o;

    .line 6
    iget v0, v0, Lcom/google/common/collect/e3$o;->b:I

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/google/common/collect/e3$i;->c:Lcom/google/common/collect/e3$o;

    iget-object v0, v0, Lcom/google/common/collect/e3$o;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/google/common/collect/e3$i;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/e3$i;->b:I

    .line 9
    invoke-virtual {p0}, Lcom/google/common/collect/e3$i;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    return-void
.end method

.method b(Lcom/google/common/collect/e3$j;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1}, Lcom/google/common/collect/e3$j;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/e3$i;->h:Lcom/google/common/collect/e3;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/e3;->i(Lcom/google/common/collect/e3$j;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance v1, Lcom/google/common/collect/e3$j0;

    iget-object v2, p0, Lcom/google/common/collect/e3$i;->h:Lcom/google/common/collect/e3;

    invoke-direct {v1, v2, v0, p1}, Lcom/google/common/collect/e3$j0;-><init>(Lcom/google/common/collect/e3;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/common/collect/e3$i;->f:Lcom/google/common/collect/e3$j0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/e3$i;->c:Lcom/google/common/collect/e3$o;

    invoke-virtual {v0}, Lcom/google/common/collect/e3$o;->D()V

    return p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/common/collect/e3$i;->c:Lcom/google/common/collect/e3$o;

    invoke-virtual {v0}, Lcom/google/common/collect/e3$o;->D()V

    .line 5
    throw p1
.end method

.method c()Lcom/google/common/collect/e3$j0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e3<",
            "TK;TV;TE;TS;>.j0;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e3$i;->f:Lcom/google/common/collect/e3$j0;

    if-eqz v0, :cond_0

    .line 2
    iput-object v0, p0, Lcom/google/common/collect/e3$i;->g:Lcom/google/common/collect/e3$j0;

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/e3$i;->a()V

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/e3$i;->g:Lcom/google/common/collect/e3$j0;

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e3$i;->e:Lcom/google/common/collect/e3$j;

    if-eqz v0, :cond_1

    .line 2
    :goto_0
    invoke-interface {v0}, Lcom/google/common/collect/e3$j;->c()Lcom/google/common/collect/e3$j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/e3$i;->e:Lcom/google/common/collect/e3$j;

    iget-object v0, p0, Lcom/google/common/collect/e3$i;->e:Lcom/google/common/collect/e3$j;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/common/collect/e3$i;->b(Lcom/google/common/collect/e3$j;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/e3$i;->e:Lcom/google/common/collect/e3$j;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method e()Z
    .locals 3

    .line 1
    :cond_0
    iget v0, p0, Lcom/google/common/collect/e3$i;->b:I

    if-ltz v0, :cond_2

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/e3$i;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/google/common/collect/e3$i;->b:I

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/e3$j;

    iput-object v0, p0, Lcom/google/common/collect/e3$i;->e:Lcom/google/common/collect/e3$j;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/common/collect/e3$i;->b(Lcom/google/common/collect/e3$j;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/e3$i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/e3$i;->f:Lcom/google/common/collect/e3$j0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract next()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e3$i;->g:Lcom/google/common/collect/e3$j0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/y;->e(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/e3$i;->h:Lcom/google/common/collect/e3;

    iget-object v1, p0, Lcom/google/common/collect/e3$i;->g:Lcom/google/common/collect/e3$j0;

    invoke-virtual {v1}, Lcom/google/common/collect/e3$j0;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/e3;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/common/collect/e3$i;->g:Lcom/google/common/collect/e3$j0;

    return-void
.end method

.class abstract Lcom/google/common/cache/j$i;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/j;
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

.field c:Lcom/google/common/cache/j$r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/j$r<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field d:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field e:Lcom/google/common/cache/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/n<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field f:Lcom/google/common/cache/j$l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/j<",
            "TK;TV;>.l0;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field g:Lcom/google/common/cache/j$l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/j<",
            "TK;TV;>.l0;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field final synthetic h:Lcom/google/common/cache/j;


# direct methods
.method constructor <init>(Lcom/google/common/cache/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/cache/j$i;->h:Lcom/google/common/cache/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/common/cache/j;->c:[Lcom/google/common/cache/j$r;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/cache/j$i;->a:I

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/google/common/cache/j$i;->b:I

    .line 4
    invoke-virtual {p0}, Lcom/google/common/cache/j$i;->a()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/common/cache/j$i;->f:Lcom/google/common/cache/j$l0;

    .line 2
    invoke-virtual {p0}, Lcom/google/common/cache/j$i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/cache/j$i;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget v0, p0, Lcom/google/common/cache/j$i;->a:I

    if-ltz v0, :cond_2

    .line 5
    iget-object v1, p0, Lcom/google/common/cache/j$i;->h:Lcom/google/common/cache/j;

    iget-object v1, v1, Lcom/google/common/cache/j;->c:[Lcom/google/common/cache/j$r;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/google/common/cache/j$i;->a:I

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/google/common/cache/j$i;->c:Lcom/google/common/cache/j$r;

    .line 6
    iget v0, v0, Lcom/google/common/cache/j$r;->b:I

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/google/common/cache/j$i;->c:Lcom/google/common/cache/j$r;

    iget-object v0, v0, Lcom/google/common/cache/j$r;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/google/common/cache/j$i;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/cache/j$i;->b:I

    .line 9
    invoke-virtual {p0}, Lcom/google/common/cache/j$i;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    return-void
.end method

.method b(Lcom/google/common/cache/n;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/j$i;->h:Lcom/google/common/cache/j;

    iget-object v0, v0, Lcom/google/common/cache/j;->p:Lcom/google/common/base/l0;

    invoke-virtual {v0}, Lcom/google/common/base/l0;->a()J

    move-result-wide v0

    .line 2
    invoke-interface {p1}, Lcom/google/common/cache/n;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lcom/google/common/cache/j$i;->h:Lcom/google/common/cache/j;

    invoke-virtual {v3, p1, v0, v1}, Lcom/google/common/cache/j;->s(Lcom/google/common/cache/n;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    new-instance v0, Lcom/google/common/cache/j$l0;

    iget-object v1, p0, Lcom/google/common/cache/j$i;->h:Lcom/google/common/cache/j;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/common/cache/j$l0;-><init>(Lcom/google/common/cache/j;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/common/cache/j$i;->f:Lcom/google/common/cache/j$l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/j$i;->c:Lcom/google/common/cache/j$r;

    invoke-virtual {v0}, Lcom/google/common/cache/j$r;->H()V

    return p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/common/cache/j$i;->c:Lcom/google/common/cache/j$r;

    invoke-virtual {v0}, Lcom/google/common/cache/j$r;->H()V

    .line 6
    throw p1
.end method

.method c()Lcom/google/common/cache/j$l0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/j<",
            "TK;TV;>.l0;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/j$i;->f:Lcom/google/common/cache/j$l0;

    if-eqz v0, :cond_0

    .line 2
    iput-object v0, p0, Lcom/google/common/cache/j$i;->g:Lcom/google/common/cache/j$l0;

    .line 3
    invoke-virtual {p0}, Lcom/google/common/cache/j$i;->a()V

    .line 4
    iget-object v0, p0, Lcom/google/common/cache/j$i;->g:Lcom/google/common/cache/j$l0;

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
    iget-object v0, p0, Lcom/google/common/cache/j$i;->e:Lcom/google/common/cache/n;

    if-eqz v0, :cond_1

    .line 2
    :goto_0
    invoke-interface {v0}, Lcom/google/common/cache/n;->c()Lcom/google/common/cache/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/j$i;->e:Lcom/google/common/cache/n;

    iget-object v0, p0, Lcom/google/common/cache/j$i;->e:Lcom/google/common/cache/n;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/common/cache/j$i;->b(Lcom/google/common/cache/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/j$i;->e:Lcom/google/common/cache/n;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method e()Z
    .locals 3

    .line 1
    :cond_0
    iget v0, p0, Lcom/google/common/cache/j$i;->b:I

    if-ltz v0, :cond_2

    .line 2
    iget-object v1, p0, Lcom/google/common/cache/j$i;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/google/common/cache/j$i;->b:I

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/n;

    iput-object v0, p0, Lcom/google/common/cache/j$i;->e:Lcom/google/common/cache/n;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/common/cache/j$i;->b(Lcom/google/common/cache/n;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/j$i;->d()Z

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

    iget-object v0, p0, Lcom/google/common/cache/j$i;->f:Lcom/google/common/cache/j$l0;

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
    iget-object v0, p0, Lcom/google/common/cache/j$i;->g:Lcom/google/common/cache/j$l0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/a0;->g0(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/common/cache/j$i;->h:Lcom/google/common/cache/j;

    iget-object v1, p0, Lcom/google/common/cache/j$i;->g:Lcom/google/common/cache/j$l0;

    invoke-virtual {v1}, Lcom/google/common/cache/j$l0;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/cache/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/common/cache/j$i;->g:Lcom/google/common/cache/j$l0;

    return-void
.end method

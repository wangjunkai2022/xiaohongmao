.class Lcom/google/common/collect/z$e;
.super Lcom/google/common/collect/c;
.source "Collections2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/c<",
        "Ljava/util/List<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field final d:[I

.field final e:[I

.field f:I


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/c;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/common/collect/z$e;->c:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 4
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/common/collect/z$e;->d:[I

    .line 5
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/common/collect/z$e;->e:[I

    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    const/4 v0, 0x1

    .line 7
    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([II)V

    const p1, 0x7fffffff

    .line 8
    iput p1, p0, Lcom/google/common/collect/z$e;->f:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/z$e;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/z$e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/z$e;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/z$e;->d:[I

    iget v2, p0, Lcom/google/common/collect/z$e;->f:I

    aget v3, v1, v2

    iget-object v4, p0, Lcom/google/common/collect/z$e;->e:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    if-gez v3, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/z$e;->f()V

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v2, 0x1

    if-ne v3, v4, :cond_3

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/z$e;->f()V

    goto :goto_0

    .line 5
    :cond_3
    iget-object v4, p0, Lcom/google/common/collect/z$e;->c:Ljava/util/List;

    aget v1, v1, v2

    sub-int v1, v2, v1

    add-int/2addr v1, v0

    sub-int/2addr v2, v3

    add-int/2addr v2, v0

    invoke-static {v4, v1, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 6
    iget-object v0, p0, Lcom/google/common/collect/z$e;->d:[I

    iget v1, p0, Lcom/google/common/collect/z$e;->f:I

    aput v3, v0, v1

    :goto_1
    return-void
.end method

.method protected e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/collect/z$e;->f:I

    if-gtz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/z$e;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/z$e;->d()V

    return-object v0
.end method

.method f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/z$e;->e:[I

    iget v1, p0, Lcom/google/common/collect/z$e;->f:I

    aget v2, v0, v1

    neg-int v2, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    .line 2
    iput v1, p0, Lcom/google/common/collect/z$e;->f:I

    return-void
.end method

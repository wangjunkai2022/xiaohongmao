.class final Lcom/google/common/collect/ImmutableSortedMultiset$b;
.super Ljava/lang/Object;
.source "ImmutableSortedMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSortedMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field

.field final b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field final c:[I


# direct methods
.method constructor <init>(Lcom/google/common/collect/v4;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/v4<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Lcom/google/common/collect/v4;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset$b;->a:Ljava/util/Comparator;

    .line 3
    invoke-interface {p1}, Lcom/google/common/collect/v4;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 4
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/ImmutableSortedMultiset$b;->b:[Ljava/lang/Object;

    .line 5
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset$b;->c:[I

    .line 6
    invoke-interface {p1}, Lcom/google/common/collect/v4;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/k3$a;

    .line 7
    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedMultiset$b;->b:[Ljava/lang/Object;

    invoke-interface {v1}, Lcom/google/common/collect/k3$a;->getElement()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    .line 8
    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedMultiset$b;->c:[I

    invoke-interface {v1}, Lcom/google/common/collect/k3$a;->getCount()I

    move-result v1

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method a()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset$b;->b:[Ljava/lang/Object;

    array-length v0, v0

    .line 2
    new-instance v1, Lcom/google/common/collect/ImmutableSortedMultiset$a;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedMultiset$b;->a:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Lcom/google/common/collect/ImmutableSortedMultiset$a;-><init>(Ljava/util/Comparator;)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    iget-object v3, p0, Lcom/google/common/collect/ImmutableSortedMultiset$b;->b:[Ljava/lang/Object;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/google/common/collect/ImmutableSortedMultiset$b;->c:[I

    aget v4, v4, v2

    invoke-virtual {v1, v3, v4}, Lcom/google/common/collect/ImmutableSortedMultiset$a;->s(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableSortedMultiset$a;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSortedMultiset$a;->t()Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

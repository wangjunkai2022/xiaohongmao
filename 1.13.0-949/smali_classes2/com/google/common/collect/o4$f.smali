.class final Lcom/google/common/collect/o4$f;
.super Lcom/google/common/collect/e1;
.source "Sets.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/o4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/e1<",
        "Ljava/util/List<",
        "TE;>;>;",
        "Ljava/util/Set<",
        "Ljava/util/List<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field private final transient a:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private final transient b:Lcom/google/common/collect/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/w<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;>;",
            "Lcom/google/common/collect/w<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/e1;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/o4$f;->a:Lcom/google/common/collect/ImmutableList;

    .line 3
    iput-object p2, p0, Lcom/google/common/collect/o4$f;->b:Lcom/google/common/collect/w;

    return-void
.end method

.method static Y(Ljava/util/List;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Set<",
            "+TE;>;>;)",
            "Ljava/util/Set<",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/ImmutableList$a;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableList$a;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 3
    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$a;->i(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->m()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    .line 8
    new-instance v0, Lcom/google/common/collect/o4$f$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/o4$f$a;-><init>(Lcom/google/common/collect/ImmutableList;)V

    .line 9
    new-instance v1, Lcom/google/common/collect/o4$f;

    new-instance v2, Lcom/google/common/collect/w;

    invoke-direct {v2, v0}, Lcom/google/common/collect/w;-><init>(Lcom/google/common/collect/ImmutableList;)V

    invoke-direct {v1, p0, v2}, Lcom/google/common/collect/o4$f;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/w;)V

    return-object v1
.end method


# virtual methods
.method protected bridge synthetic L()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/o4$f;->M()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected M()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/o4$f;->b:Lcom/google/common/collect/w;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/google/common/collect/o4$f;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/common/collect/o4$f;

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/o4$f;->a:Lcom/google/common/collect/ImmutableList;

    iget-object p1, p1, Lcom/google/common/collect/o4$f;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/e1;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/google/common/collect/o4$f;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    not-int v0, v0

    not-int v0, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/o4$f;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/k5;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/e1;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    div-int/2addr v4, v5

    invoke-interface {v3}, Ljava/util/Set;->hashCode()I

    move-result v3

    mul-int v4, v4, v3

    add-int/2addr v1, v4

    not-int v1, v1

    not-int v1, v1

    goto :goto_1

    :cond_1
    add-int/2addr v1, v0

    not-int v0, v1

    not-int v0, v0

    return v0
.end method

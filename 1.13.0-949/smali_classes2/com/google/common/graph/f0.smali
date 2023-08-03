.class Lcom/google/common/graph/f0;
.super Lcom/google/common/graph/e0;
.source "MapRetrievalCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/f0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/e0<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private transient c:Lcom/google/common/graph/f0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/f0$a<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private transient d:Lcom/google/common/graph/f0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/f0$a<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/graph/e0;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method private l(Lcom/google/common/graph/f0$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/f0$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/f0;->c:Lcom/google/common/graph/f0$a;

    iput-object v0, p0, Lcom/google/common/graph/f0;->d:Lcom/google/common/graph/f0$a;

    .line 2
    iput-object p1, p0, Lcom/google/common/graph/f0;->c:Lcom/google/common/graph/f0$a;

    return-void
.end method

.method private m(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/common/graph/f0$a;

    invoke-direct {v0, p1, p2}, Lcom/google/common/graph/f0$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/google/common/graph/f0;->l(Lcom/google/common/graph/f0$a;)V

    return-void
.end method


# virtual methods
.method protected d()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/common/graph/e0;->d()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/common/graph/f0;->c:Lcom/google/common/graph/f0$a;

    .line 3
    iput-object v0, p0, Lcom/google/common/graph/f0;->d:Lcom/google/common/graph/f0$a;

    return-void
.end method

.method public f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/graph/f0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/graph/e0;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/common/graph/f0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method protected g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/graph/e0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/f0;->c:Lcom/google/common/graph/f0$a;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, v0, Lcom/google/common/graph/f0$a;->a:Ljava/lang/Object;

    if-ne v1, p1, :cond_1

    .line 4
    iget-object p1, v0, Lcom/google/common/graph/f0$a;->b:Ljava/lang/Object;

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/common/graph/f0;->d:Lcom/google/common/graph/f0$a;

    if-eqz v0, :cond_2

    .line 6
    iget-object v1, v0, Lcom/google/common/graph/f0$a;->a:Ljava/lang/Object;

    if-ne v1, p1, :cond_2

    .line 7
    invoke-direct {p0, v0}, Lcom/google/common/graph/f0;->l(Lcom/google/common/graph/f0$a;)V

    .line 8
    iget-object p1, v0, Lcom/google/common/graph/f0$a;->b:Ljava/lang/Object;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

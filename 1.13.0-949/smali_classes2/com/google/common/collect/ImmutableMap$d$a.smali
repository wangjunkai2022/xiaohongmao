.class Lcom/google/common/collect/ImmutableMap$d$a;
.super Lcom/google/common/collect/k5;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableMap$d;->m()Lcom/google/common/collect/k5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/k5<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Lcom/google/common/collect/ImmutableSet<",
        "TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/ImmutableMap$d;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap$d;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMap$d$a;->b:Lcom/google/common/collect/ImmutableMap$d;

    iput-object p2, p0, Lcom/google/common/collect/ImmutableMap$d$a;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/k5;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Lcom/google/common/collect/ImmutableSet<",
            "TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$d$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    new-instance v1, Lcom/google/common/collect/ImmutableMap$d$a$a;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ImmutableMap$d$a$a;-><init>(Lcom/google/common/collect/ImmutableMap$d$a;Ljava/util/Map$Entry;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$d$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap$d$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.class Lcom/google/common/collect/u0$b$a$a;
.super Ljava/lang/Object;
.source "FilteredEntryMultimap.java"

# interfaces
.implements Lcom/google/common/base/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/u0$b$a;->f(Lcom/google/common/base/b0;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/b0<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/base/b0;

.field final synthetic b:Lcom/google/common/collect/u0$b$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/u0$b$a;Lcom/google/common/base/b0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/u0$b$a$a;->b:Lcom/google/common/collect/u0$b$a;

    iput-object p2, p0, Lcom/google/common/collect/u0$b$a$a;->a:Lcom/google/common/base/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/u0$b$a$a;->a:Lcom/google/common/base/b0;

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-static {v1, p1}, Lcom/google/common/collect/l3;->k(Ljava/lang/Object;I)Lcom/google/common/collect/k3$a;

    move-result-object p1

    .line 3
    invoke-interface {v0, p1}, Lcom/google/common/base/b0;->apply(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/u0$b$a$a;->a(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.class Lcom/google/common/collect/t1$a$a;
.super Ljava/lang/Object;
.source "ForwardingNavigableMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/t1$a;->X()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/google/common/collect/t1$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/t1$a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/t1$a$a;->c:Lcom/google/common/collect/t1$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/common/collect/t1$a$a;->a:Ljava/util/Map$Entry;

    .line 3
    invoke-virtual {p1}, Lcom/google/common/collect/t1$a;->Y()Ljava/util/NavigableMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/t1$a$a;->b:Ljava/util/Map$Entry;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/t1$a$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/t1$a$a;->b:Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-object v0, p0, Lcom/google/common/collect/t1$a$a;->a:Ljava/util/Map$Entry;

    .line 4
    iget-object v1, p0, Lcom/google/common/collect/t1$a$a;->c:Lcom/google/common/collect/t1$a;

    invoke-virtual {v1}, Lcom/google/common/collect/t1$a;->Y()Ljava/util/NavigableMap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/t1$a$a;->b:Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/t1$a$a;->b:Ljava/util/Map$Entry;

    return-object v0

    :catchall_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lcom/google/common/collect/t1$a$a;->b:Ljava/util/Map$Entry;

    iput-object v1, p0, Lcom/google/common/collect/t1$a$a;->a:Ljava/util/Map$Entry;

    .line 6
    iget-object v1, p0, Lcom/google/common/collect/t1$a$a;->c:Lcom/google/common/collect/t1$a;

    invoke-virtual {v1}, Lcom/google/common/collect/t1$a;->Y()Ljava/util/NavigableMap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/t1$a$a;->b:Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/t1$a$a;->b:Ljava/util/Map$Entry;

    .line 7
    throw v0

    .line 8
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/t1$a$a;->b:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/t1$a$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/t1$a$a;->a:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/y;->e(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/t1$a$a;->c:Lcom/google/common/collect/t1$a;

    invoke-virtual {v0}, Lcom/google/common/collect/t1$a;->Y()Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/t1$a$a;->a:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/common/collect/t1$a$a;->a:Ljava/util/Map$Entry;

    return-void
.end method

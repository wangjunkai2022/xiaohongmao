.class Lcom/google/common/collect/b5$c$b;
.super Lcom/google/common/collect/c;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/b5$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c<",
        "Ljava/util/Map$Entry<",
        "TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final c:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;>;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/google/common/collect/b5$c;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/b5$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/b5$c$b;->d:Lcom/google/common/collect/b5$c;

    invoke-direct {p0}, Lcom/google/common/collect/c;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/common/collect/b5$c;->e:Lcom/google/common/collect/b5;

    iget-object p1, p1, Lcom/google/common/collect/b5;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/b5$c$b;->c:Ljava/util/Iterator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/b5$c;Lcom/google/common/collect/b5$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/common/collect/b5$c$b;-><init>(Lcom/google/common/collect/b5$c;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/b5$c$b;->d()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected d()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TR;TV;>;"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/b5$c$b;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/b5$c$b;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v2, p0, Lcom/google/common/collect/b5$c$b;->d:Lcom/google/common/collect/b5$c;

    iget-object v2, v2, Lcom/google/common/collect/b5$c;->d:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Lcom/google/common/collect/b5$c$b$a;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/b5$c$b$a;-><init>(Lcom/google/common/collect/b5$c$b;Ljava/util/Map$Entry;)V

    return-object v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

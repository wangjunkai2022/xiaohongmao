.class Lcom/google/common/collect/a$b;
.super Lcom/google/common/collect/q1;
.source "AbstractBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/q1<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/google/common/collect/a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/a;Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/a$b;->b:Lcom/google/common/collect/a;

    invoke-direct {p0}, Lcom/google/common/collect/q1;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/common/collect/a$b;->a:Ljava/util/Map$Entry;

    return-void
.end method


# virtual methods
.method protected bridge synthetic L()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/a$b;->M()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected M()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/a$b;->a:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/a$b;->b:Lcom/google/common/collect/a;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/a;->b0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/a$b;->b:Lcom/google/common/collect/a;

    invoke-virtual {v0}, Lcom/google/common/collect/a;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "entry no longer in map"

    invoke-static {v0, v1}, Lcom/google/common/base/a0;->h0(ZLjava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/q1;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/base/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/a$b;->b:Lcom/google/common/collect/a;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/a;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    const-string v3, "value already present: %s"

    invoke-static {v0, v3, p1}, Lcom/google/common/base/a0;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/google/common/collect/a$b;->a:Ljava/util/Map$Entry;

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    iget-object v3, p0, Lcom/google/common/collect/a$b;->b:Lcom/google/common/collect/a;

    invoke-virtual {p0}, Lcom/google/common/collect/q1;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/collect/p1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/google/common/base/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3, v1}, Lcom/google/common/base/a0;->h0(ZLjava/lang/Object;)V

    .line 7
    iget-object v1, p0, Lcom/google/common/collect/a$b;->b:Lcom/google/common/collect/a;

    invoke-virtual {p0}, Lcom/google/common/collect/q1;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3, v2, v0, p1}, Lcom/google/common/collect/a;->Y(Lcom/google/common/collect/a;Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

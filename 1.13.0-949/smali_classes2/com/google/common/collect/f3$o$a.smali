.class Lcom/google/common/collect/f3$o$a;
.super Lcom/google/common/collect/f3$s;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/f3$o;->a()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/f3$s<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/f3$o;


# direct methods
.method constructor <init>(Lcom/google/common/collect/f3$o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/f3$o$a;->a:Lcom/google/common/collect/f3$o;

    invoke-direct {p0}, Lcom/google/common/collect/f3$s;-><init>()V

    return-void
.end method


# virtual methods
.method e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/f3$o$a;->a:Lcom/google/common/collect/f3$o;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/f3$o$a;->a:Lcom/google/common/collect/f3$o;

    invoke-virtual {v0}, Lcom/google/common/collect/f3$o;->d()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/f3$o$a;->a:Lcom/google/common/collect/f3$o;

    iget-object v1, v1, Lcom/google/common/collect/f3$o;->e:Lcom/google/common/base/q;

    invoke-static {v0, v1}, Lcom/google/common/collect/f3;->m(Ljava/util/Set;Lcom/google/common/base/q;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

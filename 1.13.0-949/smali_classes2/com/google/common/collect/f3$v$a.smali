.class Lcom/google/common/collect/f3$v$a;
.super Lcom/google/common/collect/x1;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/f3$v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/x1<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/f3$v;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/f3$v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/f3$v$a;->a:Lcom/google/common/collect/f3$v;

    invoke-direct {p0}, Lcom/google/common/collect/x1;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/f3$v;Lcom/google/common/collect/f3$e;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/f3$v$a;-><init>(Lcom/google/common/collect/f3$v;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic L()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/f3$v$a;->Y()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic M()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/f3$v$a;->Y()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected Y()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/f3$v$a;->a:Lcom/google/common/collect/f3$v;

    iget-object v0, v0, Lcom/google/common/collect/f3$v;->f:Ljava/util/Set;

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

    new-instance v0, Lcom/google/common/collect/f3$v$a$a;

    iget-object v1, p0, Lcom/google/common/collect/f3$v$a;->a:Lcom/google/common/collect/f3$v;

    iget-object v1, v1, Lcom/google/common/collect/f3$v;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/f3$v$a$a;-><init>(Lcom/google/common/collect/f3$v$a;Ljava/util/Iterator;)V

    return-object v0
.end method

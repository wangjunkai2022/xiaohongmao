.class Lcom/google/common/collect/f3$q$a;
.super Lcom/google/common/collect/f3$s;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/f3$q;->W()Ljava/util/Set;
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
.field final synthetic a:Lcom/google/common/collect/f3$q;


# direct methods
.method constructor <init>(Lcom/google/common/collect/f3$q;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/f3$q$a;->a:Lcom/google/common/collect/f3$q;

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

    iget-object v0, p0, Lcom/google/common/collect/f3$q$a;->a:Lcom/google/common/collect/f3$q;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/f3$q$a;->a:Lcom/google/common/collect/f3$q;

    invoke-virtual {v0}, Lcom/google/common/collect/f3$q;->X()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

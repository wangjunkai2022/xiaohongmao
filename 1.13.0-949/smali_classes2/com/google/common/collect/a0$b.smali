.class Lcom/google/common/collect/a0$b;
.super Lcom/google/common/collect/a0$e;
.source "CompactHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/a0;->m()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/a0<",
        "TK;TV;>.e<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/google/common/collect/a0;


# direct methods
.method constructor <init>(Lcom/google/common/collect/a0;)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/a0$b;->e:Lcom/google/common/collect/a0;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/a0$e;-><init>(Lcom/google/common/collect/a0;Lcom/google/common/collect/a0$a;)V

    return-void
.end method


# virtual methods
.method bridge synthetic b(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/a0$b;->c(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method c(I)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/a0$g;

    iget-object v1, p0, Lcom/google/common/collect/a0$b;->e:Lcom/google/common/collect/a0;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/a0$g;-><init>(Lcom/google/common/collect/a0;I)V

    return-object v0
.end method

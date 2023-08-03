.class final Lcom/google/common/collect/e3$g;
.super Lcom/google/common/collect/e3$i;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/e3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/e3<",
        "TK;TV;TE;TS;>.i<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic i:Lcom/google/common/collect/e3;


# direct methods
.method constructor <init>(Lcom/google/common/collect/e3;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/e3$g;->i:Lcom/google/common/collect/e3;

    invoke-direct {p0, p1}, Lcom/google/common/collect/e3$i;-><init>(Lcom/google/common/collect/e3;)V

    return-void
.end method


# virtual methods
.method public f()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/e3$i;->c()Lcom/google/common/collect/e3$j0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/e3$g;->f()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

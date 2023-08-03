.class Lcom/google/common/collect/ImmutableMap$c$a;
.super Lcom/google/common/collect/m2;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableMap$c;->c()Lcom/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/m2<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/google/common/collect/ImmutableMap$c;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap$c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMap$c$a;->f:Lcom/google/common/collect/ImmutableMap$c;

    invoke-direct {p0}, Lcom/google/common/collect/m2;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Lcom/google/common/collect/k5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/k5<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$c$a;->f:Lcom/google/common/collect/ImmutableMap$c;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$c;->m()Lcom/google/common/collect/k5;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap$c$a;->iterator()Lcom/google/common/collect/k5;

    move-result-object v0

    return-object v0
.end method

.method q()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$c$a;->f:Lcom/google/common/collect/ImmutableMap$c;

    return-object v0
.end method

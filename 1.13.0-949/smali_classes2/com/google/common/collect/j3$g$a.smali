.class Lcom/google/common/collect/j3$g$a;
.super Lcom/google/common/collect/g5;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/j3$g;->d()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/g5<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;",
        "Lcom/google/common/collect/k3$a<",
        "TK;>;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/collect/j3$g;


# direct methods
.method constructor <init>(Lcom/google/common/collect/j3$g;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/j3$g$a;->b:Lcom/google/common/collect/j3$g;

    invoke-direct {p0, p2}, Lcom/google/common/collect/g5;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/j3$g$a;->b(Ljava/util/Map$Entry;)Lcom/google/common/collect/k3$a;

    move-result-object p1

    return-object p1
.end method

.method b(Ljava/util/Map$Entry;)Lcom/google/common/collect/k3$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)",
            "Lcom/google/common/collect/k3$a<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/j3$g$a$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/j3$g$a$a;-><init>(Lcom/google/common/collect/j3$g$a;Ljava/util/Map$Entry;)V

    return-object v0
.end method

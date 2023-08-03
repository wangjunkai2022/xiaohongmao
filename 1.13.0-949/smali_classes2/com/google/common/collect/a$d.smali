.class Lcom/google/common/collect/a$d;
.super Lcom/google/common/collect/a;
.source "AbstractBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/a<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final g:J
    .annotation build Lh3/c;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/common/collect/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/common/collect/a<",
            "TV;TK;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/a;-><init>(Ljava/util/Map;Lcom/google/common/collect/a;Lcom/google/common/collect/a$a;)V

    return-void
.end method

.method private k0(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation build Lh3/c;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/a;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/a;->i0(Lcom/google/common/collect/a;)V

    return-void
.end method

.method private m0(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lh3/c;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/a;->inverse()Lcom/google/common/collect/u;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic L()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/a;->M()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method a0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/a;->b:Lcom/google/common/collect/a;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/a;->b0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method b0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/a;->b:Lcom/google/common/collect/a;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/a;->a0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method l0()Ljava/lang/Object;
    .locals 1
    .annotation build Lh3/c;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/a;->inverse()Lcom/google/common/collect/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/u;->inverse()Lcom/google/common/collect/u;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/a;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.class Lcom/google/common/collect/l3$j$a;
.super Ljava/lang/Object;
.source "Multisets.java"

# interfaces
.implements Lcom/google/common/base/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/l3$j;->createEntrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/b0<",
        "Lcom/google/common/collect/k3$a<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/l3$j;


# direct methods
.method constructor <init>(Lcom/google/common/collect/l3$j;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/l3$j$a;->a:Lcom/google/common/collect/l3$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/k3$a;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/k3$a<",
            "TE;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/l3$j$a;->a:Lcom/google/common/collect/l3$j;

    iget-object v0, v0, Lcom/google/common/collect/l3$j;->d:Lcom/google/common/base/b0;

    invoke-interface {p1}, Lcom/google/common/collect/k3$a;->getElement()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/common/base/b0;->apply(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/google/common/collect/k3$a;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/l3$j$a;->a(Lcom/google/common/collect/k3$a;)Z

    move-result p1

    return p1
.end method

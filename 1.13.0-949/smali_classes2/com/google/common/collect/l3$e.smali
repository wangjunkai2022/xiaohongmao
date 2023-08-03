.class final Lcom/google/common/collect/l3$e;
.super Lcom/google/common/collect/g5;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/l3;->h(Ljava/util/Iterator;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/g5<",
        "Lcom/google/common/collect/k3$a<",
        "TE;>;TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/g5;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/common/collect/k3$a;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/l3$e;->b(Lcom/google/common/collect/k3$a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method b(Lcom/google/common/collect/k3$a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/k3$a<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/common/collect/k3$a;->getElement()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

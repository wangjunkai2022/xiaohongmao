.class public Lcom/google/common/collect/s1$a;
.super Lcom/google/common/collect/l3$h;
.source "ForwardingMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/l3$h<",
        "TE;>;"
    }
.end annotation

.annotation build Lh3/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/s1;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/s1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/s1$a;->a:Lcom/google/common/collect/s1;

    invoke-direct {p0}, Lcom/google/common/collect/l3$h;-><init>()V

    return-void
.end method


# virtual methods
.method e()Lcom/google/common/collect/k3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/k3<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/s1$a;->a:Lcom/google/common/collect/s1;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/s1$a;->e()Lcom/google/common/collect/k3;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/k3;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/l3;->h(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.class Lcom/google/common/collect/o4$l$a;
.super Lcom/google/common/collect/b;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/o4$l;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/b<",
        "Ljava/util/Set<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/google/common/collect/o4$l;


# direct methods
.method constructor <init>(Lcom/google/common/collect/o4$l;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/o4$l$a;->c:Lcom/google/common/collect/o4$l;

    invoke-direct {p0, p2}, Lcom/google/common/collect/b;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/o4$l$a;->b(I)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method protected b(I)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/o4$n;

    iget-object v1, p0, Lcom/google/common/collect/o4$l$a;->c:Lcom/google/common/collect/o4$l;

    iget-object v1, v1, Lcom/google/common/collect/o4$l;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/o4$n;-><init>(Lcom/google/common/collect/ImmutableMap;I)V

    return-object v0
.end method

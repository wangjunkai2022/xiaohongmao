.class Lcom/google/common/collect/w$a;
.super Lcom/google/common/collect/ImmutableList;
.source "CartesianList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/w;->d(I)Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic c:I

.field final synthetic d:Lcom/google/common/collect/w;


# direct methods
.method constructor <init>(Lcom/google/common/collect/w;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/w$a;->d:Lcom/google/common/collect/w;

    iput p2, p0, Lcom/google/common/collect/w$a;->c:I

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/w$a;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/a0;->C(II)I

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/w$a;->d:Lcom/google/common/collect/w;

    iget v1, p0, Lcom/google/common/collect/w$a;->c:I

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/w;->b(Lcom/google/common/collect/w;II)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/common/collect/w$a;->d:Lcom/google/common/collect/w;

    invoke-static {v1}, Lcom/google/common/collect/w;->a(Lcom/google/common/collect/w;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/w$a;->d:Lcom/google/common/collect/w;

    invoke-static {v0}, Lcom/google/common/collect/w;->a(Lcom/google/common/collect/w;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

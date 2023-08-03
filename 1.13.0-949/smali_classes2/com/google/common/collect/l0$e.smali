.class final Lcom/google/common/collect/l0$e;
.super Lcom/google/common/collect/l0$d;
.source "DenseImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/l0$d<",
        "TC;TV;>;"
    }
.end annotation


# instance fields
.field private final g:I

.field final synthetic h:Lcom/google/common/collect/l0;


# direct methods
.method constructor <init>(Lcom/google/common/collect/l0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/l0$e;->h:Lcom/google/common/collect/l0;

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/l0;->u(Lcom/google/common/collect/l0;)[I

    move-result-object p1

    aget p1, p1, p2

    invoke-direct {p0, p1}, Lcom/google/common/collect/l0$d;-><init>(I)V

    .line 3
    iput p2, p0, Lcom/google/common/collect/l0$e;->g:I

    return-void
.end method


# virtual methods
.method j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method o(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/l0$e;->h:Lcom/google/common/collect/l0;

    invoke-static {v0}, Lcom/google/common/collect/l0;->w(Lcom/google/common/collect/l0;)[[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/l0$e;->g:I

    aget-object v0, v0, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method q()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TC;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/l0$e;->h:Lcom/google/common/collect/l0;

    invoke-static {v0}, Lcom/google/common/collect/l0;->v(Lcom/google/common/collect/l0;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

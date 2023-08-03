.class final Lcom/google/common/collect/l0$c;
.super Lcom/google/common/collect/l0$d;
.source "DenseImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/l0$d<",
        "TC;",
        "Lcom/google/common/collect/ImmutableMap<",
        "TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic g:Lcom/google/common/collect/l0;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/l0;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/l0$c;->g:Lcom/google/common/collect/l0;

    .line 3
    invoke-static {p1}, Lcom/google/common/collect/l0;->x(Lcom/google/common/collect/l0;)[I

    move-result-object p1

    array-length p1, p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/l0$d;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/l0;Lcom/google/common/collect/l0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/l0$c;-><init>(Lcom/google/common/collect/l0;)V

    return-void
.end method


# virtual methods
.method j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method bridge synthetic o(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/l0$c;->s(I)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

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

    iget-object v0, p0, Lcom/google/common/collect/l0$c;->g:Lcom/google/common/collect/l0;

    invoke-static {v0}, Lcom/google/common/collect/l0;->v(Lcom/google/common/collect/l0;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method s(I)Lcom/google/common/collect/ImmutableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/ImmutableMap<",
            "TR;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/l0$b;

    iget-object v1, p0, Lcom/google/common/collect/l0$c;->g:Lcom/google/common/collect/l0;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/l0$b;-><init>(Lcom/google/common/collect/l0;I)V

    return-object v0
.end method

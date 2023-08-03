.class final Lcom/google/common/graph/c0$a;
.super Ljava/lang/Object;
.source "ImmutableNetwork.java"

# interfaces
.implements Lcom/google/common/base/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/c0;->b0(Lcom/google/common/graph/k0;)Lcom/google/common/base/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/q<",
        "TE;TN;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/graph/k0;


# direct methods
.method constructor <init>(Lcom/google/common/graph/k0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/graph/c0$a;->a:Lcom/google/common/graph/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TN;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/c0$a;->a:Lcom/google/common/graph/k0;

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->E(Ljava/lang/Object;)Lcom/google/common/graph/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/graph/r;->j()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

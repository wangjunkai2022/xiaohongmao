.class final Lcom/google/common/graph/c0$c;
.super Ljava/lang/Object;
.source "ImmutableNetwork.java"

# interfaces
.implements Lcom/google/common/base/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/c0;->U(Lcom/google/common/graph/k0;Ljava/lang/Object;)Lcom/google/common/base/q;
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

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/graph/k0;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/graph/c0$c;->a:Lcom/google/common/graph/k0;

    iput-object p2, p0, Lcom/google/common/graph/c0$c;->b:Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/google/common/graph/c0$c;->a:Lcom/google/common/graph/k0;

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->E(Ljava/lang/Object;)Lcom/google/common/graph/r;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/graph/c0$c;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/google/common/graph/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.class final Lcom/google/common/graph/d0$a;
.super Ljava/lang/Object;
.source "ImmutableValueGraph.java"

# interfaces
.implements Lcom/google/common/base/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/d0;->V(Lcom/google/common/graph/t0;Ljava/lang/Object;)Lcom/google/common/graph/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/q<",
        "TN;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/graph/t0;

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/graph/t0;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/graph/d0$a;->a:Lcom/google/common/graph/t0;

    iput-object p2, p0, Lcom/google/common/graph/d0$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/d0$a;->a:Lcom/google/common/graph/t0;

    iget-object v1, p0, Lcom/google/common/graph/d0$a;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/google/common/graph/t0;->y(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

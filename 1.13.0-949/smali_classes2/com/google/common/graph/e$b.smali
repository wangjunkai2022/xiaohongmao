.class Lcom/google/common/graph/e$b;
.super Ljava/lang/Object;
.source "AbstractNetwork.java"

# interfaces
.implements Lcom/google/common/base/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/e;->M(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/base/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/b0<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/google/common/graph/e;


# direct methods
.method constructor <init>(Lcom/google/common/graph/e;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/graph/e$b;->c:Lcom/google/common/graph/e;

    iput-object p2, p0, Lcom/google/common/graph/e$b;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/common/graph/e$b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/e$b;->c:Lcom/google/common/graph/e;

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->E(Ljava/lang/Object;)Lcom/google/common/graph/r;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/graph/e$b;->a:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/google/common/graph/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/graph/e$b;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

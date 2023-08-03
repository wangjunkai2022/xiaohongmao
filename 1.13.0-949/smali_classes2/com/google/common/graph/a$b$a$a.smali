.class Lcom/google/common/graph/a$b$a$a;
.super Ljava/lang/Object;
.source "AbstractBaseGraph.java"

# interfaces
.implements Lcom/google/common/base/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/a$b$a;->b()Lcom/google/common/collect/k5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/q<",
        "TN;",
        "Lcom/google/common/graph/r<",
        "TN;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/graph/a$b$a;


# direct methods
.method constructor <init>(Lcom/google/common/graph/a$b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/graph/a$b$a$a;->a:Lcom/google/common/graph/a$b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/google/common/graph/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/google/common/graph/r<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/a$b$a$a;->a:Lcom/google/common/graph/a$b$a;

    iget-object v0, v0, Lcom/google/common/graph/a$b;->a:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/google/common/graph/r;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/r;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/graph/a$b$a$a;->a(Ljava/lang/Object;)Lcom/google/common/graph/r;

    move-result-object p1

    return-object p1
.end method

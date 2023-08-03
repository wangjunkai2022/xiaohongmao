.class Lcom/google/common/graph/p0$b$b;
.super Ljava/lang/Object;
.source "Traverser.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/p0$b;->e(Ljava/lang/Iterable;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Iterable;

.field final synthetic b:Lcom/google/common/graph/p0$b;


# direct methods
.method constructor <init>(Lcom/google/common/graph/p0$b;Ljava/lang/Iterable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/graph/p0$b$b;->b:Lcom/google/common/graph/p0$b;

    iput-object p2, p0, Lcom/google/common/graph/p0$b$b;->a:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TN;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/graph/p0$b$e;

    iget-object v1, p0, Lcom/google/common/graph/p0$b$b;->b:Lcom/google/common/graph/p0$b;

    iget-object v2, p0, Lcom/google/common/graph/p0$b$b;->a:Ljava/lang/Iterable;

    sget-object v3, Lcom/google/common/graph/p0$c;->a:Lcom/google/common/graph/p0$c;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/graph/p0$b$e;-><init>(Lcom/google/common/graph/p0$b;Ljava/lang/Iterable;Lcom/google/common/graph/p0$c;)V

    return-object v0
.end method

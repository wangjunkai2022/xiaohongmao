.class final Lcom/google/common/graph/s$b;
.super Lcom/google/common/graph/s;
.source "EndpointPairIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/s<",
        "TN;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/common/graph/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/h<",
            "TN;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/common/graph/s;-><init>(Lcom/google/common/graph/h;Lcom/google/common/graph/s$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/graph/h;Lcom/google/common/graph/s$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/graph/s$b;-><init>(Lcom/google/common/graph/h;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/graph/s$b;->f()Lcom/google/common/graph/r;

    move-result-object v0

    return-object v0
.end method

.method protected f()Lcom/google/common/graph/r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/r<",
            "TN;>;"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/s;->f:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/common/graph/s;->e:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/graph/s;->f:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/graph/r;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/r;

    move-result-object v0

    return-object v0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/graph/s;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/r;

    return-object v0
.end method

.class final Lcom/google/common/collect/e3$w;
.super Lcom/google/common/collect/e3$o;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/e3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "w"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/e3$o<",
        "TK;TV;",
        "Lcom/google/common/collect/e3$v<",
        "TK;TV;>;",
        "Lcom/google/common/collect/e3$w<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final h:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/e3;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e3<",
            "TK;TV;",
            "Lcom/google/common/collect/e3$v<",
            "TK;TV;>;",
            "Lcom/google/common/collect/e3$w<",
            "TK;TV;>;>;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/e3$o;-><init>(Lcom/google/common/collect/e3;II)V

    .line 2
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/e3$w;->h:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method static synthetic Y(Lcom/google/common/collect/e3$w;)Ljava/lang/ref/ReferenceQueue;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/e3$w;->h:Ljava/lang/ref/ReferenceQueue;

    return-object p0
.end method


# virtual methods
.method public C(Lcom/google/common/collect/e3$j;Ljava/lang/Object;)Lcom/google/common/collect/e3$h0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e3$j<",
            "TK;TV;*>;TV;)",
            "Lcom/google/common/collect/e3$h0<",
            "TK;TV;",
            "Lcom/google/common/collect/e3$v<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/e3$i0;

    iget-object v1, p0, Lcom/google/common/collect/e3$w;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/e3$w;->Z(Lcom/google/common/collect/e3$j;)Lcom/google/common/collect/e3$v;

    move-result-object p1

    invoke-direct {v0, v1, p2, p1}, Lcom/google/common/collect/e3$i0;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/e3$j;)V

    return-object v0
.end method

.method bridge synthetic S()Lcom/google/common/collect/e3$o;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/e3$w;->a0()Lcom/google/common/collect/e3$w;

    move-result-object v0

    return-object v0
.end method

.method public W(Lcom/google/common/collect/e3$j;Lcom/google/common/collect/e3$h0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e3$j<",
            "TK;TV;*>;",
            "Lcom/google/common/collect/e3$h0<",
            "TK;TV;+",
            "Lcom/google/common/collect/e3$j<",
            "TK;TV;*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/e3$w;->Z(Lcom/google/common/collect/e3$j;)Lcom/google/common/collect/e3$v;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/e3$v;->e(Lcom/google/common/collect/e3$v;)Lcom/google/common/collect/e3$h0;

    move-result-object v0

    .line 3
    invoke-static {p1, p2}, Lcom/google/common/collect/e3$v;->f(Lcom/google/common/collect/e3$v;Lcom/google/common/collect/e3$h0;)Lcom/google/common/collect/e3$h0;

    .line 4
    invoke-interface {v0}, Lcom/google/common/collect/e3$h0;->clear()V

    return-void
.end method

.method public Z(Lcom/google/common/collect/e3$j;)Lcom/google/common/collect/e3$v;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e3$j<",
            "TK;TV;*>;)",
            "Lcom/google/common/collect/e3$v<",
            "TK;TV;>;"
        }
    .end annotation

    check-cast p1, Lcom/google/common/collect/e3$v;

    return-object p1
.end method

.method public bridge synthetic a(Lcom/google/common/collect/e3$j;)Lcom/google/common/collect/e3$j;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/e3$w;->Z(Lcom/google/common/collect/e3$j;)Lcom/google/common/collect/e3$v;

    move-result-object p1

    return-object p1
.end method

.method a0()Lcom/google/common/collect/e3$w;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e3$w<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method u()Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/e3$w;->h:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method public v(Lcom/google/common/collect/e3$j;)Lcom/google/common/collect/e3$h0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e3$j<",
            "TK;TV;*>;)",
            "Lcom/google/common/collect/e3$h0<",
            "TK;TV;",
            "Lcom/google/common/collect/e3$v<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/e3$w;->Z(Lcom/google/common/collect/e3$j;)Lcom/google/common/collect/e3$v;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/e3$v;->a()Lcom/google/common/collect/e3$h0;

    move-result-object p1

    return-object p1
.end method

.method y()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/e3$w;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/e3$o;->c(Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method z()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/e3$w;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/e3$o;->l(Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

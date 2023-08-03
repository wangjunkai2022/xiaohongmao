.class final Lcom/google/common/collect/e3$d0;
.super Lcom/google/common/collect/e3$o;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/e3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d0"
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
        "Lcom/google/common/collect/e3$c0<",
        "TK;TV;>;",
        "Lcom/google/common/collect/e3$d0<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final h:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;"
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
            "Lcom/google/common/collect/e3$c0<",
            "TK;TV;>;",
            "Lcom/google/common/collect/e3$d0<",
            "TK;TV;>;>;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/e3$o;-><init>(Lcom/google/common/collect/e3;II)V

    .line 2
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/e3$d0;->h:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method static synthetic Y(Lcom/google/common/collect/e3$d0;)Ljava/lang/ref/ReferenceQueue;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/e3$d0;->h:Ljava/lang/ref/ReferenceQueue;

    return-object p0
.end method


# virtual methods
.method bridge synthetic S()Lcom/google/common/collect/e3$o;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/e3$d0;->a0()Lcom/google/common/collect/e3$d0;

    move-result-object v0

    return-object v0
.end method

.method public Z(Lcom/google/common/collect/e3$j;)Lcom/google/common/collect/e3$c0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e3$j<",
            "TK;TV;*>;)",
            "Lcom/google/common/collect/e3$c0<",
            "TK;TV;>;"
        }
    .end annotation

    check-cast p1, Lcom/google/common/collect/e3$c0;

    return-object p1
.end method

.method public bridge synthetic a(Lcom/google/common/collect/e3$j;)Lcom/google/common/collect/e3$j;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/e3$d0;->Z(Lcom/google/common/collect/e3$j;)Lcom/google/common/collect/e3$c0;

    move-result-object p1

    return-object p1
.end method

.method a0()Lcom/google/common/collect/e3$d0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e3$d0<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method q()Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/e3$d0;->h:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method y()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/e3$d0;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/e3$o;->c(Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method z()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/e3$d0;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/e3$o;->k(Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

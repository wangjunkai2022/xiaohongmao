.class final Lcom/google/common/cache/j$g0;
.super Lcom/google/common/cache/j$e0;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "g0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/j$e0<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile d:J

.field e:Lcom/google/common/cache/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/n<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field f:Lcom/google/common/cache/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/n<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/cache/n;)V
    .locals 0
    .param p4    # Lcom/google/common/cache/n;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;TK;I",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/cache/j$e0;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/cache/n;)V

    const-wide p1, 0x7fffffffffffffffL

    .line 2
    iput-wide p1, p0, Lcom/google/common/cache/j$g0;->d:J

    .line 3
    invoke-static {}, Lcom/google/common/cache/j;->E()Lcom/google/common/cache/n;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/cache/j$g0;->e:Lcom/google/common/cache/n;

    .line 4
    invoke-static {}, Lcom/google/common/cache/j;->E()Lcom/google/common/cache/n;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/cache/j$g0;->f:Lcom/google/common/cache/n;

    return-void
.end method


# virtual methods
.method public e()Lcom/google/common/cache/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/j$g0;->e:Lcom/google/common/cache/n;

    return-object v0
.end method

.method public k()Lcom/google/common/cache/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/j$g0;->f:Lcom/google/common/cache/n;

    return-object v0
.end method

.method public m()J
    .locals 2

    iget-wide v0, p0, Lcom/google/common/cache/j$g0;->d:J

    return-wide v0
.end method

.method public p(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/common/cache/j$g0;->d:J

    return-void
.end method

.method public r(Lcom/google/common/cache/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/cache/j$g0;->e:Lcom/google/common/cache/n;

    return-void
.end method

.method public s(Lcom/google/common/cache/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/cache/j$g0;->f:Lcom/google/common/cache/n;

    return-void
.end method

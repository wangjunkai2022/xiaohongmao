.class Lcom/google/common/cache/j$e$a;
.super Lcom/google/common/cache/j$d;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/j$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/j$d<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field a:Lcom/google/common/cache/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/n<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field b:Lcom/google/common/cache/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/n<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/google/common/cache/j$e;


# direct methods
.method constructor <init>(Lcom/google/common/cache/j$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/cache/j$e$a;->c:Lcom/google/common/cache/j$e;

    invoke-direct {p0}, Lcom/google/common/cache/j$d;-><init>()V

    .line 2
    iput-object p0, p0, Lcom/google/common/cache/j$e$a;->a:Lcom/google/common/cache/n;

    .line 3
    iput-object p0, p0, Lcom/google/common/cache/j$e$a;->b:Lcom/google/common/cache/n;

    return-void
.end method


# virtual methods
.method public d()Lcom/google/common/cache/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/j$e$a;->b:Lcom/google/common/cache/n;

    return-object v0
.end method

.method public h()Lcom/google/common/cache/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/j$e$a;->a:Lcom/google/common/cache/n;

    return-object v0
.end method

.method public i(Lcom/google/common/cache/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/cache/j$e$a;->b:Lcom/google/common/cache/n;

    return-void
.end method

.method public n(J)V
    .locals 0

    return-void
.end method

.method public o()J
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public q(Lcom/google/common/cache/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/cache/j$e$a;->a:Lcom/google/common/cache/n;

    return-void
.end method

.class abstract Lcom/google/common/util/concurrent/k;
.super Lcom/google/common/util/concurrent/d$j;
.source "AggregateFuture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InputT:",
        "Ljava/lang/Object;",
        "OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/d$j<",
        "TOutputT;>;"
    }
.end annotation

.annotation build Lh3/b;
.end annotation


# static fields
.field private static final j:Ljava/util/logging/Logger;


# instance fields
.field private i:Lcom/google/common/util/concurrent/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/k<",
            "TInputT;TOutputT;>.a;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/common/util/concurrent/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/k;->j:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/d$j;-><init>()V

    return-void
.end method

.method static synthetic R(Ljava/util/Set;Ljava/lang/Throwable;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/k;->U(Ljava/util/Set;Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method static synthetic S()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/google/common/util/concurrent/k;->j:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic T(Lcom/google/common/util/concurrent/k;Lcom/google/common/util/concurrent/k$a;)Lcom/google/common/util/concurrent/k$a;
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/k;->i:Lcom/google/common/util/concurrent/k$a;

    return-object p1
.end method

.method private static U(Ljava/util/Set;Ljava/lang/Throwable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected J()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/k;->i:Lcom/google/common/util/concurrent/k$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/google/common/util/concurrent/k$a;->h(Lcom/google/common/util/concurrent/k$a;)Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "futures=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method final V(Lcom/google/common/util/concurrent/k$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/k<",
            "TInputT;TOutputT;>.a;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/k;->i:Lcom/google/common/util/concurrent/k$a;

    .line 2
    invoke-static {p1}, Lcom/google/common/util/concurrent/k$a;->i(Lcom/google/common/util/concurrent/k$a;)V

    return-void
.end method

.method protected final s()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/google/common/util/concurrent/d;->s()V

    .line 2
    iget-object v0, p0, Lcom/google/common/util/concurrent/k;->i:Lcom/google/common/util/concurrent/k$a;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/google/common/util/concurrent/k;->i:Lcom/google/common/util/concurrent/k$a;

    .line 4
    invoke-static {v0}, Lcom/google/common/util/concurrent/k$a;->h(Lcom/google/common/util/concurrent/k$a;)Lcom/google/common/collect/ImmutableCollection;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/d;->Q()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/k$a;->r()V

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/d$j;->isCancelled()Z

    move-result v0

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/k5;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/q0;

    .line 9
    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.class final Lcom/google/common/util/concurrent/j0$f;
.super Lcom/google/common/util/concurrent/d;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private i:Lcom/google/common/util/concurrent/j0$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/j0$g<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/j0$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/j0$g<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/common/util/concurrent/d;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/common/util/concurrent/j0$f;->i:Lcom/google/common/util/concurrent/j0$g;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/j0$g;Lcom/google/common/util/concurrent/j0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/j0$f;-><init>(Lcom/google/common/util/concurrent/j0$g;)V

    return-void
.end method


# virtual methods
.method protected J()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/j0$f;->i:Lcom/google/common/util/concurrent/j0$g;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inputCount=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {v0}, Lcom/google/common/util/concurrent/j0$g;->c(Lcom/google/common/util/concurrent/j0$g;)[Lcom/google/common/util/concurrent/q0;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], remaining=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {v0}, Lcom/google/common/util/concurrent/j0$g;->d(Lcom/google/common/util/concurrent/j0$g;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public cancel(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/j0$f;->i:Lcom/google/common/util/concurrent/j0$g;

    .line 2
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/d;->cancel(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/j0$g;->b(Lcom/google/common/util/concurrent/j0$g;Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected s()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/j0$f;->i:Lcom/google/common/util/concurrent/j0$g;

    return-void
.end method

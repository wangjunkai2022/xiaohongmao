.class Lcom/google/common/util/concurrent/h1$l;
.super Lcom/google/common/util/concurrent/h1$k;
.source "Striped.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/h1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/h1$l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/h1$k<",
        "T",
        "L;",
        ">;"
    }
.end annotation

.annotation build Lh3/d;
.end annotation


# instance fields
.field final f:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lcom/google/common/util/concurrent/h1$l$a<",
            "+T",
            "L;",
            ">;>;"
        }
    .end annotation
.end field

.field final g:Lcom/google/common/base/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/i0<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field final h:I

.field final i:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILcom/google/common/base/i0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/base/i0<",
            "T",
            "L;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/h1$k;-><init>(I)V

    .line 2
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/h1$l;->i:Ljava/lang/ref/ReferenceQueue;

    .line 3
    iget p1, p0, Lcom/google/common/util/concurrent/h1$k;->e:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    :goto_0
    iput p1, p0, Lcom/google/common/util/concurrent/h1$l;->h:I

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/h1$l;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 5
    iput-object p2, p0, Lcom/google/common/util/concurrent/h1$l;->g:Lcom/google/common/base/i0;

    return-void
.end method

.method private r()V
    .locals 4

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/h1$l;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lcom/google/common/util/concurrent/h1$l$a;

    .line 3
    iget-object v1, p0, Lcom/google/common/util/concurrent/h1$l;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v2, v0, Lcom/google/common/util/concurrent/h1$l$a;->a:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public g(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)T",
            "L;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/util/concurrent/h1$l;->h:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/h1$l;->p()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/a0;->C(II)I

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/h1$l;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/h1$l$a;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v2, v1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    return-object v2

    .line 5
    :cond_2
    iget-object v2, p0, Lcom/google/common/util/concurrent/h1$l;->g:Lcom/google/common/base/i0;

    invoke-interface {v2}, Lcom/google/common/base/i0;->get()Ljava/lang/Object;

    move-result-object v2

    .line 6
    new-instance v3, Lcom/google/common/util/concurrent/h1$l$a;

    iget-object v4, p0, Lcom/google/common/util/concurrent/h1$l;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v3, v2, p1, v4}, Lcom/google/common/util/concurrent/h1$l$a;-><init>(Ljava/lang/Object;ILjava/lang/ref/ReferenceQueue;)V

    .line 7
    :cond_3
    iget-object v4, p0, Lcom/google/common/util/concurrent/h1$l;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v4, p1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 8
    iget-object v0, p0, Lcom/google/common/util/concurrent/h1$l;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/h1$l$a;

    if-nez v0, :cond_4

    move-object v4, v1

    goto :goto_1

    .line 9
    :cond_4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_3

    return-object v4

    .line 10
    :cond_5
    invoke-direct {p0}, Lcom/google/common/util/concurrent/h1$l;->r()V

    return-object v2
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/google/common/util/concurrent/h1$l;->h:I

    return v0
.end method

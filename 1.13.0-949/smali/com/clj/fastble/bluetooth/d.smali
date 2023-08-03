.class public Lcom/clj/fastble/bluetooth/d;
.super Ljava/lang/Object;
.source "SplitWriter.java"


# instance fields
.field private a:Landroid/os/HandlerThread;

.field private b:Landroid/os/Handler;

.field private c:Lcom/clj/fastble/bluetooth/a;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:[B

.field private g:I

.field private h:Lg0/k;

.field private i:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "[B>;"
        }
    .end annotation
.end field

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "splitWriter"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/clj/fastble/bluetooth/d;->a:Landroid/os/HandlerThread;

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance v0, Lcom/clj/fastble/bluetooth/d$a;

    iget-object v1, p0, Lcom/clj/fastble/bluetooth/d;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/clj/fastble/bluetooth/d$a;-><init>(Lcom/clj/fastble/bluetooth/d;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/clj/fastble/bluetooth/d;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/clj/fastble/bluetooth/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/clj/fastble/bluetooth/d;->j()V

    return-void
.end method

.method static synthetic b(Lcom/clj/fastble/bluetooth/d;)I
    .locals 0

    iget p0, p0, Lcom/clj/fastble/bluetooth/d;->j:I

    return p0
.end method

.method static synthetic c(Lcom/clj/fastble/bluetooth/d;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/clj/fastble/bluetooth/d;->i:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic d(Lcom/clj/fastble/bluetooth/d;)Lg0/k;
    .locals 0

    iget-object p0, p0, Lcom/clj/fastble/bluetooth/d;->h:Lg0/k;

    return-object p0
.end method

.method static synthetic e(Lcom/clj/fastble/bluetooth/d;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/clj/fastble/bluetooth/d;->b:Landroid/os/Handler;

    return-object p0
.end method

.method private f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/d;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 2
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/d;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private static g([BI)Ljava/util/Queue;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/Queue<",
            "[B>;"
        }
    .end annotation

    const/16 v0, 0x14

    if-le p1, v0, :cond_0

    const-string v0, "Be careful: split count beyond 20! Ensure MTU higher than 23!"

    .line 1
    invoke-static {v0}, Lcom/clj/fastble/utils/a;->d(Ljava/lang/String;)V

    .line 2
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    if-eqz p0, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :cond_1
    array-length v3, p0

    sub-int/2addr v3, v2

    new-array v4, v3, [B

    .line 4
    array-length v5, p0

    sub-int/2addr v5, v2

    invoke-static {p0, v2, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-gt v3, p1, :cond_2

    .line 5
    new-array v5, v3, [B

    .line 6
    invoke-static {v4, v1, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    goto :goto_0

    .line 7
    :cond_2
    new-array v5, p1, [B

    .line 8
    invoke-static {p0, v2, v5, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, p1

    .line 9
    :goto_0
    invoke-interface {v0, v5}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 10
    array-length v3, p0

    if-lt v2, v3, :cond_1

    :cond_3
    return-object v0
.end method

.method private h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/d;->f:[B

    if-eqz v0, :cond_1

    .line 2
    iget v1, p0, Lcom/clj/fastble/bluetooth/d;->g:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 3
    invoke-static {v0, v1}, Lcom/clj/fastble/bluetooth/d;->g([BI)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lcom/clj/fastble/bluetooth/d;->i:Ljava/util/Queue;

    .line 4
    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iput v0, p0, Lcom/clj/fastble/bluetooth/d;->j:I

    .line 5
    invoke-direct {p0}, Lcom/clj/fastble/bluetooth/d;->j()V

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "split count should higher than 0!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data is Null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/d;->i:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/clj/fastble/bluetooth/d;->f()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/d;->i:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 4
    iget-object v1, p0, Lcom/clj/fastble/bluetooth/d;->c:Lcom/clj/fastble/bluetooth/a;

    invoke-virtual {v1}, Lcom/clj/fastble/bluetooth/a;->L()Lcom/clj/fastble/bluetooth/b;

    move-result-object v1

    iget-object v2, p0, Lcom/clj/fastble/bluetooth/d;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/clj/fastble/bluetooth/d;->e:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v2, v3}, Lcom/clj/fastble/bluetooth/b;->w(Ljava/lang/String;Ljava/lang/String;)Lcom/clj/fastble/bluetooth/b;

    move-result-object v1

    new-instance v2, Lcom/clj/fastble/bluetooth/d$b;

    invoke-direct {v2, p0}, Lcom/clj/fastble/bluetooth/d$b;-><init>(Lcom/clj/fastble/bluetooth/d;)V

    iget-object v3, p0, Lcom/clj/fastble/bluetooth/d;->e:Ljava/lang/String;

    .line 6
    invoke-virtual {v1, v0, v2, v3}, Lcom/clj/fastble/bluetooth/b;->x([BLg0/k;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public i(Lcom/clj/fastble/bluetooth/a;Ljava/lang/String;Ljava/lang/String;[BLg0/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/clj/fastble/bluetooth/d;->c:Lcom/clj/fastble/bluetooth/a;

    .line 2
    iput-object p2, p0, Lcom/clj/fastble/bluetooth/d;->d:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/clj/fastble/bluetooth/d;->e:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/clj/fastble/bluetooth/d;->f:[B

    .line 5
    invoke-static {}, Lcom/clj/fastble/a;->w()Lcom/clj/fastble/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/clj/fastble/a;->E()I

    move-result p1

    iput p1, p0, Lcom/clj/fastble/bluetooth/d;->g:I

    .line 6
    iput-object p5, p0, Lcom/clj/fastble/bluetooth/d;->h:Lg0/k;

    .line 7
    invoke-direct {p0}, Lcom/clj/fastble/bluetooth/d;->h()V

    return-void
.end method

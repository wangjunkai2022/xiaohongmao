.class public Lcom/google/android/exoplayer2/source/h0$a;
.super Ljava/lang/Object;
.source "MediaSourceEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/h0$a$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/exoplayer2/source/z$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/source/h0$a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/h0$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/z$a;J)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/z$a;J)V
    .locals 0
    .param p3    # Lcom/google/android/exoplayer2/source/z$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/source/h0$a$a;",
            ">;I",
            "Lcom/google/android/exoplayer2/source/z$a;",
            "J)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/h0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    iput p2, p0, Lcom/google/android/exoplayer2/source/h0$a;->a:I

    .line 5
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/h0$a;->b:Lcom/google/android/exoplayer2/source/z$a;

    .line 6
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/h0$a;->d:J

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/source/h0$a;Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/source/s;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/h0$a;->p(Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/source/s;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/source/h0$a;Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/h0$a;->n(Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;Ljava/io/IOException;Z)V

    return-void
.end method

.method public static synthetic c(Lcom/google/android/exoplayer2/source/h0$a;Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/h0$a;->m(Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V

    return-void
.end method

.method public static synthetic d(Lcom/google/android/exoplayer2/source/h0$a;Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/s;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/h0$a;->k(Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/s;)V

    return-void
.end method

.method public static synthetic e(Lcom/google/android/exoplayer2/source/h0$a;Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/h0$a;->o(Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V

    return-void
.end method

.method public static synthetic f(Lcom/google/android/exoplayer2/source/h0$a;Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/h0$a;->l(Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V

    return-void
.end method

.method private h(J)J
    .locals 3

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/i;->d(J)J

    move-result-wide p1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/h0$a;->d:J

    add-long/2addr v0, p1

    :goto_0
    return-wide v0
.end method

.method private synthetic k(Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/s;)V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/source/h0$a;->a:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/h0$a;->b:Lcom/google/android/exoplayer2/source/z$a;

    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/exoplayer2/source/h0;->H(ILcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/source/s;)V

    return-void
.end method

.method private synthetic l(Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/source/h0$a;->a:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/h0$a;->b:Lcom/google/android/exoplayer2/source/z$a;

    invoke-interface {p1, v0, v1, p2, p3}, Lcom/google/android/exoplayer2/source/h0;->I(ILcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V

    return-void
.end method

.method private synthetic m(Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/source/h0$a;->a:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/h0$a;->b:Lcom/google/android/exoplayer2/source/z$a;

    invoke-interface {p1, v0, v1, p2, p3}, Lcom/google/android/exoplayer2/source/h0;->j0(ILcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V

    return-void
.end method

.method private synthetic n(Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;Ljava/io/IOException;Z)V
    .locals 7

    iget v1, p0, Lcom/google/android/exoplayer2/source/h0$a;->a:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/h0$a;->b:Lcom/google/android/exoplayer2/source/z$a;

    move-object v0, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/h0;->n0(ILcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;Ljava/io/IOException;Z)V

    return-void
.end method

.method private synthetic o(Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/source/h0$a;->a:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/h0$a;->b:Lcom/google/android/exoplayer2/source/z$a;

    invoke-interface {p1, v0, v1, p2, p3}, Lcom/google/android/exoplayer2/source/h0;->J(ILcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V

    return-void
.end method

.method private synthetic p(Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/source/s;)V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/source/h0$a;->a:I

    invoke-interface {p1, v0, p2, p3}, Lcom/google/android/exoplayer2/source/h0;->W(ILcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/source/s;)V

    return-void
.end method


# virtual methods
.method public A(Lcom/google/android/exoplayer2/source/o;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V
    .locals 12
    .param p4    # Lcom/google/android/exoplayer2/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    new-instance v11, Lcom/google/android/exoplayer2/source/s;

    move-wide/from16 v1, p7

    .line 2
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/h0$a;->h(J)J

    move-result-wide v7

    move-wide/from16 v1, p9

    .line 3
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/h0$a;->h(J)J

    move-result-wide v9

    move-object v1, v11

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/s;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    move-object v1, p1

    .line 4
    invoke-virtual {p0, p1, v11}, Lcom/google/android/exoplayer2/source/h0$a;->B(Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V

    return-void
.end method

.method public B(Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/h0$a$a;

    .line 2
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/h0$a$a;->b:Lcom/google/android/exoplayer2/source/h0;

    .line 3
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/h0$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/source/c0;

    invoke-direct {v3, p0, v2, p1, p2}, Lcom/google/android/exoplayer2/source/c0;-><init>(Lcom/google/android/exoplayer2/source/h0$a;Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/z0;->Y0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public C(Lcom/google/android/exoplayer2/source/h0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/h0$a$a;

    .line 2
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/h0$a$a;->b:Lcom/google/android/exoplayer2/source/h0;

    if-ne v2, p1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/h0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public D(IJJ)V
    .locals 12

    move-object v0, p0

    .line 1
    new-instance v11, Lcom/google/android/exoplayer2/source/s;

    move-wide v1, p2

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/source/h0$a;->h(J)J

    move-result-wide v7

    move-wide/from16 v1, p4

    .line 3
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/h0$a;->h(J)J

    move-result-wide v9

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, v11

    move v3, p1

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/s;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 4
    invoke-virtual {p0, v11}, Lcom/google/android/exoplayer2/source/h0$a;->E(Lcom/google/android/exoplayer2/source/s;)V

    return-void
.end method

.method public E(Lcom/google/android/exoplayer2/source/s;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h0$a;->b:Lcom/google/android/exoplayer2/source/z$a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/z$a;

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/h0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/h0$a$a;

    .line 3
    iget-object v3, v2, Lcom/google/android/exoplayer2/source/h0$a$a;->b:Lcom/google/android/exoplayer2/source/h0;

    .line 4
    iget-object v2, v2, Lcom/google/android/exoplayer2/source/h0$a$a;->a:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/exoplayer2/source/g0;

    invoke-direct {v4, p0, v3, v0, p1}, Lcom/google/android/exoplayer2/source/g0;-><init>(Lcom/google/android/exoplayer2/source/h0$a;Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/source/s;)V

    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/util/z0;->Y0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public F(ILcom/google/android/exoplayer2/source/z$a;J)Lcom/google/android/exoplayer2/source/h0$a;
    .locals 7
    .param p2    # Lcom/google/android/exoplayer2/source/z$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    new-instance v6, Lcom/google/android/exoplayer2/source/h0$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/h0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v0, v6

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/h0$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/z$a;J)V

    return-object v6
.end method

.method public g(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/h0;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/google/android/exoplayer2/source/h0$a$a;

    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer2/source/h0$a$a;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/h0;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public i(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V
    .locals 12
    .param p2    # Lcom/google/android/exoplayer2/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    new-instance v11, Lcom/google/android/exoplayer2/source/s;

    move-wide/from16 v1, p5

    .line 2
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/h0$a;->h(J)J

    move-result-wide v7

    const/4 v2, 0x1

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, v11

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/s;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 3
    invoke-virtual {p0, v11}, Lcom/google/android/exoplayer2/source/h0$a;->j(Lcom/google/android/exoplayer2/source/s;)V

    return-void
.end method

.method public j(Lcom/google/android/exoplayer2/source/s;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/h0$a$a;

    .line 2
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/h0$a$a;->b:Lcom/google/android/exoplayer2/source/h0;

    .line 3
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/h0$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/source/f0;

    invoke-direct {v3, p0, v2, p1}, Lcom/google/android/exoplayer2/source/f0;-><init>(Lcom/google/android/exoplayer2/source/h0$a;Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/s;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/z0;->Y0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public q(Lcom/google/android/exoplayer2/source/o;I)V
    .locals 11

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/exoplayer2/source/h0$a;->r(Lcom/google/android/exoplayer2/source/o;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public r(Lcom/google/android/exoplayer2/source/o;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V
    .locals 12
    .param p4    # Lcom/google/android/exoplayer2/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    new-instance v11, Lcom/google/android/exoplayer2/source/s;

    move-wide/from16 v1, p7

    .line 2
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/h0$a;->h(J)J

    move-result-wide v7

    move-wide/from16 v1, p9

    .line 3
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/h0$a;->h(J)J

    move-result-wide v9

    move-object v1, v11

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/s;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    move-object v1, p1

    .line 4
    invoke-virtual {p0, p1, v11}, Lcom/google/android/exoplayer2/source/h0$a;->s(Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V

    return-void
.end method

.method public s(Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/h0$a$a;

    .line 2
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/h0$a$a;->b:Lcom/google/android/exoplayer2/source/h0;

    .line 3
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/h0$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/source/d0;

    invoke-direct {v3, p0, v2, p1, p2}, Lcom/google/android/exoplayer2/source/d0;-><init>(Lcom/google/android/exoplayer2/source/h0$a;Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/z0;->Y0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public t(Lcom/google/android/exoplayer2/source/o;I)V
    .locals 11

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/exoplayer2/source/h0$a;->u(Lcom/google/android/exoplayer2/source/o;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public u(Lcom/google/android/exoplayer2/source/o;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V
    .locals 12
    .param p4    # Lcom/google/android/exoplayer2/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    new-instance v11, Lcom/google/android/exoplayer2/source/s;

    move-wide/from16 v1, p7

    .line 2
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/h0$a;->h(J)J

    move-result-wide v7

    move-wide/from16 v1, p9

    .line 3
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/h0$a;->h(J)J

    move-result-wide v9

    move-object v1, v11

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/s;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    move-object v1, p1

    .line 4
    invoke-virtual {p0, p1, v11}, Lcom/google/android/exoplayer2/source/h0$a;->v(Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V

    return-void
.end method

.method public v(Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/h0$a$a;

    .line 2
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/h0$a$a;->b:Lcom/google/android/exoplayer2/source/h0;

    .line 3
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/h0$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/source/b0;

    invoke-direct {v3, p0, v2, p1, p2}, Lcom/google/android/exoplayer2/source/b0;-><init>(Lcom/google/android/exoplayer2/source/h0$a;Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/z0;->Y0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public w(Lcom/google/android/exoplayer2/source/o;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJLjava/io/IOException;Z)V
    .locals 12
    .param p4    # Lcom/google/android/exoplayer2/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    new-instance v11, Lcom/google/android/exoplayer2/source/s;

    move-wide/from16 v1, p7

    .line 2
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/h0$a;->h(J)J

    move-result-wide v7

    move-wide/from16 v1, p9

    .line 3
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/h0$a;->h(J)J

    move-result-wide v9

    move-object v1, v11

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/s;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    move-object v1, p1

    move-object/from16 v2, p11

    move/from16 v3, p12

    .line 4
    invoke-virtual {p0, p1, v11, v2, v3}, Lcom/google/android/exoplayer2/source/h0$a;->y(Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;Ljava/io/IOException;Z)V

    return-void
.end method

.method public x(Lcom/google/android/exoplayer2/source/o;ILjava/io/IOException;Z)V
    .locals 13

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v0 .. v12}, Lcom/google/android/exoplayer2/source/h0$a;->w(Lcom/google/android/exoplayer2/source/o;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    return-void
.end method

.method public y(Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;Ljava/io/IOException;Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/h0$a$a;

    .line 2
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/h0$a$a;->b:Lcom/google/android/exoplayer2/source/h0;

    .line 3
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/h0$a$a;->a:Landroid/os/Handler;

    new-instance v9, Lcom/google/android/exoplayer2/source/e0;

    move-object v2, v9

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/source/e0;-><init>(Lcom/google/android/exoplayer2/source/h0$a;Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;Ljava/io/IOException;Z)V

    invoke-static {v1, v9}, Lcom/google/android/exoplayer2/util/z0;->Y0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public z(Lcom/google/android/exoplayer2/source/o;I)V
    .locals 11

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/exoplayer2/source/h0$a;->A(Lcom/google/android/exoplayer2/source/o;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    return-void
.end method

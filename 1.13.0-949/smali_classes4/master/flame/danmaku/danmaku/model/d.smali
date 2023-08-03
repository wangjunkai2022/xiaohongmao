.class public abstract Lmaster/flame/danmaku/danmaku/model/d;
.super Ljava/lang/Object;
.source "BaseDanmaku.java"


# static fields
.field public static final M:Ljava/lang/String; = "/n"

.field public static final N:I = 0x1

.field public static final O:I = 0x6

.field public static final P:I = 0x5

.field public static final Q:I = 0x4

.field public static final R:I = 0x7

.field public static final S:I = 0x0

.field public static final T:I = 0x0

.field public static final U:I = 0x1

.field public static final V:I = 0x1

.field public static final W:I = 0x2


# instance fields
.field public A:Z

.field public B:I

.field public C:Ljava/lang/String;

.field public D:Z

.field protected E:Lmaster/flame/danmaku/danmaku/model/f;

.field protected F:I

.field public G:I

.field public H:I

.field public I:Lmaster/flame/danmaku/danmaku/model/j;

.field public J:I

.field public K:I

.field private L:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private a:J

.field public b:J

.field public c:Ljava/lang/CharSequence;

.field public d:[Ljava/lang/String;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public h:F

.field public i:F

.field public j:I

.field public k:I

.field public l:F

.field public m:I

.field public n:I

.field public o:B

.field public p:F

.field public q:F

.field public r:Lmaster/flame/danmaku/danmaku/model/g;

.field public s:I

.field public t:I

.field private u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:Lmaster/flame/danmaku/danmaku/model/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmaster/flame/danmaku/danmaku/model/o<",
            "*>;"
        }
    .end annotation
.end field

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->k:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 3
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/d;->l:F

    .line 4
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->m:I

    .line 5
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->n:I

    .line 6
    iput-byte v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->o:B

    .line 7
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    .line 8
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/d;->q:F

    .line 9
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->u:I

    .line 10
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->v:I

    .line 11
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->w:I

    const/4 v1, -0x1

    .line 12
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/d;->x:I

    .line 13
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->B:I

    .line 14
    sget v2, Lmaster/flame/danmaku/danmaku/model/c;->a:I

    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/d;->F:I

    .line 15
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->G:I

    .line 16
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/d;->H:I

    const/4 v2, 0x0

    .line 17
    iput-object v2, p0, Lmaster/flame/danmaku/danmaku/model/d;->I:Lmaster/flame/danmaku/danmaku/model/j;

    .line 18
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->J:I

    .line 19
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/d;->K:I

    .line 20
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->L:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public abstract A(Lmaster/flame/danmaku/danmaku/model/n;FF)V
.end method

.method public B(Lmaster/flame/danmaku/danmaku/model/n;Z)V
    .locals 0

    .line 1
    invoke-interface {p1, p0, p2}, Lmaster/flame/danmaku/danmaku/model/n;->j(Lmaster/flame/danmaku/danmaku/model/d;Z)V

    .line 2
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/d;->I:Lmaster/flame/danmaku/danmaku/model/j;

    iget p1, p1, Lmaster/flame/danmaku/danmaku/model/j;->a:I

    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/d;->v:I

    return-void
.end method

.method public C(Lmaster/flame/danmaku/danmaku/model/n;Z)V
    .locals 0

    .line 1
    invoke-interface {p1, p0, p2}, Lmaster/flame/danmaku/danmaku/model/n;->s(Lmaster/flame/danmaku/danmaku/model/d;Z)V

    .line 2
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/d;->I:Lmaster/flame/danmaku/danmaku/model/j;

    iget p1, p1, Lmaster/flame/danmaku/danmaku/model/j;->f:I

    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/d;->x:I

    return-void
.end method

.method public D(Lmaster/flame/danmaku/danmaku/model/g;)V
    .locals 0

    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/d;->r:Lmaster/flame/danmaku/danmaku/model/g;

    return-void
.end method

.method public E(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->L:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public F(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/d;->f:Ljava/lang/Object;

    return-void
.end method

.method public G(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lmaster/flame/danmaku/danmaku/model/d;->a:J

    const-wide/16 p1, 0x0

    .line 2
    iput-wide p1, p0, Lmaster/flame/danmaku/danmaku/model/d;->b:J

    return-void
.end method

.method public H(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lmaster/flame/danmaku/danmaku/model/d;->b:J

    .line 2
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/d;->I:Lmaster/flame/danmaku/danmaku/model/j;

    iget p1, p1, Lmaster/flame/danmaku/danmaku/model/j;->e:I

    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/d;->w:I

    return-void
.end method

.method public I(Lmaster/flame/danmaku/danmaku/model/f;)V
    .locals 0

    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/d;->E:Lmaster/flame/danmaku/danmaku/model/f;

    return-void
.end method

.method public J(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/d;->I:Lmaster/flame/danmaku/danmaku/model/j;

    iget p1, p1, Lmaster/flame/danmaku/danmaku/model/j;->b:I

    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/d;->u:I

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/d;->t:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/d;->t:I

    :goto_0
    return-void
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/n;)I
    .locals 0

    invoke-interface {p1, p0}, Lmaster/flame/danmaku/danmaku/model/n;->l(Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result p1

    return p1
.end method

.method public b()J
    .locals 4

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->I:Lmaster/flame/danmaku/danmaku/model/j;

    if-eqz v0, :cond_1

    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/j;->e:I

    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/d;->w:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->a:J

    iget-wide v2, p0, Lmaster/flame/danmaku/danmaku/model/d;->b:J

    add-long/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->b:J

    .line 4
    iget-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->a:J

    return-wide v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->F:I

    return v0
.end method

.method public abstract d()F
.end method

.method public e()Lmaster/flame/danmaku/danmaku/model/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmaster/flame/danmaku/danmaku/model/o<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->y:Lmaster/flame/danmaku/danmaku/model/o;

    return-object v0
.end method

.method public f()J
    .locals 2

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->r:Lmaster/flame/danmaku/danmaku/model/g;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/g;->c:J

    return-wide v0
.end method

.method public abstract g()F
.end method

.method public abstract h(Lmaster/flame/danmaku/danmaku/model/n;J)[F
.end method

.method public abstract i()F
.end method

.method public j(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->L:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public k()J
    .locals 2

    iget-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->a:J

    return-wide v0
.end method

.method public l()Lmaster/flame/danmaku/danmaku/model/f;
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->E:Lmaster/flame/danmaku/danmaku/model/f;

    return-object v0
.end method

.method public abstract m()F
.end method

.method public abstract n()I
.end method

.method public o()Z
    .locals 2

    .line 1
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->H:I

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/d;->I:Lmaster/flame/danmaku/danmaku/model/j;

    iget v1, v1, Lmaster/flame/danmaku/danmaku/model/j;->c:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->G:I

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public p()Z
    .locals 2

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->H:I

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/d;->I:Lmaster/flame/danmaku/danmaku/model/j;

    iget v1, v1, Lmaster/flame/danmaku/danmaku/model/j;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->G:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q(I)Z
    .locals 2

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->H:I

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/d;->I:Lmaster/flame/danmaku/danmaku/model/j;

    iget v1, v1, Lmaster/flame/danmaku/danmaku/model/j;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->G:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public r()Z
    .locals 5

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->E:Lmaster/flame/danmaku/danmaku/model/f;

    if-eqz v0, :cond_1

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/d;->b()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public s()Z
    .locals 2

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->q:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->v:I

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/d;->I:Lmaster/flame/danmaku/danmaku/model/j;

    iget v1, v1, Lmaster/flame/danmaku/danmaku/model/j;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public t()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->I:Lmaster/flame/danmaku/danmaku/model/j;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_2

    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/j;->e:I

    iget v4, p0, Lmaster/flame/danmaku/danmaku/model/d;->w:I

    if-eq v0, v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v4, p0, Lmaster/flame/danmaku/danmaku/model/d;->b:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 3
    :cond_2
    :goto_0
    iput-wide v2, p0, Lmaster/flame/danmaku/danmaku/model/d;->b:J

    return v1
.end method

.method public u()Z
    .locals 2

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->E:Lmaster/flame/danmaku/danmaku/model/f;

    if-eqz v0, :cond_1

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    invoke-virtual {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/d;->v(J)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public v(J)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/d;->b()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->r:Lmaster/flame/danmaku/danmaku/model/g;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/g;->c:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public w()Z
    .locals 2

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->x:I

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/d;->I:Lmaster/flame/danmaku/danmaku/model/j;

    iget v1, v1, Lmaster/flame/danmaku/danmaku/model/j;->f:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public x()Z
    .locals 3

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->t:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->u:I

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/d;->I:Lmaster/flame/danmaku/danmaku/model/j;

    iget v2, v2, Lmaster/flame/danmaku/danmaku/model/j;->b:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public y()Z
    .locals 2

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->E:Lmaster/flame/danmaku/danmaku/model/f;

    if-eqz v0, :cond_1

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    invoke-virtual {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/d;->z(J)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public z(J)Z
    .locals 3

    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/d;->b()J

    move-result-wide v0

    sub-long/2addr p1, v0

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->r:Lmaster/flame/danmaku/danmaku/model/g;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/g;->c:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

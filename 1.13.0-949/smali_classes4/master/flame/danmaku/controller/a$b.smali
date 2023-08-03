.class public Lmaster/flame/danmaku/controller/a$b;
.super Ljava/lang/Object;
.source "CacheManagingDrawTask.java"

# interfaces
.implements Lmaster/flame/danmaku/danmaku/model/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/controller/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/controller/a$b$f;
    }
.end annotation


# static fields
.field private static final k:Ljava/lang/String; = "CacheManager"

.field public static final l:B = 0x0t

.field public static final m:B = 0x1t

.field public static final n:B = 0x2t


# instance fields
.field public a:Landroid/os/HandlerThread;

.field b:Lmaster/flame/danmaku/danmaku/model/android/e;

.field c:Lmaster/flame/danmaku/danmaku/model/android/h;

.field d:Lmaster/flame/danmaku/danmaku/model/objectpool/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmaster/flame/danmaku/danmaku/model/objectpool/b<",
            "Lmaster/flame/danmaku/danmaku/model/android/f;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:I

.field private h:Lmaster/flame/danmaku/controller/a$b$f;

.field private i:Z

.field final synthetic j:Lmaster/flame/danmaku/controller/a;


# direct methods
.method public constructor <init>(Lmaster/flame/danmaku/controller/a;II)V
    .locals 1

    .line 1
    iput-object p1, p0, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-direct {p1}, Lmaster/flame/danmaku/danmaku/model/android/e;-><init>()V

    iput-object p1, p0, Lmaster/flame/danmaku/controller/a$b;->b:Lmaster/flame/danmaku/danmaku/model/android/e;

    .line 3
    new-instance p1, Lmaster/flame/danmaku/danmaku/model/android/h;

    invoke-direct {p1}, Lmaster/flame/danmaku/danmaku/model/android/h;-><init>()V

    iput-object p1, p0, Lmaster/flame/danmaku/controller/a$b;->c:Lmaster/flame/danmaku/danmaku/model/android/h;

    const/16 v0, 0x320

    .line 4
    invoke-static {p1, v0}, Lmaster/flame/danmaku/danmaku/model/objectpool/e;->a(Lmaster/flame/danmaku/danmaku/model/objectpool/d;I)Lmaster/flame/danmaku/danmaku/model/objectpool/b;

    move-result-object p1

    iput-object p1, p0, Lmaster/flame/danmaku/controller/a$b;->d:Lmaster/flame/danmaku/danmaku/model/objectpool/b;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lmaster/flame/danmaku/controller/a$b;->i:Z

    .line 6
    iput p1, p0, Lmaster/flame/danmaku/controller/a$b;->f:I

    .line 7
    iput p2, p0, Lmaster/flame/danmaku/controller/a$b;->e:I

    .line 8
    iput p3, p0, Lmaster/flame/danmaku/controller/a$b;->g:I

    return-void
.end method

.method private D(Lmaster/flame/danmaku/danmaku/model/d;IZ)Z
    .locals 0

    if-lez p2, :cond_0

    .line 1
    invoke-direct {p0, p2, p3}, Lmaster/flame/danmaku/controller/a$b;->q(IZ)V

    .line 2
    :cond_0
    iget-object p3, p0, Lmaster/flame/danmaku/controller/a$b;->b:Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-virtual {p3, p1}, Lmaster/flame/danmaku/danmaku/model/android/e;->i(Lmaster/flame/danmaku/danmaku/model/d;)Z

    .line 3
    iget p1, p0, Lmaster/flame/danmaku/controller/a$b;->f:I

    add-int/2addr p1, p2

    iput p1, p0, Lmaster/flame/danmaku/controller/a$b;->f:I

    const/4 p1, 0x1

    return p1
.end method

.method static synthetic a(Lmaster/flame/danmaku/controller/a$b;)I
    .locals 0

    iget p0, p0, Lmaster/flame/danmaku/controller/a$b;->g:I

    return p0
.end method

.method static synthetic c(Lmaster/flame/danmaku/controller/a$b;Lmaster/flame/danmaku/danmaku/model/d;ZI)Lmaster/flame/danmaku/danmaku/model/d;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmaster/flame/danmaku/controller/a$b;->w(Lmaster/flame/danmaku/danmaku/model/d;ZI)Lmaster/flame/danmaku/danmaku/model/d;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lmaster/flame/danmaku/controller/a$b;)I
    .locals 0

    iget p0, p0, Lmaster/flame/danmaku/controller/a$b;->f:I

    return p0
.end method

.method static synthetic e(Lmaster/flame/danmaku/controller/a$b;)I
    .locals 0

    iget p0, p0, Lmaster/flame/danmaku/controller/a$b;->e:I

    return p0
.end method

.method static synthetic f(Lmaster/flame/danmaku/controller/a$b;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmaster/flame/danmaku/controller/a$b;->q(IZ)V

    return-void
.end method

.method static synthetic g(Lmaster/flame/danmaku/controller/a$b;)Z
    .locals 0

    iget-boolean p0, p0, Lmaster/flame/danmaku/controller/a$b;->i:Z

    return p0
.end method

.method static synthetic h(Lmaster/flame/danmaku/controller/a$b;)V
    .locals 0

    invoke-direct {p0}, Lmaster/flame/danmaku/controller/a$b;->v()V

    return-void
.end method

.method static synthetic i(Lmaster/flame/danmaku/controller/a$b;Lmaster/flame/danmaku/danmaku/model/d;IZ)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmaster/flame/danmaku/controller/a$b;->D(Lmaster/flame/danmaku/danmaku/model/d;IZ)Z

    move-result p0

    return p0
.end method

.method static synthetic j(Lmaster/flame/danmaku/controller/a$b;Lmaster/flame/danmaku/danmaku/model/d;)J
    .locals 0

    invoke-direct {p0, p1}, Lmaster/flame/danmaku/controller/a$b;->o(Lmaster/flame/danmaku/danmaku/model/d;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic k(Lmaster/flame/danmaku/controller/a$b;)V
    .locals 0

    invoke-direct {p0}, Lmaster/flame/danmaku/controller/a$b;->r()V

    return-void
.end method

.method static synthetic l(Lmaster/flame/danmaku/controller/a$b;)V
    .locals 0

    invoke-direct {p0}, Lmaster/flame/danmaku/controller/a$b;->u()V

    return-void
.end method

.method static synthetic m(Lmaster/flame/danmaku/controller/a$b;)V
    .locals 0

    invoke-direct {p0}, Lmaster/flame/danmaku/controller/a$b;->p()V

    return-void
.end method

.method private o(Lmaster/flame/danmaku/danmaku/model/d;)J
    .locals 5

    .line 1
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->y:Lmaster/flame/danmaku/danmaku/model/o;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/o;->f()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 3
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/o;->e()V

    .line 4
    iput-object v4, p1, Lmaster/flame/danmaku/danmaku/model/d;->y:Lmaster/flame/danmaku/danmaku/model/o;

    return-wide v1

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/controller/a$b;->K(Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result v1

    int-to-long v1, v1

    .line 6
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/o;->destroy()V

    .line 7
    iput-object v4, p1, Lmaster/flame/danmaku/danmaku/model/d;->y:Lmaster/flame/danmaku/danmaku/model/o;

    return-wide v1
.end method

.method private p()V
    .locals 1

    .line 1
    :goto_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b;->d:Lmaster/flame/danmaku/danmaku/model/objectpool/b;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/objectpool/b;->acquire()Lmaster/flame/danmaku/danmaku/model/objectpool/c;

    move-result-object v0

    check-cast v0, Lmaster/flame/danmaku/danmaku/model/android/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/f;->destroy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private q(IZ)V
    .locals 2

    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b;->b:Lmaster/flame/danmaku/danmaku/model/android/e;

    new-instance v1, Lmaster/flame/danmaku/controller/a$b$e;

    invoke-direct {v1, p0, p1, p2}, Lmaster/flame/danmaku/controller/a$b$e;-><init>(Lmaster/flame/danmaku/controller/a$b;IZ)V

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/e;->h(Lmaster/flame/danmaku/danmaku/model/m$b;)V

    return-void
.end method

.method private r()V
    .locals 2

    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b;->b:Lmaster/flame/danmaku/danmaku/model/android/e;

    new-instance v1, Lmaster/flame/danmaku/controller/a$b$c;

    invoke-direct {v1, p0}, Lmaster/flame/danmaku/controller/a$b$c;-><init>(Lmaster/flame/danmaku/controller/a$b;)V

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/e;->h(Lmaster/flame/danmaku/danmaku/model/m$b;)V

    return-void
.end method

.method private u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b;->b:Lmaster/flame/danmaku/danmaku/model/android/e;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lmaster/flame/danmaku/controller/a$b$a;

    invoke-direct {v1, p0}, Lmaster/flame/danmaku/controller/a$b$a;-><init>(Lmaster/flame/danmaku/controller/a$b;)V

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/e;->h(Lmaster/flame/danmaku/danmaku/model/m$b;)V

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b;->b:Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/e;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lmaster/flame/danmaku/controller/a$b;->f:I

    return-void
.end method

.method private v()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b;->b:Lmaster/flame/danmaku/danmaku/model/android/e;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lmaster/flame/danmaku/controller/a$b$b;

    invoke-direct {v1, p0}, Lmaster/flame/danmaku/controller/a$b$b;-><init>(Lmaster/flame/danmaku/controller/a$b;)V

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/e;->h(Lmaster/flame/danmaku/danmaku/model/m$b;)V

    :cond_0
    return-void
.end method

.method private w(Lmaster/flame/danmaku/danmaku/model/d;ZI)Lmaster/flame/danmaku/danmaku/model/d;
    .locals 8

    if-nez p2, :cond_0

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/e;->d:Lmaster/flame/danmaku/danmaku/model/b;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/n;->b()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v1, v1, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v1, v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->B:Lmaster/flame/danmaku/danmaku/model/android/c;

    iget v1, v1, Lmaster/flame/danmaku/danmaku/model/android/c;->e:I

    add-int v7, v0, v1

    .line 3
    new-instance v0, Lmaster/flame/danmaku/controller/a$b$d;

    move-object v2, v0

    move-object v3, p0

    move v4, p3

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v2 .. v7}, Lmaster/flame/danmaku/controller/a$b$d;-><init>(Lmaster/flame/danmaku/controller/a$b;ILmaster/flame/danmaku/danmaku/model/d;ZI)V

    .line 4
    iget-object p1, p0, Lmaster/flame/danmaku/controller/a$b;->b:Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-virtual {p1, v0}, Lmaster/flame/danmaku/danmaku/model/android/e;->h(Lmaster/flame/danmaku/danmaku/model/m$b;)V

    .line 5
    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/m$b;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmaster/flame/danmaku/danmaku/model/d;

    return-object p1
.end method


# virtual methods
.method public A()Z
    .locals 2

    iget v0, p0, Lmaster/flame/danmaku/controller/a$b;->f:I

    add-int/lit16 v0, v0, 0x1400

    iget v1, p0, Lmaster/flame/danmaku/controller/a$b;->e:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public B(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b;->h:Lmaster/flame/danmaku/controller/a$b$f;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/a$b$f;->k(Z)V

    :cond_1
    return-void
.end method

.method public C(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b;->h:Lmaster/flame/danmaku/controller/a$b$f;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public E(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b;->h:Lmaster/flame/danmaku/controller/a$b$f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lmaster/flame/danmaku/controller/a$b$f;->p(J)V

    :cond_0
    return-void
.end method

.method public F()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b;->h:Lmaster/flame/danmaku/controller/a$b$f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b;->h:Lmaster/flame/danmaku/controller/a$b$f;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b;->h:Lmaster/flame/danmaku/controller/a$b$f;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/a$b$f;->q()V

    .line 5
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b;->h:Lmaster/flame/danmaku/controller/a$b$f;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b;->h:Lmaster/flame/danmaku/controller/a$b$f;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public G()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b;->h:Lmaster/flame/danmaku/controller/a$b$f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x4

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b;->h:Lmaster/flame/danmaku/controller/a$b$f;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public H()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b;->h:Lmaster/flame/danmaku/controller/a$b$f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x9

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b;->h:Lmaster/flame/danmaku/controller/a$b$f;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public I()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b;->h:Lmaster/flame/danmaku/controller/a$b$f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/a$b$f;->r()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/a$b;->n()V

    :goto_0
    return-void
.end method

.method public J(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b;->h:Lmaster/flame/danmaku/controller/a$b$f;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/a$b$f;->q()V

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b;->h:Lmaster/flame/danmaku/controller/a$b$f;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b;->h:Lmaster/flame/danmaku/controller/a$b$f;

    const/4 v1, 0x5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected K(Lmaster/flame/danmaku/danmaku/model/d;)I
    .locals 1

    .line 1
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->y:Lmaster/flame/danmaku/danmaku/model/o;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/o;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p1, Lmaster/flame/danmaku/danmaku/model/d;->y:Lmaster/flame/danmaku/danmaku/model/o;

    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/o;->size()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lmaster/flame/danmaku/danmaku/model/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b;->h:Lmaster/flame/danmaku/controller/a$b$f;

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v1, p1, Lmaster/flame/danmaku/danmaku/model/d;->z:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p1, Lmaster/flame/danmaku/danmaku/model/d;->A:Z

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->y()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b;->h:Lmaster/flame/danmaku/controller/a$b$f;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/a$b$f;->h(Lmaster/flame/danmaku/danmaku/model/d;)Z

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x2

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void
.end method

.method public n()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/a$b;->i:Z

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b;->a:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DFM Cache-Building Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/a$b;->a:Landroid/os/HandlerThread;

    .line 4
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 5
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b;->h:Lmaster/flame/danmaku/controller/a$b$f;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lmaster/flame/danmaku/controller/a$b$f;

    iget-object v1, p0, Lmaster/flame/danmaku/controller/a$b;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmaster/flame/danmaku/controller/a$b$f;-><init>(Lmaster/flame/danmaku/controller/a$b;Landroid/os/Looper;)V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/a$b;->h:Lmaster/flame/danmaku/controller/a$b$f;

    .line 7
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b;->h:Lmaster/flame/danmaku/controller/a$b$f;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/a$b$f;->f()V

    return-void
.end method

.method public s()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/a$b;->i:Z

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/a;->A(Lmaster/flame/danmaku/controller/a;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    invoke-static {v1}, Lmaster/flame/danmaku/controller/a;->A(Lmaster/flame/danmaku/controller/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b;->h:Lmaster/flame/danmaku/controller/a$b$f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b;->h:Lmaster/flame/danmaku/controller/a$b$f;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/a$b$f;->l()V

    .line 8
    iput-object v1, p0, Lmaster/flame/danmaku/controller/a$b;->h:Lmaster/flame/danmaku/controller/a$b$f;

    .line 9
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 10
    :try_start_1
    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 12
    :goto_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 13
    iput-object v1, p0, Lmaster/flame/danmaku/controller/a$b;->a:Landroid/os/HandlerThread;

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 14
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected t(ZLmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/d;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/d;->e()Lmaster/flame/danmaku/danmaku/model/o;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2
    invoke-direct {p0, p2}, Lmaster/flame/danmaku/controller/a$b;->o(Lmaster/flame/danmaku/danmaku/model/d;)J

    move-result-wide v0

    .line 3
    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/d;->y()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4
    iget-object p3, p0, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object p3, p3, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {p3}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->h()Lmaster/flame/danmaku/danmaku/model/b;

    move-result-object p3

    invoke-virtual {p3}, Lmaster/flame/danmaku/danmaku/model/b;->w()Lmaster/flame/danmaku/danmaku/model/android/b;

    move-result-object p3

    invoke-virtual {p3, p2}, Lmaster/flame/danmaku/danmaku/model/android/b;->g(Lmaster/flame/danmaku/danmaku/model/d;)V

    :cond_0
    const-wide/16 p2, 0x0

    cmp-long v2, v0, p2

    if-gtz v2, :cond_1

    return-void

    .line 5
    :cond_1
    iget p2, p0, Lmaster/flame/danmaku/controller/a$b;->f:I

    int-to-long p2, p2

    sub-long/2addr p2, v0

    long-to-int p3, p2

    iput p3, p0, Lmaster/flame/danmaku/controller/a$b;->f:I

    .line 6
    iget-object p2, p0, Lmaster/flame/danmaku/controller/a$b;->d:Lmaster/flame/danmaku/danmaku/model/objectpool/b;

    check-cast p1, Lmaster/flame/danmaku/danmaku/model/android/f;

    invoke-interface {p2, p1}, Lmaster/flame/danmaku/danmaku/model/objectpool/b;->a(Lmaster/flame/danmaku/danmaku/model/objectpool/c;)V

    :cond_2
    return-void
.end method

.method public x()J
    .locals 3

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b;->b:Lmaster/flame/danmaku/danmaku/model/android/e;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/e;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b;->b:Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/e;->first()Lmaster/flame/danmaku/danmaku/model/d;

    move-result-object v0

    if-nez v0, :cond_0

    return-wide v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/d;->b()J

    move-result-wide v0

    return-wide v0

    :cond_1
    return-wide v1
.end method

.method public y()F
    .locals 2

    .line 1
    iget v0, p0, Lmaster/flame/danmaku/controller/a$b;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v1, p0, Lmaster/flame/danmaku/controller/a$b;->f:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1
.end method

.method public z(Lmaster/flame/danmaku/danmaku/model/d;Z)V
    .locals 1

    .line 1
    iget-object p2, p0, Lmaster/flame/danmaku/controller/a$b;->h:Lmaster/flame/danmaku/controller/a$b$f;

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Lmaster/flame/danmaku/controller/a$b$f;->q()V

    .line 3
    iget-object p2, p0, Lmaster/flame/danmaku/controller/a$b;->h:Lmaster/flame/danmaku/controller/a$b$f;

    const/16 v0, 0x11

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 4
    iget-object p1, p0, Lmaster/flame/danmaku/controller/a$b;->h:Lmaster/flame/danmaku/controller/a$b$f;

    const/16 p2, 0x12

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-wide/16 p1, 0x0

    .line 5
    invoke-virtual {p0, p1, p2}, Lmaster/flame/danmaku/controller/a$b;->E(J)V

    :cond_0
    return-void
.end method

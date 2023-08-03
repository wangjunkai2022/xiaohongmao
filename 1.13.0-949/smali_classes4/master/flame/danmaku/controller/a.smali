.class public Lmaster/flame/danmaku/controller/a;
.super Lmaster/flame/danmaku/controller/e;
.source "CacheManagingDrawTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/controller/a$b;
    }
.end annotation


# static fields
.field private static final C:I = 0x3


# instance fields
.field private final A:Ljava/lang/Object;

.field private B:I

.field private x:I

.field private y:Lmaster/flame/danmaku/controller/a$b;

.field private z:Lmaster/flame/danmaku/danmaku/model/f;


# direct methods
.method public constructor <init>(Lmaster/flame/danmaku/danmaku/model/f;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/controller/h$a;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lmaster/flame/danmaku/controller/e;-><init>(Lmaster/flame/danmaku/danmaku/model/f;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/controller/h$a;)V

    const/4 p1, 0x2

    .line 2
    iput p1, p0, Lmaster/flame/danmaku/controller/a;->x:I

    .line 3
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmaster/flame/danmaku/controller/a;->A:Ljava/lang/Object;

    .line 4
    invoke-static {}, Ltv/cjump/jni/NativeBitmapFactory;->g()V

    .line 5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-float p1, v0

    iget-object p2, p2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->B:Lmaster/flame/danmaku/danmaku/model/android/c;

    iget p2, p2, Lmaster/flame/danmaku/danmaku/model/android/c;->b:F

    mul-float p1, p1, p2

    const/high16 p2, 0x4a800000    # 4194304.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lmaster/flame/danmaku/controller/a;->x:I

    .line 6
    new-instance p2, Lmaster/flame/danmaku/controller/a$b;

    const/4 p3, 0x3

    invoke-direct {p2, p0, p1, p3}, Lmaster/flame/danmaku/controller/a$b;-><init>(Lmaster/flame/danmaku/controller/a;II)V

    iput-object p2, p0, Lmaster/flame/danmaku/controller/a;->y:Lmaster/flame/danmaku/controller/a$b;

    .line 7
    iget-object p1, p0, Lmaster/flame/danmaku/controller/e;->h:Lf8/a;

    invoke-interface {p1, p2}, Lf8/a;->c(Lmaster/flame/danmaku/danmaku/model/k;)V

    return-void
.end method

.method static synthetic A(Lmaster/flame/danmaku/controller/a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmaster/flame/danmaku/controller/a;->A:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic B(Lmaster/flame/danmaku/controller/a;)I
    .locals 0

    iget p0, p0, Lmaster/flame/danmaku/controller/a;->x:I

    return p0
.end method

.method static synthetic C(Lmaster/flame/danmaku/controller/a;)Lmaster/flame/danmaku/controller/a$b;
    .locals 0

    iget-object p0, p0, Lmaster/flame/danmaku/controller/a;->y:Lmaster/flame/danmaku/controller/a$b;

    return-object p0
.end method

.method static synthetic D(Lmaster/flame/danmaku/controller/a;)Lmaster/flame/danmaku/danmaku/model/f;
    .locals 0

    iget-object p0, p0, Lmaster/flame/danmaku/controller/a;->z:Lmaster/flame/danmaku/danmaku/model/f;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/e;->f:Lmaster/flame/danmaku/danmaku/parser/a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/e;->w(Lmaster/flame/danmaku/danmaku/parser/a;)V

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a;->y:Lmaster/flame/danmaku/controller/a$b;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/a$b;->n()V

    return-void
.end method

.method public b(Lmaster/flame/danmaku/danmaku/model/d;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lmaster/flame/danmaku/controller/e;->b(Lmaster/flame/danmaku/danmaku/model/d;)V

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a;->y:Lmaster/flame/danmaku/controller/a$b;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/a$b;->b(Lmaster/flame/danmaku/danmaku/model/d;)V

    return-void
.end method

.method public c(Lmaster/flame/danmaku/danmaku/model/d;Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lmaster/flame/danmaku/controller/e;->c(Lmaster/flame/danmaku/danmaku/model/d;Z)V

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a;->y:Lmaster/flame/danmaku/controller/a$b;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1, p2}, Lmaster/flame/danmaku/controller/a$b;->z(Lmaster/flame/danmaku/danmaku/model/d;Z)V

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmaster/flame/danmaku/controller/e;->d(Z)V

    .line 2
    iget-object p1, p0, Lmaster/flame/danmaku/controller/a;->y:Lmaster/flame/danmaku/controller/a$b;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lmaster/flame/danmaku/controller/a$b;->F()V

    :cond_0
    return-void
.end method

.method public f(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lmaster/flame/danmaku/controller/e;->f(I)V

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a;->y:Lmaster/flame/danmaku/controller/a$b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/a$b;->B(I)V

    :cond_0
    return-void
.end method

.method public i(J)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lmaster/flame/danmaku/controller/e;->i(J)V

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a;->y:Lmaster/flame/danmaku/controller/a$b;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/a;->start()V

    .line 4
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a;->y:Lmaster/flame/danmaku/controller/a$b;

    invoke-virtual {v0, p1, p2}, Lmaster/flame/danmaku/controller/a$b;->J(J)V

    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    invoke-super {p0}, Lmaster/flame/danmaku/controller/e;->k()V

    .line 2
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/e;->reset()V

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/controller/e;->h:Lf8/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lf8/a;->c(Lmaster/flame/danmaku/danmaku/model/k;)V

    .line 4
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a;->y:Lmaster/flame/danmaku/controller/a$b;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/a$b;->s()V

    .line 6
    iput-object v1, p0, Lmaster/flame/danmaku/controller/a;->y:Lmaster/flame/danmaku/controller/a$b;

    .line 7
    :cond_0
    invoke-static {}, Ltv/cjump/jni/NativeBitmapFactory;->i()V

    return-void
.end method

.method public n(Lmaster/flame/danmaku/danmaku/model/b;)Lf8/a$c;
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lmaster/flame/danmaku/controller/e;->n(Lmaster/flame/danmaku/danmaku/model/b;)Lf8/a$c;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a;->A:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lmaster/flame/danmaku/controller/a;->A:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a;->y:Lmaster/flame/danmaku/controller/a$b;

    if-eqz v0, :cond_0

    .line 6
    iget v1, p1, Lf8/a$c;->k:I

    iget v2, p1, Lf8/a$c;->l:I

    sub-int/2addr v1, v2

    const/16 v2, -0x14

    if-ge v1, v2, :cond_0

    .line 7
    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/a$b;->G()V

    .line 8
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a;->y:Lmaster/flame/danmaku/controller/a$b;

    iget-object v1, p0, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v1, v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->A:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v1, v1, Lmaster/flame/danmaku/danmaku/model/android/d;->f:J

    neg-long v1, v1

    invoke-virtual {v0, v1, v2}, Lmaster/flame/danmaku/controller/a$b;->E(J)V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public q(JJJ)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p6}, Lmaster/flame/danmaku/controller/e;->q(JJJ)V

    .line 2
    iget-object p1, p0, Lmaster/flame/danmaku/controller/a;->y:Lmaster/flame/danmaku/controller/a$b;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, p3, p4}, Lmaster/flame/danmaku/controller/a$b;->J(J)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    invoke-super {p0}, Lmaster/flame/danmaku/controller/e;->start()V

    .line 2
    invoke-static {}, Ltv/cjump/jni/NativeBitmapFactory;->g()V

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a;->y:Lmaster/flame/danmaku/controller/a$b;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lmaster/flame/danmaku/controller/a$b;

    iget v1, p0, Lmaster/flame/danmaku/controller/a;->x:I

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Lmaster/flame/danmaku/controller/a$b;-><init>(Lmaster/flame/danmaku/controller/a;II)V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/a;->y:Lmaster/flame/danmaku/controller/a$b;

    .line 5
    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/a$b;->n()V

    .line 6
    iget-object v0, p0, Lmaster/flame/danmaku/controller/e;->h:Lf8/a;

    iget-object v1, p0, Lmaster/flame/danmaku/controller/a;->y:Lmaster/flame/danmaku/controller/a$b;

    invoke-interface {v0, v1}, Lf8/a;->c(Lmaster/flame/danmaku/danmaku/model/k;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/a$b;->I()V

    :goto_0
    return-void
.end method

.method protected v(Lmaster/flame/danmaku/danmaku/model/f;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lmaster/flame/danmaku/controller/e;->i:Lmaster/flame/danmaku/danmaku/model/f;

    .line 2
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/f;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/f;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/a;->z:Lmaster/flame/danmaku/danmaku/model/f;

    .line 3
    iget-wide v1, p1, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    invoke-virtual {v0, v1, v2}, Lmaster/flame/danmaku/danmaku/model/f;->c(J)J

    return-void
.end method

.method public varargs x(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lmaster/flame/danmaku/controller/e;->u(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    sget-object p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->SCROLL_SPEED_FACTOR:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lmaster/flame/danmaku/controller/e;->d:Lmaster/flame/danmaku/danmaku/model/b;

    iget-object p2, p0, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget p2, p2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->c:F

    invoke-interface {p1, p2}, Lmaster/flame/danmaku/danmaku/model/n;->a(F)V

    .line 4
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/e;->h()V

    goto/16 :goto_1

    .line 5
    :cond_1
    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->isVisibilityRelatedTag()Z

    move-result p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_4

    if-eqz p3, :cond_3

    .line 6
    array-length p1, p3

    if-lez p1, :cond_3

    const/4 p1, 0x0

    .line 7
    aget-object p2, p3, p1

    if-eqz p2, :cond_3

    aget-object p2, p3, p1

    instance-of p2, p2, Ljava/lang/Boolean;

    if-eqz p2, :cond_2

    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    :cond_2
    iget-object p1, p0, Lmaster/flame/danmaku/controller/a;->y:Lmaster/flame/danmaku/controller/a$b;

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p1, v0, v1}, Lmaster/flame/danmaku/controller/a$b;->E(J)V

    .line 10
    :cond_3
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/e;->h()V

    goto :goto_1

    .line 11
    :cond_4
    sget-object p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->TRANSPARENCY:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->SCALE_TEXTSIZE:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->DANMAKU_STYLE:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    .line 12
    :cond_5
    iget-object p1, p0, Lmaster/flame/danmaku/controller/a;->y:Lmaster/flame/danmaku/controller/a$b;

    if-eqz p1, :cond_8

    .line 13
    invoke-virtual {p1}, Lmaster/flame/danmaku/controller/a$b;->H()V

    .line 14
    iget-object p1, p0, Lmaster/flame/danmaku/controller/a;->y:Lmaster/flame/danmaku/controller/a$b;

    invoke-virtual {p1, v0, v1}, Lmaster/flame/danmaku/controller/a$b;->E(J)V

    goto :goto_1

    .line 15
    :cond_6
    :goto_0
    sget-object p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->SCALE_TEXTSIZE:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 16
    iget-object p1, p0, Lmaster/flame/danmaku/controller/e;->d:Lmaster/flame/danmaku/danmaku/model/b;

    iget-object p2, p0, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget p2, p2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->c:F

    invoke-interface {p1, p2}, Lmaster/flame/danmaku/danmaku/model/n;->a(F)V

    .line 17
    :cond_7
    iget-object p1, p0, Lmaster/flame/danmaku/controller/a;->y:Lmaster/flame/danmaku/controller/a$b;

    if-eqz p1, :cond_8

    .line 18
    invoke-virtual {p1}, Lmaster/flame/danmaku/controller/a$b;->F()V

    .line 19
    iget-object p1, p0, Lmaster/flame/danmaku/controller/a;->y:Lmaster/flame/danmaku/controller/a$b;

    iget-object p2, p0, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object p2, p2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->A:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide p2, p2, Lmaster/flame/danmaku/danmaku/model/android/d;->f:J

    neg-long p2, p2

    invoke-virtual {p1, p2, p3}, Lmaster/flame/danmaku/controller/a$b;->E(J)V

    .line 20
    :cond_8
    :goto_1
    iget-object p1, p0, Lmaster/flame/danmaku/controller/e;->g:Lmaster/flame/danmaku/controller/h$a;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lmaster/flame/danmaku/controller/a;->y:Lmaster/flame/danmaku/controller/a$b;

    if-eqz p1, :cond_9

    .line 21
    new-instance p2, Lmaster/flame/danmaku/controller/a$a;

    invoke-direct {p2, p0}, Lmaster/flame/danmaku/controller/a$a;-><init>(Lmaster/flame/danmaku/controller/a;)V

    invoke-virtual {p1, p2}, Lmaster/flame/danmaku/controller/a$b;->C(Ljava/lang/Runnable;)V

    :cond_9
    const/4 p1, 0x1

    return p1
.end method

.method protected y(Lmaster/flame/danmaku/danmaku/model/d;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lmaster/flame/danmaku/controller/e;->y(Lmaster/flame/danmaku/danmaku/model/d;)V

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a;->y:Lmaster/flame/danmaku/controller/a$b;

    if-eqz v0, :cond_0

    .line 3
    iget p1, p0, Lmaster/flame/danmaku/controller/a;->B:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lmaster/flame/danmaku/controller/a;->B:I

    const/4 v1, 0x5

    if-le p1, v1, :cond_2

    .line 4
    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/a$b;->G()V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lmaster/flame/danmaku/controller/a;->B:I

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->e()Lmaster/flame/danmaku/danmaku/model/o;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/o;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/o;->e()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/o;->destroy()V

    :goto_0
    const/4 v0, 0x0

    .line 10
    iput-object v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->y:Lmaster/flame/danmaku/danmaku/model/o;

    :cond_2
    :goto_1
    return-void
.end method

.class public abstract Lcom/facebook/drawee/controller/a;
.super Ljava/lang/Object;
.source "AbstractDraweeController.java"

# interfaces
.implements Lz0/a;
.implements Lcom/facebook/drawee/components/a$a;
.implements Lcom/facebook/drawee/gestures/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/drawee/controller/a$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "INFO:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz0/a;",
        "Lcom/facebook/drawee/components/a$a;",
        "Lcom/facebook/drawee/gestures/a$a;"
    }
.end annotation

.annotation build Ls7/c;
.end annotation


# static fields
.field private static final x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final z:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/facebook/drawee/components/DraweeEventTracker;

.field private final b:Lcom/facebook/drawee/components/a;

.field private final c:Ljava/util/concurrent/Executor;

.field private d:Lcom/facebook/drawee/components/c;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private e:Lcom/facebook/drawee/gestures/a;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private f:Lcom/facebook/drawee/controller/d;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field protected g:Lcom/facebook/drawee/controller/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/drawee/controller/c<",
            "TINFO;>;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field protected h:Li1/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/e<",
            "TINFO;>;"
        }
    .end annotation
.end field

.field protected i:Li1/f;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private j:Lz0/c;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private k:Landroid/graphics/drawable/Drawable;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/Object;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Ljava/lang/String;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private t:Lcom/facebook/datasource/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/datasource/d<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private u:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private v:Z

.field protected w:Landroid/graphics/drawable/Drawable;
    .annotation runtime Lr7/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "component_tag"

    const-string v1, "drawee"

    .line 1
    invoke-static {v0, v1}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/facebook/drawee/controller/a;->x:Ljava/util/Map;

    const-string v0, "origin"

    const-string v1, "memory_bitmap"

    const-string v2, "origin_sub"

    const-string v3, "shortcut"

    .line 2
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/facebook/drawee/controller/a;->y:Ljava/util/Map;

    .line 3
    const-class v0, Lcom/facebook/drawee/controller/a;

    sput-object v0, Lcom/facebook/drawee/controller/a;->z:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/drawee/components/a;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "deferredReleaser",
            "uiThreadImmediateExecutor",
            "id",
            "callerContext"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/facebook/drawee/components/DraweeEventTracker;->b()Lcom/facebook/drawee/components/DraweeEventTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/drawee/controller/a;->a:Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 3
    new-instance v0, Li1/e;

    invoke-direct {v0}, Li1/e;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/controller/a;->h:Li1/e;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/facebook/drawee/controller/a;->v:Z

    .line 5
    iput-object p1, p0, Lcom/facebook/drawee/controller/a;->b:Lcom/facebook/drawee/components/a;

    .line 6
    iput-object p2, p0, Lcom/facebook/drawee/controller/a;->c:Ljava/util/concurrent/Executor;

    .line 7
    invoke-direct {p0, p3, p4}, Lcom/facebook/drawee/controller/a;->F(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private declared-synchronized F(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "callerContext"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AbstractDraweeController#init"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->a:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_INIT_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 4
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/a;->v:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->b:Lcom/facebook/drawee/components/a;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p0}, Lcom/facebook/drawee/components/a;->a(Lcom/facebook/drawee/components/a$a;)V

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/facebook/drawee/controller/a;->n:Z

    .line 7
    iput-boolean v0, p0, Lcom/facebook/drawee/controller/a;->p:Z

    .line 8
    invoke-direct {p0}, Lcom/facebook/drawee/controller/a;->S()V

    .line 9
    iput-boolean v0, p0, Lcom/facebook/drawee/controller/a;->r:Z

    .line 10
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->d:Lcom/facebook/drawee/components/c;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Lcom/facebook/drawee/components/c;->a()V

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->e:Lcom/facebook/drawee/gestures/a;

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v0}, Lcom/facebook/drawee/gestures/a;->a()V

    .line 14
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->e:Lcom/facebook/drawee/gestures/a;

    invoke-virtual {v0, p0}, Lcom/facebook/drawee/gestures/a;->f(Lcom/facebook/drawee/gestures/a$a;)V

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->g:Lcom/facebook/drawee/controller/c;

    instance-of v1, v0, Lcom/facebook/drawee/controller/a$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 16
    check-cast v0, Lcom/facebook/drawee/controller/a$c;

    invoke-virtual {v0}, Lcom/facebook/drawee/controller/e;->h()V

    goto :goto_0

    .line 17
    :cond_4
    iput-object v2, p0, Lcom/facebook/drawee/controller/a;->g:Lcom/facebook/drawee/controller/c;

    .line 18
    :goto_0
    iput-object v2, p0, Lcom/facebook/drawee/controller/a;->f:Lcom/facebook/drawee/controller/d;

    .line 19
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->j:Lz0/c;

    if-eqz v0, :cond_5

    .line 20
    invoke-interface {v0}, Lz0/c;->reset()V

    .line 21
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->j:Lz0/c;

    invoke-interface {v0, v2}, Lz0/c;->f(Landroid/graphics/drawable/Drawable;)V

    .line 22
    iput-object v2, p0, Lcom/facebook/drawee/controller/a;->j:Lz0/c;

    .line 23
    :cond_5
    iput-object v2, p0, Lcom/facebook/drawee/controller/a;->k:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x2

    .line 24
    invoke-static {v0}, Lp0/a;->R(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25
    sget-object v0, Lcom/facebook/drawee/controller/a;->z:Ljava/lang/Class;

    const-string v1, "controller %x %s -> %s: initialize"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lp0/a;->X(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    :cond_6
    iput-object p1, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/facebook/drawee/controller/a;->m:Ljava/lang/Object;

    .line 28
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 29
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 30
    :cond_7
    iget-object p1, p0, Lcom/facebook/drawee/controller/a;->i:Li1/f;

    if-eqz p1, :cond_8

    .line 31
    invoke-direct {p0}, Lcom/facebook/drawee/controller/a;->h0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private H(Ljava/lang/String;Lcom/facebook/datasource/d;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "dataSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/datasource/d<",
            "TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 1
    iget-object v1, p0, Lcom/facebook/drawee/controller/a;->t:Lcom/facebook/datasource/d;

    if-nez v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/facebook/drawee/controller/a;->t:Lcom/facebook/datasource/d;

    if-ne p2, p1, :cond_1

    iget-boolean p1, p0, Lcom/facebook/drawee/controller/a;->o:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private I(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messageAndMethod",
            "throwable"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lp0/a;->R(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/facebook/drawee/controller/a;->z:Ljava/lang/Class;

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    const-string v2, "controller %x %s: %s: failure: %s"

    move-object v5, p1

    move-object v6, p2

    .line 4
    invoke-static/range {v1 .. v6}, Lp0/a;->Y(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private J(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messageAndMethod",
            "image"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lp0/a;->R(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lcom/facebook/drawee/controller/a;->z:Ljava/lang/Class;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    aput-object v4, v2, v3

    aput-object p1, v2, v0

    const/4 p1, 0x3

    .line 4
    invoke-virtual {p0, p2}, Lcom/facebook/drawee/controller/a;->z(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p1

    const/4 p1, 0x4

    .line 5
    invoke-virtual {p0, p2}, Lcom/facebook/drawee/controller/a;->A(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "controller %x %s: %s: image: %s %x"

    .line 6
    invoke-static {v1, p1, v2}, Lp0/a;->a0(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private K(Lcom/facebook/datasource/d;Ljava/lang/Object;Landroid/net/Uri;)Li1/c$a;
    .locals 0
    .param p1    # Lcom/facebook/datasource/d;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p3    # Landroid/net/Uri;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "datasource",
            "info",
            "mainUri"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/d<",
            "TT;>;TINFO;",
            "Landroid/net/Uri;",
            ")",
            "Li1/c$a;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p1}, Lcom/facebook/datasource/d;->getExtras()Ljava/util/Map;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p2}, Lcom/facebook/drawee/controller/a;->M(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/drawee/controller/a;->L(Ljava/util/Map;Ljava/util/Map;Landroid/net/Uri;)Li1/c$a;

    move-result-object p1

    return-object p1
.end method

.method private L(Ljava/util/Map;Ljava/util/Map;Landroid/net/Uri;)Li1/c$a;
    .locals 12
    .param p1    # Ljava/util/Map;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p3    # Landroid/net/Uri;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "datasourceExtras",
            "imageExtras",
            "mainUri"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/net/Uri;",
            ")",
            "Li1/c$a;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->j:Lz0/c;

    .line 2
    instance-of v1, v0, Lcom/facebook/drawee/generic/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/facebook/drawee/generic/a;

    invoke-virtual {v0}, Lcom/facebook/drawee/generic/a;->n()Lcom/facebook/drawee/drawable/s$c;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v0}, Lcom/facebook/drawee/generic/a;->m()Landroid/graphics/PointF;

    move-result-object v0

    move-object v8, v0

    move-object v7, v2

    goto :goto_0

    :cond_0
    move-object v7, v2

    move-object v8, v7

    .line 5
    :goto_0
    sget-object v3, Lcom/facebook/drawee/controller/a;->x:Ljava/util/Map;

    sget-object v4, Lcom/facebook/drawee/controller/a;->y:Ljava/util/Map;

    .line 6
    invoke-direct {p0}, Lcom/facebook/drawee/controller/a;->w()Landroid/graphics/Rect;

    move-result-object v6

    .line 7
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->r()Ljava/lang/Object;

    move-result-object v10

    move-object v5, p1

    move-object v9, p2

    move-object v11, p3

    .line 8
    invoke-static/range {v3 .. v11}, Lg1/a;->a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/graphics/Rect;Ljava/lang/String;Landroid/graphics/PointF;Ljava/util/Map;Ljava/lang/Object;Landroid/net/Uri;)Li1/c$a;

    move-result-object p1

    return-object p1
.end method

.method private N(Ljava/lang/String;Lcom/facebook/datasource/d;Ljava/lang/Throwable;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "dataSource",
            "throwable",
            "isFinished"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/datasource/d<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AbstractDraweeController#onFailureInternal"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/controller/a;->H(Ljava/lang/String;Lcom/facebook/datasource/d;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "ignore_old_datasource @ onFailure"

    .line 4
    invoke-direct {p0, p1, p3}, Lcom/facebook/drawee/controller/a;->I(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    invoke-interface {p2}, Lcom/facebook/datasource/d;->close()Z

    .line 6
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_1
    return-void

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/facebook/drawee/controller/a;->a:Lcom/facebook/drawee/components/DraweeEventTracker;

    if-eqz p4, :cond_3

    sget-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DATASOURCE_FAILURE:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DATASOURCE_FAILURE_INT:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    :goto_0
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    if-eqz p4, :cond_7

    const-string p1, "final_failed @ onFailure"

    .line 9
    invoke-direct {p0, p1, p3}, Lcom/facebook/drawee/controller/a;->I(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/facebook/drawee/controller/a;->t:Lcom/facebook/datasource/d;

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/facebook/drawee/controller/a;->q:Z

    .line 12
    iget-object p4, p0, Lcom/facebook/drawee/controller/a;->j:Lz0/c;

    if-eqz p4, :cond_6

    .line 13
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/a;->r:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    .line 14
    invoke-interface {p4, v0, v1, p1}, Lz0/c;->e(Landroid/graphics/drawable/Drawable;FZ)V

    goto :goto_1

    .line 15
    :cond_4
    invoke-direct {p0}, Lcom/facebook/drawee/controller/a;->j0()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 16
    invoke-interface {p4, p3}, Lz0/c;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 17
    :cond_5
    invoke-interface {p4, p3}, Lz0/c;->b(Ljava/lang/Throwable;)V

    .line 18
    :cond_6
    :goto_1
    invoke-direct {p0, p3, p2}, Lcom/facebook/drawee/controller/a;->W(Ljava/lang/Throwable;Lcom/facebook/datasource/d;)V

    goto :goto_2

    :cond_7
    const-string p1, "intermediate_failed @ onFailure"

    .line 19
    invoke-direct {p0, p1, p3}, Lcom/facebook/drawee/controller/a;->I(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    invoke-direct {p0, p3}, Lcom/facebook/drawee/controller/a;->X(Ljava/lang/Throwable;)V

    .line 21
    :goto_2
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 22
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_8
    return-void
.end method

.method private P(Ljava/lang/String;Lcom/facebook/datasource/d;Ljava/lang/Object;FZZZ)V
    .locals 5
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "dataSource",
            "image",
            "progress",
            "isFinished",
            "wasImmediate",
            "deliverTempResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/datasource/d<",
            "TT;>;TT;FZZZ)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AbstractDraweeController#onNewResultInternal"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/controller/a;->H(Ljava/lang/String;Lcom/facebook/datasource/d;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "ignore_old_datasource @ onNewResult"

    .line 4
    invoke-direct {p0, p1, p3}, Lcom/facebook/drawee/controller/a;->J(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0, p3}, Lcom/facebook/drawee/controller/a;->T(Ljava/lang/Object;)V

    .line 6
    invoke-interface {p2}, Lcom/facebook/datasource/d;->close()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_1
    return-void

    .line 9
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->a:Lcom/facebook/drawee/components/DraweeEventTracker;

    if-eqz p5, :cond_3

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DATASOURCE_RESULT:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DATASOURCE_RESULT_INT:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    :try_start_2
    invoke-virtual {p0, p3}, Lcom/facebook/drawee/controller/a;->p(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 11
    :try_start_3
    iget-object v1, p0, Lcom/facebook/drawee/controller/a;->u:Ljava/lang/Object;

    .line 12
    iget-object v2, p0, Lcom/facebook/drawee/controller/a;->w:Landroid/graphics/drawable/Drawable;

    .line 13
    iput-object p3, p0, Lcom/facebook/drawee/controller/a;->u:Ljava/lang/Object;

    .line 14
    iput-object v0, p0, Lcom/facebook/drawee/controller/a;->w:Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v3, "release_previous_result @ onNewResult"

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p5, :cond_4

    :try_start_4
    const-string p4, "set_final_result @ onNewResult"

    .line 15
    invoke-direct {p0, p4, p3}, Lcom/facebook/drawee/controller/a;->J(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p4, 0x0

    .line 16
    iput-object p4, p0, Lcom/facebook/drawee/controller/a;->t:Lcom/facebook/datasource/d;

    .line 17
    iget-object p4, p0, Lcom/facebook/drawee/controller/a;->j:Lz0/c;

    invoke-interface {p4, v0, v4, p6}, Lz0/c;->e(Landroid/graphics/drawable/Drawable;FZ)V

    .line 18
    invoke-direct {p0, p1, p3, p2}, Lcom/facebook/drawee/controller/a;->b0(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/datasource/d;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_4
    if-eqz p7, :cond_5

    const-string p4, "set_temporary_result @ onNewResult"

    .line 19
    invoke-direct {p0, p4, p3}, Lcom/facebook/drawee/controller/a;->J(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    iget-object p4, p0, Lcom/facebook/drawee/controller/a;->j:Lz0/c;

    invoke-interface {p4, v0, v4, p6}, Lz0/c;->e(Landroid/graphics/drawable/Drawable;FZ)V

    .line 21
    invoke-direct {p0, p1, p3, p2}, Lcom/facebook/drawee/controller/a;->b0(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/datasource/d;)V

    goto :goto_1

    :cond_5
    const-string p2, "set_intermediate_result @ onNewResult"

    .line 22
    invoke-direct {p0, p2, p3}, Lcom/facebook/drawee/controller/a;->J(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    iget-object p2, p0, Lcom/facebook/drawee/controller/a;->j:Lz0/c;

    invoke-interface {p2, v0, p4, p6}, Lz0/c;->e(Landroid/graphics/drawable/Drawable;FZ)V

    .line 24
    invoke-direct {p0, p1, p3}, Lcom/facebook/drawee/controller/a;->Y(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    if-eqz v2, :cond_6

    if-eq v2, v0, :cond_6

    .line 25
    :try_start_5
    invoke-virtual {p0, v2}, Lcom/facebook/drawee/controller/a;->R(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    if-eqz v1, :cond_7

    if-eq v1, p3, :cond_7

    .line 26
    invoke-direct {p0, v3, v1}, Lcom/facebook/drawee/controller/a;->J(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    invoke-virtual {p0, v1}, Lcom/facebook/drawee/controller/a;->T(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 28
    :cond_7
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 29
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_8
    return-void

    :goto_2
    if-eqz v2, :cond_9

    if-eq v2, v0, :cond_9

    .line 30
    :try_start_6
    invoke-virtual {p0, v2}, Lcom/facebook/drawee/controller/a;->R(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    if-eqz v1, :cond_a

    if-eq v1, p3, :cond_a

    .line 31
    invoke-direct {p0, v3, v1}, Lcom/facebook/drawee/controller/a;->J(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    invoke-virtual {p0, v1}, Lcom/facebook/drawee/controller/a;->T(Ljava/lang/Object;)V

    .line 33
    :cond_a
    throw p1

    :catch_0
    move-exception p4

    const-string p6, "drawable_failed @ onNewResult"

    .line 34
    invoke-direct {p0, p6, p3}, Lcom/facebook/drawee/controller/a;->J(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p0, p3}, Lcom/facebook/drawee/controller/a;->T(Ljava/lang/Object;)V

    .line 36
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/facebook/drawee/controller/a;->N(Ljava/lang/String;Lcom/facebook/datasource/d;Ljava/lang/Throwable;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 37
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 38
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_b
    return-void

    :catchall_1
    move-exception p1

    .line 39
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 40
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 41
    :cond_c
    throw p1
.end method

.method private Q(Ljava/lang/String;Lcom/facebook/datasource/d;FZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "dataSource",
            "progress",
            "isFinished"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/datasource/d<",
            "TT;>;FZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/controller/a;->H(Ljava/lang/String;Lcom/facebook/datasource/d;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const-string p3, "ignore_old_datasource @ onProgress"

    .line 2
    invoke-direct {p0, p3, p1}, Lcom/facebook/drawee/controller/a;->I(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    invoke-interface {p2}, Lcom/facebook/datasource/d;->close()Z

    return-void

    :cond_0
    if-nez p4, :cond_1

    .line 4
    iget-object p1, p0, Lcom/facebook/drawee/controller/a;->j:Lz0/c;

    const/4 p2, 0x0

    invoke-interface {p1, p3, p2}, Lz0/c;->c(FZ)V

    :cond_1
    return-void
.end method

.method private S()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/a;->o:Z

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lcom/facebook/drawee/controller/a;->o:Z

    .line 3
    iput-boolean v1, p0, Lcom/facebook/drawee/controller/a;->q:Z

    .line 4
    iget-object v1, p0, Lcom/facebook/drawee/controller/a;->t:Lcom/facebook/datasource/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1}, Lcom/facebook/datasource/d;->getExtras()Ljava/util/Map;

    move-result-object v1

    .line 6
    iget-object v3, p0, Lcom/facebook/drawee/controller/a;->t:Lcom/facebook/datasource/d;

    invoke-interface {v3}, Lcom/facebook/datasource/d;->close()Z

    .line 7
    iput-object v2, p0, Lcom/facebook/drawee/controller/a;->t:Lcom/facebook/datasource/d;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/facebook/drawee/controller/a;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {p0, v3}, Lcom/facebook/drawee/controller/a;->R(Landroid/graphics/drawable/Drawable;)V

    .line 10
    :cond_1
    iget-object v3, p0, Lcom/facebook/drawee/controller/a;->s:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 11
    iput-object v2, p0, Lcom/facebook/drawee/controller/a;->s:Ljava/lang/String;

    .line 12
    :cond_2
    iput-object v2, p0, Lcom/facebook/drawee/controller/a;->w:Landroid/graphics/drawable/Drawable;

    .line 13
    iget-object v3, p0, Lcom/facebook/drawee/controller/a;->u:Ljava/lang/Object;

    if-eqz v3, :cond_3

    .line 14
    invoke-virtual {p0, v3}, Lcom/facebook/drawee/controller/a;->B(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/facebook/drawee/controller/a;->M(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 15
    iget-object v4, p0, Lcom/facebook/drawee/controller/a;->u:Ljava/lang/Object;

    const-string v5, "release"

    invoke-direct {p0, v5, v4}, Lcom/facebook/drawee/controller/a;->J(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    iget-object v4, p0, Lcom/facebook/drawee/controller/a;->u:Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lcom/facebook/drawee/controller/a;->T(Ljava/lang/Object;)V

    .line 17
    iput-object v2, p0, Lcom/facebook/drawee/controller/a;->u:Ljava/lang/Object;

    move-object v2, v3

    :cond_3
    if-eqz v0, :cond_4

    .line 18
    invoke-direct {p0, v1, v2}, Lcom/facebook/drawee/controller/a;->Z(Ljava/util/Map;Ljava/util/Map;)V

    :cond_4
    return-void
.end method

.method private W(Ljava/lang/Throwable;Lcom/facebook/datasource/d;)V
    .locals 2
    .param p2    # Lcom/facebook/datasource/d;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "throwable",
            "dataSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lcom/facebook/datasource/d<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p2, v0, v0}, Lcom/facebook/drawee/controller/a;->K(Lcom/facebook/datasource/d;Ljava/lang/Object;Landroid/net/Uri;)Li1/c$a;

    move-result-object p2

    .line 2
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->s()Lcom/facebook/drawee/controller/c;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/facebook/drawee/controller/c;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->t()Li1/c;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Li1/c;->d(Ljava/lang/String;Ljava/lang/Throwable;Li1/c$a;)V

    return-void
.end method

.method private X(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->s()Lcom/facebook/drawee/controller/c;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/facebook/drawee/controller/c;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->t()Li1/c;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    invoke-interface {p1, v0}, Li1/c;->h(Ljava/lang/String;)V

    return-void
.end method

.method private Y(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "image"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/facebook/drawee/controller/a;->B(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 2
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->s()Lcom/facebook/drawee/controller/c;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/drawee/controller/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->t()Li1/c;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Li1/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private Z(Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .param p1    # Ljava/util/Map;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "datasourceExtras",
            "imageExtras"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->s()Lcom/facebook/drawee/controller/c;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/facebook/drawee/controller/c;->c(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->t()Li1/c;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/facebook/drawee/controller/a;->L(Ljava/util/Map;Ljava/util/Map;Landroid/net/Uri;)Li1/c$a;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Li1/c;->k(Ljava/lang/String;Li1/c$a;)V

    return-void
.end method

.method private b0(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/datasource/d;)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/datasource/d;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "image",
            "dataSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/facebook/datasource/d<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/facebook/drawee/controller/a;->B(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 2
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->s()Lcom/facebook/drawee/controller/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->g()Landroid/graphics/drawable/Animatable;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/facebook/drawee/controller/c;->d(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V

    .line 3
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->t()Li1/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p3, p2, v1}, Lcom/facebook/drawee/controller/a;->K(Lcom/facebook/datasource/d;Ljava/lang/Object;Landroid/net/Uri;)Li1/c$a;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Li1/c;->b(Ljava/lang/String;Ljava/lang/Object;Li1/c$a;)V

    return-void
.end method

.method private h0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->j:Lz0/c;

    instance-of v1, v0, Lcom/facebook/drawee/generic/a;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/facebook/drawee/generic/a;

    new-instance v1, Lcom/facebook/drawee/controller/a$a;

    invoke-direct {v1, p0}, Lcom/facebook/drawee/controller/a$a;-><init>(Lcom/facebook/drawee/controller/a;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/a;->H(Li1/i;)V

    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/facebook/drawee/controller/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    return-object p0
.end method

.method private j0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/drawee/controller/a;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->d:Lcom/facebook/drawee/components/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/drawee/components/c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic k(Lcom/facebook/drawee/controller/a;Ljava/lang/String;Lcom/facebook/datasource/d;Ljava/lang/Object;FZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/facebook/drawee/controller/a;->P(Ljava/lang/String;Lcom/facebook/datasource/d;Ljava/lang/Object;FZZZ)V

    return-void
.end method

.method static synthetic l(Lcom/facebook/drawee/controller/a;Ljava/lang/String;Lcom/facebook/datasource/d;Ljava/lang/Throwable;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/drawee/controller/a;->N(Ljava/lang/String;Lcom/facebook/datasource/d;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method static synthetic m(Lcom/facebook/drawee/controller/a;Ljava/lang/String;Lcom/facebook/datasource/d;FZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/drawee/controller/a;->Q(Ljava/lang/String;Lcom/facebook/datasource/d;FZ)V

    return-void
.end method

.method private w()Landroid/graphics/Rect;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->j:Lz0/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Lz0/b;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected A(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected abstract B(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TINFO;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end method

.method protected C()Li1/f;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->i:Li1/f;

    return-object v0
.end method

.method protected D()Landroid/net/Uri;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected E()Lcom/facebook/drawee/components/c;
    .locals 1
    .annotation build Lv1/u;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->d:Lcom/facebook/drawee/components/c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/facebook/drawee/components/c;

    invoke-direct {v0}, Lcom/facebook/drawee/components/c;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/controller/a;->d:Lcom/facebook/drawee/components/c;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->d:Lcom/facebook/drawee/components/c;

    return-object v0
.end method

.method protected G(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "callerContext"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/controller/a;->F(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/facebook/drawee/controller/a;->v:Z

    return-void
.end method

.method public abstract M(Ljava/lang/Object;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TINFO;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end method

.method protected O(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "cachedImage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    return-void
.end method

.method protected abstract R(Landroid/graphics/drawable/Drawable;)V
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation
.end method

.method protected abstract T(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public U(Lcom/facebook/drawee/controller/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controllerListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/controller/c<",
            "-TINFO;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->g:Lcom/facebook/drawee/controller/c;

    instance-of v1, v0, Lcom/facebook/drawee/controller/a$c;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/facebook/drawee/controller/a$c;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/controller/e;->m(Lcom/facebook/drawee/controller/c;)V

    return-void

    :cond_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/facebook/drawee/controller/a;->g:Lcom/facebook/drawee/controller/c;

    :cond_1
    return-void
.end method

.method public V(Li1/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controllerListener2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li1/c<",
            "TINFO;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->h:Li1/e;

    invoke-virtual {v0, p1}, Li1/e;->A(Li1/c;)V

    return-void
.end method

.method public a()Z
    .locals 4

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lp0/a;->R(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/facebook/drawee/controller/a;->z:Ljava/lang/Class;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    const-string v3, "controller %x %s: onClick"

    invoke-static {v0, v3, v1, v2}, Lp0/a;->W(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/facebook/drawee/controller/a;->j0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->d:Lcom/facebook/drawee/components/c;

    invoke-virtual {v0}, Lcom/facebook/drawee/components/c;->d()V

    .line 5
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->j:Lz0/c;

    invoke-interface {v0}, Lz0/c;->reset()V

    .line 6
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->k0()V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected a0(Lcom/facebook/datasource/d;Ljava/lang/Object;)V
    .locals 4
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dataSource",
            "info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/d<",
            "TT;>;TINFO;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->s()Lcom/facebook/drawee/controller/c;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/drawee/controller/a;->m:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/facebook/drawee/controller/c;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->t()Li1/c;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/drawee/controller/a;->m:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->D()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, p1, p2, v3}, Lcom/facebook/drawee/controller/a;->K(Lcom/facebook/datasource/d;Ljava/lang/Object;Landroid/net/Uri;)Li1/c$a;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Li1/c;->i(Ljava/lang/String;Ljava/lang/Object;Li1/c$a;)V

    return-void
.end method

.method public c()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AbstractDraweeController#onAttach"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    .line 3
    invoke-static {v0}, Lp0/a;->R(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    sget-object v0, Lcom/facebook/drawee/controller/a;->z:Ljava/lang/Class;

    .line 5
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/facebook/drawee/controller/a;->o:Z

    if-eqz v3, :cond_1

    const-string v3, "request already submitted"

    goto :goto_0

    :cond_1
    const-string v3, "request needs submit"

    :goto_0
    const-string v4, "controller %x %s: onAttach: %s"

    .line 6
    invoke-static {v0, v4, v1, v2, v3}, Lp0/a;->X(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->a:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_ATTACH_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 8
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->j:Lz0/c;

    invoke-static {v0}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->b:Lcom/facebook/drawee/components/a;

    invoke-virtual {v0, p0}, Lcom/facebook/drawee/components/a;->a(Lcom/facebook/drawee/components/a$a;)V

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/facebook/drawee/controller/a;->n:Z

    .line 11
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/a;->o:Z

    if-nez v0, :cond_3

    .line 12
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->k0()V

    .line 13
    :cond_3
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_4
    return-void
.end method

.method protected c0(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controllerOverlay"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/controller/a;->k:Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->j:Lz0/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lz0/c;->f(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentDescription"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/drawee/controller/a;->s:Ljava/lang/String;

    return-void
.end method

.method public d0(Lcom/facebook/drawee/controller/d;)V
    .locals 0
    .param p1    # Lcom/facebook/drawee/controller/d;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controllerViewportVisibilityListener"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/drawee/controller/a;->f:Lcom/facebook/drawee/controller/d;

    return-void
.end method

.method public e()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AbstractDraweeController#onDetach"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    .line 3
    invoke-static {v0}, Lp0/a;->R(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcom/facebook/drawee/controller/a;->z:Ljava/lang/Class;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    const-string v3, "controller %x %s: onDetach"

    invoke-static {v0, v3, v1, v2}, Lp0/a;->W(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->a:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DETACH_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/facebook/drawee/controller/a;->n:Z

    .line 7
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->b:Lcom/facebook/drawee/components/a;

    invoke-virtual {v0, p0}, Lcom/facebook/drawee/components/a;->d(Lcom/facebook/drawee/components/a$a;)V

    .line 8
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_2
    return-void
.end method

.method protected e0(Lcom/facebook/drawee/gestures/a;)V
    .locals 0
    .param p1    # Lcom/facebook/drawee/gestures/a;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gestureDetector"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/controller/a;->e:Lcom/facebook/drawee/gestures/a;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Lcom/facebook/drawee/gestures/a;->f(Lcom/facebook/drawee/gestures/a$a;)V

    :cond_0
    return-void
.end method

.method public f()Lz0/b;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->j:Lz0/c;

    return-object v0
.end method

.method public f0(Li1/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "loggingListener"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/drawee/controller/a;->i:Li1/f;

    return-void
.end method

.method public g()Landroid/graphics/drawable/Animatable;
    .locals 2
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->w:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected g0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/facebook/drawee/controller/a;->r:Z

    return-void
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->s:Ljava/lang/String;

    return-object v0
.end method

.method public h(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVisibleInViewportHint"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->f:Lcom/facebook/drawee/controller/d;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget-boolean v1, p0, Lcom/facebook/drawee/controller/a;->p:Z

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/facebook/drawee/controller/d;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 4
    iget-boolean v1, p0, Lcom/facebook/drawee/controller/a;->p:Z

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/facebook/drawee/controller/d;->a(Ljava/lang/String;)V

    .line 6
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/facebook/drawee/controller/a;->p:Z

    return-void
.end method

.method public i(Lz0/b;)V
    .locals 4
    .param p1    # Lz0/b;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hierarchy"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lp0/a;->R(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/facebook/drawee/controller/a;->z:Ljava/lang/Class;

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    const-string v3, "controller %x %s: setHierarchy: %s"

    .line 4
    invoke-static {v0, v3, v1, v2, p1}, Lp0/a;->X(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->a:Lcom/facebook/drawee/components/DraweeEventTracker;

    if-eqz p1, :cond_1

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_SET_HIERARCHY:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_CLEAR_HIERARCHY:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 6
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/a;->o:Z

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->b:Lcom/facebook/drawee/components/a;

    invoke-virtual {v0, p0}, Lcom/facebook/drawee/components/a;->a(Lcom/facebook/drawee/components/a$a;)V

    .line 8
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->release()V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->j:Lz0/c;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 10
    invoke-interface {v0, v1}, Lz0/c;->f(Landroid/graphics/drawable/Drawable;)V

    .line 11
    iput-object v1, p0, Lcom/facebook/drawee/controller/a;->j:Lz0/c;

    :cond_3
    if-eqz p1, :cond_4

    .line 12
    instance-of v0, p1, Lz0/c;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/j;->d(Ljava/lang/Boolean;)V

    .line 13
    check-cast p1, Lz0/c;

    iput-object p1, p0, Lcom/facebook/drawee/controller/a;->j:Lz0/c;

    .line 14
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->k:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v0}, Lz0/c;->f(Landroid/graphics/drawable/Drawable;)V

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/facebook/drawee/controller/a;->i:Li1/f;

    if-eqz p1, :cond_5

    .line 16
    invoke-direct {p0}, Lcom/facebook/drawee/controller/a;->h0()V

    :cond_5
    return-void
.end method

.method protected i0()Z
    .locals 1

    invoke-direct {p0}, Lcom/facebook/drawee/controller/a;->j0()Z

    move-result v0

    return v0
.end method

.method protected k0()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AbstractDraweeController#submitRequest"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->q()Ljava/lang/Object;

    move-result-object v4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v4, :cond_4

    .line 4
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "AbstractDraweeController#submitRequest->cache"

    .line 5
    invoke-static {v3}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 6
    :cond_1
    iput-object v0, p0, Lcom/facebook/drawee/controller/a;->t:Lcom/facebook/datasource/d;

    .line 7
    iput-boolean v2, p0, Lcom/facebook/drawee/controller/a;->o:Z

    .line 8
    iput-boolean v1, p0, Lcom/facebook/drawee/controller/a;->q:Z

    .line 9
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->a:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_SUBMIT_CACHE_HIT:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 10
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->t:Lcom/facebook/datasource/d;

    invoke-virtual {p0, v4}, Lcom/facebook/drawee/controller/a;->B(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/drawee/controller/a;->a0(Lcom/facebook/datasource/d;Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/drawee/controller/a;->O(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    iget-object v2, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/drawee/controller/a;->t:Lcom/facebook/datasource/d;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/facebook/drawee/controller/a;->P(Ljava/lang/String;Lcom/facebook/datasource/d;Ljava/lang/Object;FZZZ)V

    .line 13
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 15
    :cond_2
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_3
    return-void

    .line 17
    :cond_4
    iget-object v3, p0, Lcom/facebook/drawee/controller/a;->a:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v4, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DATASOURCE_SUBMIT:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v3, v4}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 18
    iget-object v3, p0, Lcom/facebook/drawee/controller/a;->j:Lz0/c;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v2}, Lz0/c;->c(FZ)V

    .line 19
    iput-boolean v2, p0, Lcom/facebook/drawee/controller/a;->o:Z

    .line 20
    iput-boolean v1, p0, Lcom/facebook/drawee/controller/a;->q:Z

    .line 21
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->v()Lcom/facebook/datasource/d;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/drawee/controller/a;->t:Lcom/facebook/datasource/d;

    .line 22
    invoke-virtual {p0, v1, v0}, Lcom/facebook/drawee/controller/a;->a0(Lcom/facebook/datasource/d;Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 23
    invoke-static {v0}, Lp0/a;->R(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 24
    sget-object v0, Lcom/facebook/drawee/controller/a;->z:Ljava/lang/Class;

    .line 25
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/drawee/controller/a;->t:Lcom/facebook/datasource/d;

    .line 26
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "controller %x %s: submitRequest: dataSource: %x"

    .line 27
    invoke-static {v0, v4, v1, v2, v3}, Lp0/a;->X(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    :cond_5
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    .line 29
    iget-object v1, p0, Lcom/facebook/drawee/controller/a;->t:Lcom/facebook/datasource/d;

    invoke-interface {v1}, Lcom/facebook/datasource/d;->d()Z

    move-result v1

    .line 30
    new-instance v2, Lcom/facebook/drawee/controller/a$b;

    invoke-direct {v2, p0, v0, v1}, Lcom/facebook/drawee/controller/a$b;-><init>(Lcom/facebook/drawee/controller/a;Ljava/lang/String;Z)V

    .line 31
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->t:Lcom/facebook/datasource/d;

    iget-object v1, p0, Lcom/facebook/drawee/controller/a;->c:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v2, v1}, Lcom/facebook/datasource/d;->f(Lcom/facebook/datasource/f;Ljava/util/concurrent/Executor;)V

    .line 32
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 33
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_6
    return-void
.end method

.method public n(Lcom/facebook/drawee/controller/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controllerListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/controller/c<",
            "-TINFO;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->g:Lcom/facebook/drawee/controller/c;

    instance-of v1, v0, Lcom/facebook/drawee/controller/a$c;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/facebook/drawee/controller/a$c;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/controller/e;->g(Lcom/facebook/drawee/controller/c;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    invoke-static {v0, p1}, Lcom/facebook/drawee/controller/a$c;->n(Lcom/facebook/drawee/controller/c;Lcom/facebook/drawee/controller/c;)Lcom/facebook/drawee/controller/a$c;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/drawee/controller/a;->g:Lcom/facebook/drawee/controller/c;

    return-void

    .line 5
    :cond_1
    iput-object p1, p0, Lcom/facebook/drawee/controller/a;->g:Lcom/facebook/drawee/controller/c;

    return-void
.end method

.method public o(Li1/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controllerListener2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li1/c<",
            "TINFO;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->h:Li1/e;

    invoke-virtual {v0, p1}, Li1/e;->r(Li1/c;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lp0/a;->R(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/facebook/drawee/controller/a;->z:Ljava/lang/Class;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    const-string v3, "controller %x %s: onTouchEvent %s"

    invoke-static {v0, v3, v1, v2, p1}, Lp0/a;->X(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->e:Lcom/facebook/drawee/gestures/a;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/drawee/gestures/a;->b()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->i0()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    .line 5
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->e:Lcom/facebook/drawee/gestures/a;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/gestures/a;->d(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method protected abstract p(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation
.end method

.method protected q()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public r()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->a:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_RELEASE_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 2
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->d:Lcom/facebook/drawee/components/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/facebook/drawee/components/c;->e()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->e:Lcom/facebook/drawee/gestures/a;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/facebook/drawee/gestures/a;->e()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->j:Lz0/c;

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0}, Lz0/c;->reset()V

    .line 8
    :cond_2
    invoke-direct {p0}, Lcom/facebook/drawee/controller/a;->S()V

    return-void
.end method

.method protected s()Lcom/facebook/drawee/controller/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/drawee/controller/c<",
            "TINFO;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->g:Lcom/facebook/drawee/controller/c;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/facebook/drawee/controller/b;->g()Lcom/facebook/drawee/controller/c;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected t()Li1/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li1/c<",
            "TINFO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->h:Li1/e;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/facebook/common/internal/i;->e(Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/drawee/controller/a;->n:Z

    const-string v2, "isAttached"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->g(Ljava/lang/String;Z)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/drawee/controller/a;->o:Z

    const-string v2, "isRequestSubmitted"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->g(Ljava/lang/String;Z)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/drawee/controller/a;->q:Z

    const-string v2, "hasFetchFailed"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->g(Ljava/lang/String;Z)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/controller/a;->u:Ljava/lang/Object;

    .line 5
    invoke-virtual {p0, v1}, Lcom/facebook/drawee/controller/a;->A(Ljava/lang/Object;)I

    move-result v1

    const-string v2, "fetchedImage"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->d(Ljava/lang/String;I)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/controller/a;->a:Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 6
    invoke-virtual {v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "events"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/facebook/common/internal/i$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected u()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->k:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected abstract v()Lcom/facebook/datasource/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/datasource/d<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected x()Lcom/facebook/drawee/gestures/a;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->e:Lcom/facebook/drawee/gestures/a;

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method protected z(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "<null>"

    :goto_0
    return-object p1
.end method

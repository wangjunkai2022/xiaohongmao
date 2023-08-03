.class public final Lcom/google/android/gms/common/api/internal/j1;
.super Lcom/google/android/gms/common/api/i;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/e2;


# instance fields
.field final A:Lcom/google/android/gms/common/api/internal/j3;

.field private final B:Lcom/google/android/gms/common/internal/q0;

.field private final e:Ljava/util/concurrent/locks/Lock;

.field private final f:Lcom/google/android/gms/common/internal/r0;

.field private g:Lcom/google/android/gms/common/api/internal/g2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final h:I

.field private final i:Landroid/content/Context;

.field private final j:Landroid/os/Looper;

.field final k:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/android/gms/common/api/internal/e$a<",
            "**>;>;"
        }
    .end annotation

    .annotation build Ly2/d0;
    .end annotation
.end field

.field private volatile l:Z

.field private m:J

.field private n:J

.field private final o:Lcom/google/android/gms/common/api/internal/h1;

.field private final p:Lcom/google/android/gms/common/e;

.field q:Lcom/google/android/gms/common/api/internal/c2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ly2/d0;
    .end annotation
.end field

.field final r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/a$c<",
            "*>;",
            "Lcom/google/android/gms/common/api/a$f;",
            ">;"
        }
    .end annotation
.end field

.field s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field final t:Lcom/google/android/gms/common/internal/f;

.field final u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/a<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final v:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "+",
            "Lcom/google/android/gms/signin/f;",
            "Lcom/google/android/gms/signin/a;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Lcom/google/android/gms/common/api/internal/o;

.field private final x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/internal/z3;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/lang/Integer;

.field z:Ljava/util/Set;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/internal/h3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/internal/f;Lcom/google/android/gms/common/e;Lcom/google/android/gms/common/api/a$a;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;IILjava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/internal/f;",
            "Lcom/google/android/gms/common/e;",
            "Lcom/google/android/gms/common/api/a$a<",
            "+",
            "Lcom/google/android/gms/signin/f;",
            "Lcom/google/android/gms/signin/a;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/a<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/api/i$b;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/api/i$c;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/a$c<",
            "*>;",
            "Lcom/google/android/gms/common/api/a$f;",
            ">;II",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/internal/z3;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p3

    move/from16 v2, p11

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/i;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/google/android/gms/common/api/internal/j1;->g:Lcom/google/android/gms/common/api/internal/g2;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v0, Lcom/google/android/gms/common/api/internal/j1;->k:Ljava/util/Queue;

    .line 2
    invoke-static {}, Ly2/e;->c()Z

    move-result v4

    const/4 v5, 0x1

    if-eq v5, v4, :cond_0

    const-wide/32 v4, 0x1d4c0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x2710

    :goto_0
    iput-wide v4, v0, Lcom/google/android/gms/common/api/internal/j1;->m:J

    const-wide/16 v4, 0x1388

    iput-wide v4, v0, Lcom/google/android/gms/common/api/internal/j1;->n:J

    new-instance v4, Ljava/util/HashSet;

    .line 3
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v0, Lcom/google/android/gms/common/api/internal/j1;->s:Ljava/util/Set;

    new-instance v4, Lcom/google/android/gms/common/api/internal/o;

    .line 4
    invoke-direct {v4}, Lcom/google/android/gms/common/api/internal/o;-><init>()V

    iput-object v4, v0, Lcom/google/android/gms/common/api/internal/j1;->w:Lcom/google/android/gms/common/api/internal/o;

    iput-object v3, v0, Lcom/google/android/gms/common/api/internal/j1;->y:Ljava/lang/Integer;

    iput-object v3, v0, Lcom/google/android/gms/common/api/internal/j1;->z:Ljava/util/Set;

    new-instance v3, Lcom/google/android/gms/common/api/internal/c1;

    invoke-direct {v3, p0}, Lcom/google/android/gms/common/api/internal/c1;-><init>(Lcom/google/android/gms/common/api/internal/j1;)V

    iput-object v3, v0, Lcom/google/android/gms/common/api/internal/j1;->B:Lcom/google/android/gms/common/internal/q0;

    move-object v4, p1

    iput-object v4, v0, Lcom/google/android/gms/common/api/internal/j1;->i:Landroid/content/Context;

    move-object v4, p2

    iput-object v4, v0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    .line 5
    new-instance v4, Lcom/google/android/gms/common/internal/r0;

    invoke-direct {v4, p3, v3}, Lcom/google/android/gms/common/internal/r0;-><init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/q0;)V

    iput-object v4, v0, Lcom/google/android/gms/common/api/internal/j1;->f:Lcom/google/android/gms/common/internal/r0;

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/j1;->j:Landroid/os/Looper;

    new-instance v3, Lcom/google/android/gms/common/api/internal/h1;

    .line 6
    invoke-direct {v3, p0, p3}, Lcom/google/android/gms/common/api/internal/h1;-><init>(Lcom/google/android/gms/common/api/internal/j1;Landroid/os/Looper;)V

    iput-object v3, v0, Lcom/google/android/gms/common/api/internal/j1;->o:Lcom/google/android/gms/common/api/internal/h1;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/j1;->p:Lcom/google/android/gms/common/e;

    iput v2, v0, Lcom/google/android/gms/common/api/internal/j1;->h:I

    if-ltz v2, :cond_1

    .line 7
    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/j1;->y:Ljava/lang/Integer;

    :cond_1
    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/j1;->u:Ljava/util/Map;

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/j1;->r:Ljava/util/Map;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/j1;->x:Ljava/util/ArrayList;

    .line 8
    new-instance v1, Lcom/google/android/gms/common/api/internal/j3;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/j3;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/j1;->A:Lcom/google/android/gms/common/api/internal/j3;

    .line 9
    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/i$b;

    iget-object v3, v0, Lcom/google/android/gms/common/api/internal/j1;->f:Lcom/google/android/gms/common/internal/r0;

    .line 10
    invoke-virtual {v3, v2}, Lcom/google/android/gms/common/internal/r0;->f(Lcom/google/android/gms/common/api/i$b;)V

    goto :goto_1

    .line 11
    :cond_2
    invoke-interface {p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/i$c;

    iget-object v3, v0, Lcom/google/android/gms/common/api/internal/j1;->f:Lcom/google/android/gms/common/internal/r0;

    .line 12
    invoke-virtual {v3, v2}, Lcom/google/android/gms/common/internal/r0;->g(Lcom/google/android/gms/common/api/i$c;)V

    goto :goto_2

    :cond_3
    move-object v2, p4

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/j1;->t:Lcom/google/android/gms/common/internal/f;

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/j1;->v:Lcom/google/android/gms/common/api/a$a;

    return-void
.end method

.method public static K(Ljava/lang/Iterable;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/gms/common/api/a$f;",
            ">;Z)I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/a$f;

    .line 2
    invoke-interface {v2}, Lcom/google/android/gms/common/api/a$f;->k()Z

    move-result v3

    or-int/2addr v0, v3

    .line 3
    invoke-interface {v2}, Lcom/google/android/gms/common/api/a$f;->d()Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x3

    return p0
.end method

.method static bridge synthetic L(Lcom/google/android/gms/common/api/internal/j1;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/j1;->i:Landroid/content/Context;

    return-object p0
.end method

.method static N(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "SIGN_IN_MODE_NONE"

    return-object p0

    :cond_1
    const-string p0, "SIGN_IN_MODE_OPTIONAL"

    return-object p0

    :cond_2
    const-string p0, "SIGN_IN_MODE_REQUIRED"

    return-object p0
.end method

.method static bridge synthetic O(Lcom/google/android/gms/common/api/internal/j1;Lcom/google/android/gms/common/api/i;Lcom/google/android/gms/common/api/internal/z;Z)V
    .locals 0

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/internal/j1;->T(Lcom/google/android/gms/common/api/i;Lcom/google/android/gms/common/api/internal/z;Z)V

    return-void
.end method

.method static bridge synthetic P(Lcom/google/android/gms/common/api/internal/j1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/j1;->l:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/j1;->U()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    .line 4
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    .line 6
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 7
    throw v0
.end method

.method static bridge synthetic Q(Lcom/google/android/gms/common/api/internal/j1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/j1;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/j1;->U()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    .line 5
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    .line 6
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    .line 7
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 8
    throw v0
.end method

.method private final S(I)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->y:Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/j1;->y:Ljava/lang/Integer;

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_8

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/j1;->g:Lcom/google/android/gms/common/api/internal/g2;

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/j1;->r:Ljava/util/Map;

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/a$f;

    .line 5
    invoke-interface {v2}, Lcom/google/android/gms/common/api/a$f;->k()Z

    move-result v3

    or-int/2addr v0, v3

    .line 6
    invoke-interface {v2}, Lcom/google/android/gms/common/api/a$f;->d()Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/j1;->y:Ljava/lang/Integer;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_5

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/j1;->i:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/j1;->j:Landroid/os/Looper;

    iget-object v6, p0, Lcom/google/android/gms/common/api/internal/j1;->p:Lcom/google/android/gms/common/e;

    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/j1;->r:Ljava/util/Map;

    iget-object v8, p0, Lcom/google/android/gms/common/api/internal/j1;->t:Lcom/google/android/gms/common/internal/f;

    iget-object v9, p0, Lcom/google/android/gms/common/api/internal/j1;->u:Ljava/util/Map;

    iget-object v10, p0, Lcom/google/android/gms/common/api/internal/j1;->v:Lcom/google/android/gms/common/api/a$a;

    iget-object v11, p0, Lcom/google/android/gms/common/api/internal/j1;->x:Ljava/util/ArrayList;

    move-object v3, p0

    .line 9
    invoke-static/range {v2 .. v11}, Lcom/google/android/gms/common/api/internal/e0;->s(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/j1;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/f;Ljava/util/Map;Lcom/google/android/gms/common/internal/f;Ljava/util/Map;Lcom/google/android/gms/common/api/a$a;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/e0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/j1;->g:Lcom/google/android/gms/common/api/internal/g2;

    return-void

    :cond_4
    if-eqz v0, :cond_7

    if-nez v1, :cond_6

    :cond_5
    :goto_2
    new-instance p1, Lcom/google/android/gms/common/api/internal/n1;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/j1;->i:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/j1;->j:Landroid/os/Looper;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/j1;->p:Lcom/google/android/gms/common/e;

    iget-object v6, p0, Lcom/google/android/gms/common/api/internal/j1;->r:Ljava/util/Map;

    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/j1;->t:Lcom/google/android/gms/common/internal/f;

    iget-object v8, p0, Lcom/google/android/gms/common/api/internal/j1;->u:Ljava/util/Map;

    iget-object v9, p0, Lcom/google/android/gms/common/api/internal/j1;->v:Lcom/google/android/gms/common/api/a$a;

    iget-object v10, p0, Lcom/google/android/gms/common/api/internal/j1;->x:Ljava/util/ArrayList;

    move-object v0, p1

    move-object v2, p0

    move-object v11, p0

    .line 10
    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/common/api/internal/n1;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/j1;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/f;Ljava/util/Map;Lcom/google/android/gms/common/internal/f;Ljava/util/Map;Lcom/google/android/gms/common/api/a$a;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/internal/e2;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/j1;->g:Lcom/google/android/gms/common/api/internal/g2;

    return-void

    .line 11
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead."

    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead."

    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/j1;->N(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/j1;->y:Ljava/lang/Integer;

    .line 16
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/j1;->N(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x33

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Cannot use sign-in mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Mode was already set to "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final T(Lcom/google/android/gms/common/api/i;Lcom/google/android/gms/common/api/internal/z;Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/common/internal/service/a;->d:Lcom/google/android/gms/common/internal/service/f;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/service/f;->a(Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/common/api/l;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/internal/g1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/google/android/gms/common/api/internal/g1;-><init>(Lcom/google/android/gms/common/api/internal/j1;Lcom/google/android/gms/common/api/internal/z;ZLcom/google/android/gms/common/api/i;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/l;->h(Lcom/google/android/gms/common/api/r;)V

    return-void
.end method

.method private final U()V
    .locals 1
    .annotation build Ls7/a;
        value = "mLock"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->f:Lcom/google/android/gms/common/internal/r0;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/r0;->b()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->g:Lcom/google/android/gms/common/api/internal/g2;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/g2;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/g2;->a()V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/j1;->i()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/j1;->g()V

    return-void
.end method

.method public final B(Lcom/google/android/gms/common/api/i$b;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/i$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->f:Lcom/google/android/gms/common/internal/r0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/r0;->f(Lcom/google/android/gms/common/api/i$b;)V

    return-void
.end method

.method public final C(Lcom/google/android/gms/common/api/i$c;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/i$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->f:Lcom/google/android/gms/common/internal/r0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/r0;->g(Lcom/google/android/gms/common/api/i$c;)V

    return-void
.end method

.method public final D(Ljava/lang/Object;)Lcom/google/android/gms/common/api/internal/n;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(T",
            "L;",
            ")",
            "Lcom/google/android/gms/common/api/internal/n<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->w:Lcom/google/android/gms/common/api/internal/o;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/j1;->j:Landroid/os/Looper;

    const-string v2, "NO_TYPE"

    .line 2
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/api/internal/o;->d(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/n;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    .line 6
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 7
    throw p1
.end method

.method public final E(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/internal/l;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/internal/l;-><init>(Landroid/app/Activity;)V

    iget p1, p0, Lcom/google/android/gms/common/api/internal/j1;->h:I

    if-ltz p1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/q3;->u(Lcom/google/android/gms/common/api/internal/l;)Lcom/google/android/gms/common/api/internal/q3;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/common/api/internal/j1;->h:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/q3;->w(I)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Called stopAutoManage but automatic lifecycle management is not enabled."

    .line 4
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final F(Lcom/google/android/gms/common/api/i$b;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/i$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->f:Lcom/google/android/gms/common/internal/r0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/r0;->h(Lcom/google/android/gms/common/api/i$b;)V

    return-void
.end method

.method public final G(Lcom/google/android/gms/common/api/i$c;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/i$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->f:Lcom/google/android/gms/common/internal/r0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/r0;->i(Lcom/google/android/gms/common/api/i$c;)V

    return-void
.end method

.method public final H(Lcom/google/android/gms/common/api/internal/h3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->z:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    .line 2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->z:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->z:Ljava/util/Set;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    .line 5
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 8
    throw p1
.end method

.method public final I(Lcom/google/android/gms/common/api/internal/h3;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->z:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v1, "GoogleApiClientImpl"

    if-nez v0, :cond_0

    :try_start_1
    new-instance p1, Ljava/lang/Exception;

    .line 2
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string v0, "Attempted to remove pending transform when no transforms are registered."

    invoke-static {v1, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/Exception;

    .line 4
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string v0, "Failed to remove pending transform - this may lead to memory leaks!"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    .line 5
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/j1;->z:Ljava/util/Set;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_2

    :try_start_3
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    .line 6
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 7
    :cond_2
    :try_start_4
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    xor-int/lit8 p1, p1, 0x1

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    .line 8
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-nez p1, :cond_3

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/j1;->g:Lcom/google/android/gms/common/api/internal/g2;

    if-eqz p1, :cond_3

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/common/api/internal/g2;->b()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 10
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    .line 11
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 13
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    .line 14
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 15
    throw p1
.end method

.method final M()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    .line 2
    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1, v3}, Lcom/google/android/gms/common/api/internal/j1;->j(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final R()Z
    .locals 2
    .annotation build Ls7/a;
        value = "mLock"
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/j1;->l:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/common/api/internal/j1;->l:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->o:Lcom/google/android/gms/common/api/internal/h1;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->o:Lcom/google/android/gms/common/api/internal/h1;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->q:Lcom/google/android/gms/common/api/internal/c2;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/c2;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->q:Lcom/google/android/gms/common/api/internal/c2;

    :cond_1
    return v1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Ls7/a;
        value = "mLock"
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->k:Ljava/util/Queue;

    .line 2
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/e$a;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/i;->m(Lcom/google/android/gms/common/api/internal/e$a;)Lcom/google/android/gms/common/api/internal/e$a;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->f:Lcom/google/android/gms/common/internal/r0;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/r0;->d(Landroid/os/Bundle;)V

    return-void
.end method

.method public final b(IZ)V
    .locals 5
    .annotation build Ls7/a;
        value = "mLock"
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    if-nez p2, :cond_2

    .line 1
    iget-boolean p1, p0, Lcom/google/android/gms/common/api/internal/j1;->l:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/common/api/internal/j1;->l:Z

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/j1;->q:Lcom/google/android/gms/common/api/internal/c2;

    if-nez p1, :cond_1

    .line 3
    invoke-static {}, Ly2/e;->c()Z

    move-result p1

    if-nez p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/j1;->p:Lcom/google/android/gms/common/e;

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/j1;->i:Landroid/content/Context;

    .line 4
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance v2, Lcom/google/android/gms/common/api/internal/i1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/api/internal/i1;-><init>(Lcom/google/android/gms/common/api/internal/j1;)V

    .line 5
    invoke-virtual {p1, p2, v2}, Lcom/google/android/gms/common/e;->G(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/b2;)Lcom/google/android/gms/common/api/internal/c2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/j1;->q:Lcom/google/android/gms/common/api/internal/c2;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/j1;->o:Lcom/google/android/gms/common/api/internal/h1;

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    iget-wide v2, p0, Lcom/google/android/gms/common/api/internal/j1;->m:J

    .line 7
    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/j1;->o:Lcom/google/android/gms/common/api/internal/h1;

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    iget-wide v2, p0, Lcom/google/android/gms/common/api/internal/j1;->n:J

    .line 9
    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 10
    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/j1;->A:Lcom/google/android/gms/common/api/internal/j3;

    iget-object p2, p2, Lcom/google/android/gms/common/api/internal/j3;->a:Ljava/util/Set;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-interface {p2, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 11
    array-length v2, p2

    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v3, p2, v1

    sget-object v4, Lcom/google/android/gms/common/api/internal/j3;->c:Lcom/google/android/gms/common/api/Status;

    .line 12
    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->l(Lcom/google/android/gms/common/api/Status;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/j1;->f:Lcom/google/android/gms/common/internal/r0;

    .line 13
    invoke-virtual {p2, p1}, Lcom/google/android/gms/common/internal/r0;->e(I)V

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/j1;->f:Lcom/google/android/gms/common/internal/r0;

    .line 14
    invoke-virtual {p2}, Lcom/google/android/gms/common/internal/r0;->a()V

    if-ne p1, v0, :cond_5

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/j1;->U()V

    :cond_5
    return-void
.end method

.method public final c(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3
    .annotation build Ls7/a;
        value = "mLock"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->p:Lcom/google/android/gms/common/e;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/j1;->i:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/f;->l(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/j1;->R()Z

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/j1;->l:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->f:Lcom/google/android/gms/common/internal/r0;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/r0;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/j1;->f:Lcom/google/android/gms/common/internal/r0;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/r0;->a()V

    :cond_1
    return-void
.end method

.method public final d()Lcom/google/android/gms/common/ConnectionResult;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "blockingConnect must not be called on the UI thread"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->r(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/api/internal/j1;->h:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->y:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v0, "Sign-in mode should have been set explicitly by auto-manage."

    .line 4
    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/u;->r(ZLjava/lang/Object;)V

    goto :goto_2

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->y:Ljava/lang/Integer;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->r:Ljava/util/Map;

    .line 6
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/google/android/gms/common/api/internal/j1;->K(Ljava/lang/Iterable;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->y:Ljava/lang/Integer;

    goto :goto_2

    .line 7
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    .line 8
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->y:Ljava/lang/Integer;

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/j1;->S(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->f:Lcom/google/android/gms/common/internal/r0;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/r0;->b()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->g:Lcom/google/android/gms/common/api/internal/g2;

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/g2;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/g2;->zab()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    .line 12
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 13
    :cond_4
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    .line 15
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 16
    throw v0
.end method

.method public final e(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 3
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "blockingConnect must not be called on the UI thread"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->r(ZLjava/lang/Object;)V

    const-string v0, "TimeUnit must not be null"

    .line 3
    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->y:Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->r:Ljava/util/Map;

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/api/internal/j1;->K(Ljava/lang/Iterable;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->y:Ljava/lang/Integer;

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 7
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->y:Ljava/lang/Integer;

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/j1;->S(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->f:Lcom/google/android/gms/common/internal/r0;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/r0;->b()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->g:Lcom/google/android/gms/common/api/internal/g2;

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/g2;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/common/api/internal/g2;->i(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    .line 11
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 12
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    .line 13
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    .line 14
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 15
    throw p1
.end method

.method public final f()Lcom/google/android/gms/common/api/l;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/l<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/j1;->u()Z

    move-result v0

    const-string v1, "GoogleApiClient is not connected yet."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->r(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->y:Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    const-string v0, "Cannot use clearDefaultAccountAndReconnect with GOOGLE_SIGN_IN_API"

    .line 3
    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/u;->r(ZLjava/lang/Object;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/common/api/internal/z;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/z;-><init>(Lcom/google/android/gms/common/api/i;)V

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/j1;->r:Ljava/util/Map;

    .line 5
    sget-object v3, Lcom/google/android/gms/common/internal/service/a;->a:Lcom/google/android/gms/common/api/a$g;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    invoke-direct {p0, p0, v0, v1}, Lcom/google/android/gms/common/api/internal/j1;->T(Lcom/google/android/gms/common/api/i;Lcom/google/android/gms/common/api/internal/z;Z)V

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v2, Lcom/google/android/gms/common/api/internal/d1;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/gms/common/api/internal/d1;-><init>(Lcom/google/android/gms/common/api/internal/j1;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/common/api/internal/z;)V

    new-instance v3, Lcom/google/android/gms/common/api/internal/f1;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/common/api/internal/f1;-><init>(Lcom/google/android/gms/common/api/internal/j1;Lcom/google/android/gms/common/api/internal/z;)V

    new-instance v4, Lcom/google/android/gms/common/api/i$a;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/j1;->i:Landroid/content/Context;

    .line 8
    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/i$a;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/google/android/gms/common/internal/service/a;->b:Lcom/google/android/gms/common/api/a;

    .line 9
    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/i$a;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/i$a;

    .line 10
    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/api/i$a;->e(Lcom/google/android/gms/common/api/i$b;)Lcom/google/android/gms/common/api/i$a;

    .line 11
    invoke-virtual {v4, v3}, Lcom/google/android/gms/common/api/i$a;->f(Lcom/google/android/gms/common/api/i$c;)Lcom/google/android/gms/common/api/i$a;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/j1;->o:Lcom/google/android/gms/common/api/internal/h1;

    .line 12
    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/api/i$a;->m(Landroid/os/Handler;)Lcom/google/android/gms/common/api/i$a;

    .line 13
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/i$a;->h()Lcom/google/android/gms/common/api/i;

    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/i;->g()V

    :goto_1
    return-object v0
.end method

.method public final g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/api/internal/j1;->h:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->y:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v4, "Sign-in mode should have been set explicitly by auto-manage."

    .line 2
    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/u;->r(ZLjava/lang/Object;)V

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->y:Ljava/lang/Integer;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->r:Ljava/util/Map;

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/api/internal/j1;->K(Ljava/lang/Iterable;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->y:Ljava/lang/Integer;

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_5

    .line 6
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->y:Ljava/lang/Integer;

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    .line 8
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_4

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v0

    goto :goto_3

    :cond_4
    move v1, v0

    :goto_2
    const/4 v2, 0x1

    :goto_3
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x21

    .line 9
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Illegal sign-in mode: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/u;->b(ZLjava/lang/Object;)V

    .line 10
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/api/internal/j1;->S(I)V

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/j1;->U()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    .line 12
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    .line 13
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    .line 14
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    .line 15
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 16
    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    .line 17
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    .line 18
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 19
    throw v0
.end method

.method public final h(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x21

    .line 2
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Illegal sign-in mode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/u;->b(ZLjava/lang/Object;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/j1;->S(I)V

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/j1;->U()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    .line 5
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 6
    throw p1
.end method

.method public final i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->A:Lcom/google/android/gms/common/api/internal/j3;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/j3;->b()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->g:Lcom/google/android/gms/common/api/internal/g2;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/g2;->d()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->w:Lcom/google/android/gms/common/api/internal/o;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/o;->e()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->k:Ljava/util/Queue;

    .line 5
    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/e$a;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->v(Lcom/google/android/gms/common/api/internal/i3;)V

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->f()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->k:Ljava/util/Queue;

    .line 8
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->g:Lcom/google/android/gms/common/api/internal/g2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    .line 9
    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 10
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/j1;->R()Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->f:Lcom/google/android/gms/common/internal/r0;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/r0;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    .line 14
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 15
    throw v0
.end method

.method public final j(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p2    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mContext="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/j1;->i:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mResuming="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/j1;->l:Z

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mWorkQueue.size()="

    .line 3
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/j1;->k:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->A:Lcom/google/android/gms/common/api/internal/j3;

    const-string v1, " mUnconsumedApiCalls.size()="

    .line 4
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/j3;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->g:Lcom/google/android/gms/common/api/internal/g2;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/internal/g2;->f(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final l(Lcom/google/android/gms/common/api/internal/e$a;)Lcom/google/android/gms/common/api/internal/e$a;
    .locals 4
    .param p1    # Lcom/google/android/gms/common/api/internal/e$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$b;",
            "R::",
            "Lcom/google/android/gms/common/api/q;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/e$a<",
            "TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/e$a;->x()Lcom/google/android/gms/common/api/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/j1;->r:Ljava/util/Map;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/e$a;->y()Lcom/google/android/gms/common/api/a$c;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "the API"

    .line 3
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x41

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "GoogleApiClient is not configured to use "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " required for this call."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/u;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->g:Lcom/google/android/gms/common/api/internal/g2;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->k:Ljava/util/Queue;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    .line 7
    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 8
    :cond_1
    :try_start_1
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/g2;->j(Lcom/google/android/gms/common/api/internal/e$a;)Lcom/google/android/gms/common/api/internal/e$a;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 10
    throw p1
.end method

.method public final m(Lcom/google/android/gms/common/api/internal/e$a;)Lcom/google/android/gms/common/api/internal/e$a;
    .locals 4
    .param p1    # Lcom/google/android/gms/common/api/internal/e$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$b;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/e$a<",
            "+",
            "Lcom/google/android/gms/common/api/q;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/e$a;->x()Lcom/google/android/gms/common/api/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/j1;->r:Ljava/util/Map;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/e$a;->y()Lcom/google/android/gms/common/api/a$c;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "the API"

    .line 3
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x41

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "GoogleApiClient is not configured to use "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " required for this call."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/u;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->g:Lcom/google/android/gms/common/api/internal/g2;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/j1;->l:Z

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->k:Ljava/util/Queue;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->k:Ljava/util/Queue;

    .line 7
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->k:Ljava/util/Queue;

    .line 8
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/e$a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/j1;->A:Lcom/google/android/gms/common/api/internal/j3;

    .line 9
    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/j3;->a(Lcom/google/android/gms/common/api/internal/BasePendingResult;)V

    .line 10
    sget-object v1, Lcom/google/android/gms/common/api/Status;->RESULT_INTERNAL_ERROR:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/e$a;->b(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    .line 11
    :goto_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 12
    :cond_2
    :try_start_1
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/g2;->l(Lcom/google/android/gms/common/api/internal/e$a;)Lcom/google/android/gms/common/api/internal/e$a;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    goto :goto_2

    .line 13
    :cond_3
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "GoogleApiClient is not connected yet."

    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    .line 15
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 16
    throw p1
.end method

.method public final o(Lcom/google/android/gms/common/api/a$c;)Lcom/google/android/gms/common/api/a$f;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/a$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/a$f;",
            ">(",
            "Lcom/google/android/gms/common/api/a$c<",
            "TC;>;)TC;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->r:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/a$f;

    const-string v0, "Appropriate Api was not requested."

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final p(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 3
    .param p1    # Lcom/google/android/gms/common/api/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a<",
            "*>;)",
            "Lcom/google/android/gms/common/ConnectionResult;"
        }
    .end annotation

    const-string v0, "GoogleApiClientImpl"

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/j1;->u()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/j1;->l:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot invoke getConnectionResult unless GoogleApiClient is connected"

    .line 4
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/j1;->r:Ljava/util/Map;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/a;->b()Lcom/google/android/gms/common/api/a$c;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/j1;->g:Lcom/google/android/gms/common/api/internal/g2;

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/g2;

    invoke-interface {v1, p1}, Lcom/google/android/gms/common/api/internal/g2;->g(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/j1;->l:Z

    if-eqz v1, :cond_2

    .line 8
    sget-object p1, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    .line 9
    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 10
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/j1;->M()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, " requested in getConnectionResult is not connected but is not present in the failed  connections map"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 12
    invoke-static {v0, p1, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    goto :goto_1

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    .line 15
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :cond_4
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, " was never registered with GoogleApiClient"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->e:Ljava/util/concurrent/locks/Lock;

    .line 17
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 18
    throw p1
.end method

.method public final q()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->i:Landroid/content/Context;

    return-object v0
.end method

.method public final r()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->j:Landroid/os/Looper;

    return-object v0
.end method

.method public final s(Lcom/google/android/gms/common/api/a;)Z
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->r:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/a;->b()Lcom/google/android/gms/common/api/a$c;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final t(Lcom/google/android/gms/common/api/a;)Z
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/j1;->u()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->r:Ljava/util/Map;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/a;->b()Lcom/google/android/gms/common/api/a$c;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/a$f;

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/common/api/a$f;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final u()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->g:Lcom/google/android/gms/common/api/internal/g2;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/g2;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final v()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->g:Lcom/google/android/gms/common/api/internal/g2;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/g2;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final w(Lcom/google/android/gms/common/api/i$b;)Z
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/i$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->f:Lcom/google/android/gms/common/internal/r0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/r0;->j(Lcom/google/android/gms/common/api/i$b;)Z

    move-result p1

    return p1
.end method

.method public final x(Lcom/google/android/gms/common/api/i$c;)Z
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/i$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->f:Lcom/google/android/gms/common/internal/r0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/r0;->k(Lcom/google/android/gms/common/api/i$c;)Z

    move-result p1

    return p1
.end method

.method public final y(Lcom/google/android/gms/common/api/internal/w;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->g:Lcom/google/android/gms/common/api/internal/g2;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/g2;->e(Lcom/google/android/gms/common/api/internal/w;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final z()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j1;->g:Lcom/google/android/gms/common/api/internal/g2;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/g2;->c()V

    :cond_0
    return-void
.end method

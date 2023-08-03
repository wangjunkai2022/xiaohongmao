.class public Lcom/facebook/imagepipeline/core/i;
.super Ljava/lang/Object;
.source "ImagePipelineConfig.java"

# interfaces
.implements Lcom/facebook/imagepipeline/core/j;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/core/i$b;,
        Lcom/facebook/imagepipeline/core/i$c;
    }
.end annotation


# static fields
.field private static K:Lcom/facebook/imagepipeline/core/i$c;


# instance fields
.field private final A:Lcom/facebook/cache/disk/c;

.field private final B:Lcom/facebook/imagepipeline/decoder/c;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final C:Lcom/facebook/imagepipeline/core/k;

.field private final D:Z

.field private final E:Ll0/a;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final F:Lm1/a;

.field private final G:Lcom/facebook/imagepipeline/cache/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/u<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final H:Lcom/facebook/imagepipeline/cache/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/u<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final I:Lcom/facebook/common/executors/g;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final J:Lcom/facebook/imagepipeline/cache/b;

.field private final a:Landroid/graphics/Bitmap$Config;

.field private final b:Lcom/facebook/common/internal/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/m<",
            "Lcom/facebook/imagepipeline/cache/v;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/facebook/imagepipeline/cache/u$a;

.field private final d:Lcom/facebook/imagepipeline/cache/j$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/j$b<",
            "Lcom/facebook/cache/common/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final e:Lcom/facebook/imagepipeline/cache/g;

.field private final f:Landroid/content/Context;

.field private final g:Z

.field private final h:Lcom/facebook/imagepipeline/core/g;

.field private final i:Lcom/facebook/common/internal/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/m<",
            "Lcom/facebook/imagepipeline/cache/v;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/facebook/imagepipeline/core/f;

.field private final k:Lcom/facebook/imagepipeline/cache/q;

.field private final l:Lcom/facebook/imagepipeline/decoder/b;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final m:Ls1/d;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final n:Ljava/lang/Integer;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final o:Lcom/facebook/common/internal/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/m<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Lcom/facebook/cache/disk/c;

.field private final q:Lcom/facebook/common/memory/c;

.field private final r:I

.field private final s:Lcom/facebook/imagepipeline/producers/l0;

.field private final t:I

.field private final u:Lcom/facebook/imagepipeline/bitmaps/f;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final v:Lcom/facebook/imagepipeline/memory/e0;

.field private final w:Lcom/facebook/imagepipeline/decoder/d;

.field private final x:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lq1/f;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lq1/e;",
            ">;"
        }
    .end annotation
.end field

.field private final z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/imagepipeline/core/i$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/core/i$c;-><init>(Lcom/facebook/imagepipeline/core/i$a;)V

    sput-object v0, Lcom/facebook/imagepipeline/core/i;->K:Lcom/facebook/imagepipeline/core/i$c;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/imagepipeline/core/i$b;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ImagePipelineConfig()"

    .line 4
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->a(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/core/k$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/k$b;->t()Lcom/facebook/imagepipeline/core/k;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/i;->C:Lcom/facebook/imagepipeline/core/k;

    .line 6
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->l(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/common/internal/m;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/facebook/imagepipeline/cache/l;

    .line 7
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->w(Lcom/facebook/imagepipeline/core/i$b;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 8
    invoke-static {v2}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-direct {v1, v2}, Lcom/facebook/imagepipeline/cache/l;-><init>(Landroid/app/ActivityManager;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->l(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/common/internal/m;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/common/internal/m;

    .line 10
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->E(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/cache/u$a;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/facebook/imagepipeline/cache/d;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/cache/d;-><init>()V

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->E(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/cache/u$a;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/i;->c:Lcom/facebook/imagepipeline/cache/u$a;

    .line 12
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->F(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/cache/j$b;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/i;->d:Lcom/facebook/imagepipeline/cache/j$b;

    .line 13
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->G(Lcom/facebook/imagepipeline/core/i$b;)Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-nez v1, :cond_3

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->G(Lcom/facebook/imagepipeline/core/i$b;)Landroid/graphics/Bitmap$Config;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/i;->a:Landroid/graphics/Bitmap$Config;

    .line 14
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->H(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/cache/g;

    move-result-object v1

    if-nez v1, :cond_4

    .line 15
    invoke-static {}, Lcom/facebook/imagepipeline/cache/m;->f()Lcom/facebook/imagepipeline/cache/m;

    move-result-object v1

    goto :goto_3

    .line 16
    :cond_4
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->H(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/cache/g;

    move-result-object v1

    :goto_3
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/i;->e:Lcom/facebook/imagepipeline/cache/g;

    .line 17
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->w(Lcom/facebook/imagepipeline/core/i$b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/i;->f:Landroid/content/Context;

    .line 18
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->I(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/core/g;

    move-result-object v1

    if-nez v1, :cond_5

    new-instance v1, Lcom/facebook/imagepipeline/core/c;

    new-instance v2, Lcom/facebook/imagepipeline/core/e;

    invoke-direct {v2}, Lcom/facebook/imagepipeline/core/e;-><init>()V

    invoke-direct {v1, v2}, Lcom/facebook/imagepipeline/core/c;-><init>(Lcom/facebook/imagepipeline/core/d;)V

    goto :goto_4

    .line 19
    :cond_5
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->I(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/core/g;

    move-result-object v1

    :goto_4
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/i;->h:Lcom/facebook/imagepipeline/core/g;

    .line 20
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->J(Lcom/facebook/imagepipeline/core/i$b;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/imagepipeline/core/i;->g:Z

    .line 21
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->b(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/common/internal/m;

    move-result-object v1

    if-nez v1, :cond_6

    new-instance v1, Lcom/facebook/imagepipeline/cache/n;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/cache/n;-><init>()V

    goto :goto_5

    .line 22
    :cond_6
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->b(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/common/internal/m;

    move-result-object v1

    :goto_5
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/i;->i:Lcom/facebook/common/internal/m;

    .line 23
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->c(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/cache/q;

    move-result-object v1

    if-nez v1, :cond_7

    .line 24
    invoke-static {}, Lcom/facebook/imagepipeline/cache/y;->o()Lcom/facebook/imagepipeline/cache/y;

    move-result-object v1

    goto :goto_6

    .line 25
    :cond_7
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->c(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/cache/q;

    move-result-object v1

    :goto_6
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/i;->k:Lcom/facebook/imagepipeline/cache/q;

    .line 26
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->d(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/decoder/b;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/i;->l:Lcom/facebook/imagepipeline/decoder/b;

    .line 27
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i;->K(Lcom/facebook/imagepipeline/core/i$b;)Ls1/d;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/i;->m:Ls1/d;

    .line 28
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->e(Lcom/facebook/imagepipeline/core/i$b;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/i;->n:Ljava/lang/Integer;

    .line 29
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->f(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/common/internal/m;

    move-result-object v1

    if-nez v1, :cond_8

    new-instance v1, Lcom/facebook/imagepipeline/core/i$a;

    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/core/i$a;-><init>(Lcom/facebook/imagepipeline/core/i;)V

    goto :goto_7

    .line 30
    :cond_8
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->f(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/common/internal/m;

    move-result-object v1

    :goto_7
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/i;->o:Lcom/facebook/common/internal/m;

    .line 31
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->g(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/cache/disk/c;

    move-result-object v1

    if-nez v1, :cond_9

    .line 32
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->w(Lcom/facebook/imagepipeline/core/i$b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/imagepipeline/core/i;->J(Landroid/content/Context;)Lcom/facebook/cache/disk/c;

    move-result-object v1

    goto :goto_8

    .line 33
    :cond_9
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->g(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/cache/disk/c;

    move-result-object v1

    :goto_8
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/i;->p:Lcom/facebook/cache/disk/c;

    .line 34
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->h(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/common/memory/c;

    move-result-object v2

    if-nez v2, :cond_a

    .line 35
    invoke-static {}, Lcom/facebook/common/memory/d;->c()Lcom/facebook/common/memory/d;

    move-result-object v2

    goto :goto_9

    .line 36
    :cond_a
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->h(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/common/memory/c;

    move-result-object v2

    :goto_9
    iput-object v2, p0, Lcom/facebook/imagepipeline/core/i;->q:Lcom/facebook/common/memory/c;

    .line 37
    invoke-static {p1, v0}, Lcom/facebook/imagepipeline/core/i;->L(Lcom/facebook/imagepipeline/core/i$b;Lcom/facebook/imagepipeline/core/k;)I

    move-result v2

    iput v2, p0, Lcom/facebook/imagepipeline/core/i;->r:I

    .line 38
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->i(Lcom/facebook/imagepipeline/core/i$b;)I

    move-result v2

    if-gez v2, :cond_b

    const/16 v2, 0x7530

    goto :goto_a

    .line 39
    :cond_b
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->i(Lcom/facebook/imagepipeline/core/i$b;)I

    move-result v2

    :goto_a
    iput v2, p0, Lcom/facebook/imagepipeline/core/i;->t:I

    .line 40
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "ImagePipelineConfig->mNetworkFetcher"

    .line 41
    invoke-static {v3}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 42
    :cond_c
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->j(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/producers/l0;

    move-result-object v3

    if-nez v3, :cond_d

    new-instance v3, Lcom/facebook/imagepipeline/producers/x;

    invoke-direct {v3, v2}, Lcom/facebook/imagepipeline/producers/x;-><init>(I)V

    goto :goto_b

    .line 43
    :cond_d
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->j(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/producers/l0;

    move-result-object v3

    :goto_b
    iput-object v3, p0, Lcom/facebook/imagepipeline/core/i;->s:Lcom/facebook/imagepipeline/producers/l0;

    .line 44
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 45
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 46
    :cond_e
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->k(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/bitmaps/f;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/imagepipeline/core/i;->u:Lcom/facebook/imagepipeline/bitmaps/f;

    .line 47
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->m(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/memory/e0;

    move-result-object v2

    if-nez v2, :cond_f

    new-instance v2, Lcom/facebook/imagepipeline/memory/e0;

    .line 48
    invoke-static {}, Lcom/facebook/imagepipeline/memory/d0;->n()Lcom/facebook/imagepipeline/memory/d0$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/d0$b;->m()Lcom/facebook/imagepipeline/memory/d0;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/imagepipeline/memory/e0;-><init>(Lcom/facebook/imagepipeline/memory/d0;)V

    goto :goto_c

    .line 49
    :cond_f
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->m(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/memory/e0;

    move-result-object v2

    :goto_c
    iput-object v2, p0, Lcom/facebook/imagepipeline/core/i;->v:Lcom/facebook/imagepipeline/memory/e0;

    .line 50
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->n(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/decoder/d;

    move-result-object v3

    if-nez v3, :cond_10

    new-instance v3, Lcom/facebook/imagepipeline/decoder/f;

    invoke-direct {v3}, Lcom/facebook/imagepipeline/decoder/f;-><init>()V

    goto :goto_d

    .line 51
    :cond_10
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->n(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/decoder/d;

    move-result-object v3

    :goto_d
    iput-object v3, p0, Lcom/facebook/imagepipeline/core/i;->w:Lcom/facebook/imagepipeline/decoder/d;

    .line 52
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->o(Lcom/facebook/imagepipeline/core/i$b;)Ljava/util/Set;

    move-result-object v3

    if-nez v3, :cond_11

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    goto :goto_e

    .line 53
    :cond_11
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->o(Lcom/facebook/imagepipeline/core/i$b;)Ljava/util/Set;

    move-result-object v3

    :goto_e
    iput-object v3, p0, Lcom/facebook/imagepipeline/core/i;->x:Ljava/util/Set;

    .line 54
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->p(Lcom/facebook/imagepipeline/core/i$b;)Ljava/util/Set;

    move-result-object v3

    if-nez v3, :cond_12

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    goto :goto_f

    .line 55
    :cond_12
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->p(Lcom/facebook/imagepipeline/core/i$b;)Ljava/util/Set;

    move-result-object v3

    :goto_f
    iput-object v3, p0, Lcom/facebook/imagepipeline/core/i;->y:Ljava/util/Set;

    .line 56
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->q(Lcom/facebook/imagepipeline/core/i$b;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/facebook/imagepipeline/core/i;->z:Z

    .line 57
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->r(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/cache/disk/c;

    move-result-object v3

    if-nez v3, :cond_13

    goto :goto_10

    .line 58
    :cond_13
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->r(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/cache/disk/c;

    move-result-object v1

    :goto_10
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/i;->A:Lcom/facebook/cache/disk/c;

    .line 59
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->s(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/decoder/c;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/i;->B:Lcom/facebook/imagepipeline/decoder/c;

    .line 60
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/memory/e0;->e()I

    move-result v1

    .line 61
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->t(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/core/f;

    move-result-object v2

    if-nez v2, :cond_14

    new-instance v2, Lcom/facebook/imagepipeline/core/b;

    invoke-direct {v2, v1}, Lcom/facebook/imagepipeline/core/b;-><init>(I)V

    goto :goto_11

    .line 62
    :cond_14
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->t(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/core/f;

    move-result-object v2

    :goto_11
    iput-object v2, p0, Lcom/facebook/imagepipeline/core/i;->j:Lcom/facebook/imagepipeline/core/f;

    .line 63
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->u(Lcom/facebook/imagepipeline/core/i$b;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/imagepipeline/core/i;->D:Z

    .line 64
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->v(Lcom/facebook/imagepipeline/core/i$b;)Ll0/a;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/i;->E:Ll0/a;

    .line 65
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->x(Lcom/facebook/imagepipeline/core/i$b;)Lm1/a;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/i;->F:Lm1/a;

    .line 66
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->y(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/cache/u;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/i;->G:Lcom/facebook/imagepipeline/cache/u;

    .line 67
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->z(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/cache/b;

    move-result-object v1

    if-nez v1, :cond_15

    new-instance v1, Lcom/facebook/imagepipeline/cache/h;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/cache/h;-><init>()V

    goto :goto_12

    .line 68
    :cond_15
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->z(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/cache/b;

    move-result-object v1

    :goto_12
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/i;->J:Lcom/facebook/imagepipeline/cache/b;

    .line 69
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->A(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/cache/u;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/i;->H:Lcom/facebook/imagepipeline/cache/u;

    .line 70
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/i$b;->B(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/common/executors/g;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/i;->I:Lcom/facebook/common/executors/g;

    .line 71
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/k;->m()Lt0/b;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 72
    new-instance v1, Lcom/facebook/imagepipeline/bitmaps/d;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/i;->v()Lcom/facebook/imagepipeline/memory/e0;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/imagepipeline/bitmaps/d;-><init>(Lcom/facebook/imagepipeline/memory/e0;)V

    .line 73
    invoke-static {p1, v0, v1}, Lcom/facebook/imagepipeline/core/i;->O(Lt0/b;Lcom/facebook/imagepipeline/core/k;Lt0/a;)V

    goto :goto_13

    .line 74
    :cond_16
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/k;->z()Z

    move-result p1

    if-eqz p1, :cond_17

    sget-boolean p1, Lt0/c;->a:Z

    if-eqz p1, :cond_17

    .line 75
    invoke-static {}, Lt0/c;->j()Lt0/b;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 76
    new-instance v1, Lcom/facebook/imagepipeline/bitmaps/d;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/i;->v()Lcom/facebook/imagepipeline/memory/e0;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/imagepipeline/bitmaps/d;-><init>(Lcom/facebook/imagepipeline/memory/e0;)V

    .line 77
    invoke-static {p1, v0, v1}, Lcom/facebook/imagepipeline/core/i;->O(Lt0/b;Lcom/facebook/imagepipeline/core/k;Lt0/a;)V

    .line 78
    :cond_17
    :goto_13
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 79
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_18
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/core/i$b;Lcom/facebook/imagepipeline/core/i$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/core/i;-><init>(Lcom/facebook/imagepipeline/core/i$b;)V

    return-void
.end method

.method public static I()Lcom/facebook/imagepipeline/core/i$c;
    .locals 1

    sget-object v0, Lcom/facebook/imagepipeline/core/i;->K:Lcom/facebook/imagepipeline/core/i$c;

    return-object v0
.end method

.method private static J(Landroid/content/Context;)Lcom/facebook/cache/disk/c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DiskCacheConfig.getDefaultMainDiskCacheConfig"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/facebook/cache/disk/c;->n(Landroid/content/Context;)Lcom/facebook/cache/disk/c$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/cache/disk/c$b;->n()Lcom/facebook/cache/disk/c;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_1
    return-object p0

    :catchall_0
    move-exception p0

    .line 6
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 8
    :cond_2
    throw p0
.end method

.method private static K(Lcom/facebook/imagepipeline/core/i$b;)Ls1/d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/facebook/imagepipeline/core/i$b;->C(Lcom/facebook/imagepipeline/core/i$b;)Ls1/d;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/facebook/imagepipeline/core/i$b;->e(Lcom/facebook/imagepipeline/core/i$b;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You can\'t define a custom ImageTranscoderFactory and provide an ImageTranscoderType"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/facebook/imagepipeline/core/i$b;->C(Lcom/facebook/imagepipeline/core/i$b;)Ls1/d;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {p0}, Lcom/facebook/imagepipeline/core/i$b;->C(Lcom/facebook/imagepipeline/core/i$b;)Ls1/d;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static L(Lcom/facebook/imagepipeline/core/i$b;Lcom/facebook/imagepipeline/core/k;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "builder",
            "imagePipelineExperiments"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/facebook/imagepipeline/core/i$b;->D(Lcom/facebook/imagepipeline/core/i$b;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/facebook/imagepipeline/core/i$b;->D(Lcom/facebook/imagepipeline/core/i$b;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/k;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long p0, v0, v2

    if-nez p0, :cond_1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1b

    if-lt p0, v0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/k;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/k;->g()J

    const/4 p0, 0x0

    return p0
.end method

.method public static M(Landroid/content/Context;)Lcom/facebook/imagepipeline/core/i$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    new-instance v0, Lcom/facebook/imagepipeline/core/i$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/imagepipeline/core/i$b;-><init>(Landroid/content/Context;Lcom/facebook/imagepipeline/core/i$a;)V

    return-object v0
.end method

.method static N()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/facebook/imagepipeline/core/i$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/core/i$c;-><init>(Lcom/facebook/imagepipeline/core/i$a;)V

    sput-object v0, Lcom/facebook/imagepipeline/core/i;->K:Lcom/facebook/imagepipeline/core/i$c;

    return-void
.end method

.method private static O(Lt0/b;Lcom/facebook/imagepipeline/core/k;Lt0/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "webpBitmapFactory",
            "imagePipelineExperiments",
            "bitmapCreator"
        }
    .end annotation

    .line 1
    sput-object p0, Lt0/c;->d:Lt0/b;

    .line 2
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/k;->n()Lt0/b$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p0, p1}, Lt0/b;->b(Lt0/b$a;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    invoke-interface {p0, p2}, Lt0/b;->e(Lt0/a;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public A()Lcom/facebook/imagepipeline/cache/g;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->e:Lcom/facebook/imagepipeline/cache/g;

    return-object v0
.end method

.method public B()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/i;->z:Z

    return v0
.end method

.method public C()Lcom/facebook/imagepipeline/cache/q;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->k:Lcom/facebook/imagepipeline/cache/q;

    return-object v0
.end method

.method public D()Lcom/facebook/imagepipeline/cache/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/u<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->G:Lcom/facebook/imagepipeline/cache/u;

    return-object v0
.end method

.method public E()Lcom/facebook/common/memory/c;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->q:Lcom/facebook/common/memory/c;

    return-object v0
.end method

.method public F()Ll0/a;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->E:Ll0/a;

    return-object v0
.end method

.method public G()Lcom/facebook/imagepipeline/core/k;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->C:Lcom/facebook/imagepipeline/core/k;

    return-object v0
.end method

.method public H()Lcom/facebook/imagepipeline/core/f;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->j:Lcom/facebook/imagepipeline/core/f;

    return-object v0
.end method

.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lq1/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->y:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroid/graphics/Bitmap$Config;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->a:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public c()Lcom/facebook/common/internal/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/m<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->o:Lcom/facebook/common/internal/m;

    return-object v0
.end method

.method public d()Lcom/facebook/imagepipeline/producers/l0;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->s:Lcom/facebook/imagepipeline/producers/l0;

    return-object v0
.end method

.method public e()Lcom/facebook/imagepipeline/cache/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/u<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->H:Lcom/facebook/imagepipeline/cache/u;

    return-object v0
.end method

.method public f()Lcom/facebook/cache/disk/c;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->p:Lcom/facebook/cache/disk/c;

    return-object v0
.end method

.method public g()Lcom/facebook/imagepipeline/bitmaps/f;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->u:Lcom/facebook/imagepipeline/bitmaps/f;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->f:Landroid/content/Context;

    return-object v0
.end method

.method public h()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lq1/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->x:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/facebook/imagepipeline/cache/u$a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->c:Lcom/facebook/imagepipeline/cache/u$a;

    return-object v0
.end method

.method public j()Lcom/facebook/imagepipeline/decoder/d;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->w:Lcom/facebook/imagepipeline/decoder/d;

    return-object v0
.end method

.method public k()Lcom/facebook/cache/disk/c;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->A:Lcom/facebook/cache/disk/c;

    return-object v0
.end method

.method public l()Lcom/facebook/imagepipeline/cache/j$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/j$b<",
            "Lcom/facebook/cache/common/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->d:Lcom/facebook/imagepipeline/cache/j$b;

    return-object v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/i;->g:Z

    return v0
.end method

.method public n()Lcom/facebook/common/executors/g;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->I:Lcom/facebook/common/executors/g;

    return-object v0
.end method

.method public o()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->n:Ljava/lang/Integer;

    return-object v0
.end method

.method public p()Ls1/d;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->m:Ls1/d;

    return-object v0
.end method

.method public q()Lcom/facebook/imagepipeline/decoder/c;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->B:Lcom/facebook/imagepipeline/decoder/c;

    return-object v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/i;->D:Z

    return v0
.end method

.method public s()Lcom/facebook/common/internal/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/m<",
            "Lcom/facebook/imagepipeline/cache/v;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/common/internal/m;

    return-object v0
.end method

.method public t()Lcom/facebook/imagepipeline/decoder/b;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->l:Lcom/facebook/imagepipeline/decoder/b;

    return-object v0
.end method

.method public u()Lcom/facebook/common/internal/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/m<",
            "Lcom/facebook/imagepipeline/cache/v;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->i:Lcom/facebook/common/internal/m;

    return-object v0
.end method

.method public v()Lcom/facebook/imagepipeline/memory/e0;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->v:Lcom/facebook/imagepipeline/memory/e0;

    return-object v0
.end method

.method public w()I
    .locals 1

    iget v0, p0, Lcom/facebook/imagepipeline/core/i;->r:I

    return v0
.end method

.method public x()Lcom/facebook/imagepipeline/core/g;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->h:Lcom/facebook/imagepipeline/core/g;

    return-object v0
.end method

.method public y()Lm1/a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->F:Lm1/a;

    return-object v0
.end method

.method public z()Lcom/facebook/imagepipeline/cache/b;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->J:Lcom/facebook/imagepipeline/cache/b;

    return-object v0
.end method

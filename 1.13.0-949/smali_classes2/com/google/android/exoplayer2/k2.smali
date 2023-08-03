.class public Lcom/google/android/exoplayer2/k2;
.super Lcom/google/android/exoplayer2/e;
.source "SimpleExoPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/q;
.implements Lcom/google/android/exoplayer2/q$a;
.implements Lcom/google/android/exoplayer2/q$g;
.implements Lcom/google/android/exoplayer2/q$f;
.implements Lcom/google/android/exoplayer2/q$e;
.implements Lcom/google/android/exoplayer2/q$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/k2$d;,
        Lcom/google/android/exoplayer2/k2$c;,
        Lcom/google/android/exoplayer2/k2$b;
    }
.end annotation


# static fields
.field public static final i1:J = 0x7d0L

.field private static final j1:Ljava/lang/String; = "SimpleExoPlayer"


# instance fields
.field private final A0:Lcom/google/android/exoplayer2/b;

.field private final B0:Lcom/google/android/exoplayer2/d;

.field private final C0:Lcom/google/android/exoplayer2/n2;

.field private final D0:Lcom/google/android/exoplayer2/v2;

.field private final E0:Lcom/google/android/exoplayer2/w2;

.field private final F0:J

.field private G0:Lcom/google/android/exoplayer2/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private H0:Lcom/google/android/exoplayer2/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private I0:Landroid/media/AudioTrack;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private J0:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private K0:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private L0:Landroid/view/SurfaceHolder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private M0:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private N0:Z

.field private O0:Landroid/view/TextureView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private P0:I

.field private Q0:I

.field private R0:I

.field private S0:Lcom/google/android/exoplayer2/decoder/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private T0:Lcom/google/android/exoplayer2/decoder/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private U0:I

.field private V0:Lcom/google/android/exoplayer2/audio/e;

.field private W0:F

.field private X0:Z

.field private Y0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/a;",
            ">;"
        }
    .end annotation
.end field

.field private Z0:Lcom/google/android/exoplayer2/video/j;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private a1:Lcom/google/android/exoplayer2/video/spherical/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b1:Z

.field private c1:Z

.field private d1:Lcom/google/android/exoplayer2/util/PriorityTaskManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e1:Z

.field private f1:Z

.field private g1:Lcom/google/android/exoplayer2/device/b;

.field private h1:Lcom/google/android/exoplayer2/video/b0;

.field protected final o0:[Lcom/google/android/exoplayer2/e2;

.field private final p0:Lcom/google/android/exoplayer2/util/g;

.field private final q0:Landroid/content/Context;

.field private final r0:Lcom/google/android/exoplayer2/p0;

.field private final s0:Lcom/google/android/exoplayer2/k2$c;

.field private final t0:Lcom/google/android/exoplayer2/k2$d;

.field private final u0:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/video/n;",
            ">;"
        }
    .end annotation
.end field

.field private final v0:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/audio/i;",
            ">;"
        }
    .end annotation
.end field

.field private final w0:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/text/j;",
            ">;"
        }
    .end annotation
.end field

.field private final x0:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/metadata/e;",
            ">;"
        }
    .end annotation
.end field

.field private final y0:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/device/d;",
            ">;"
        }
    .end annotation
.end field

.field private final z0:Lcom/google/android/exoplayer2/analytics/h1;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/trackselection/o;Lcom/google/android/exoplayer2/source/j0;Lcom/google/android/exoplayer2/z0;Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/analytics/h1;ZLcom/google/android/exoplayer2/util/d;Landroid/os/Looper;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/k2$b;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/k2$b;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/i2;)V

    .line 2
    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/k2$b;->O(Lcom/google/android/exoplayer2/trackselection/o;)Lcom/google/android/exoplayer2/k2$b;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/k2$b;->I(Lcom/google/android/exoplayer2/source/j0;)Lcom/google/android/exoplayer2/k2$b;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p5}, Lcom/google/android/exoplayer2/k2$b;->G(Lcom/google/android/exoplayer2/z0;)Lcom/google/android/exoplayer2/k2$b;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p6}, Lcom/google/android/exoplayer2/k2$b;->B(Lcom/google/android/exoplayer2/upstream/e;)Lcom/google/android/exoplayer2/k2$b;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p7}, Lcom/google/android/exoplayer2/k2$b;->z(Lcom/google/android/exoplayer2/analytics/h1;)Lcom/google/android/exoplayer2/k2$b;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p8}, Lcom/google/android/exoplayer2/k2$b;->P(Z)Lcom/google/android/exoplayer2/k2$b;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p9}, Lcom/google/android/exoplayer2/k2$b;->C(Lcom/google/android/exoplayer2/util/d;)Lcom/google/android/exoplayer2/k2$b;

    move-result-object p1

    .line 9
    invoke-virtual {p1, p10}, Lcom/google/android/exoplayer2/k2$b;->H(Landroid/os/Looper;)Lcom/google/android/exoplayer2/k2$b;

    move-result-object p1

    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/k2;-><init>(Lcom/google/android/exoplayer2/k2$b;)V

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/exoplayer2/k2$b;)V
    .locals 33

    move-object/from16 v15, p0

    .line 11
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/e;-><init>()V

    .line 12
    new-instance v0, Lcom/google/android/exoplayer2/util/g;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/g;-><init>()V

    iput-object v0, v15, Lcom/google/android/exoplayer2/k2;->p0:Lcom/google/android/exoplayer2/util/g;

    .line 13
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/k2$b;->a(Lcom/google/android/exoplayer2/k2$b;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/exoplayer2/k2;->q0:Landroid/content/Context;

    .line 14
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/k2$b;->b(Lcom/google/android/exoplayer2/k2$b;)Lcom/google/android/exoplayer2/analytics/h1;

    move-result-object v7

    iput-object v7, v15, Lcom/google/android/exoplayer2/k2;->z0:Lcom/google/android/exoplayer2/analytics/h1;

    .line 15
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/k2$b;->m(Lcom/google/android/exoplayer2/k2$b;)Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    move-result-object v2

    iput-object v2, v15, Lcom/google/android/exoplayer2/k2;->d1:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 16
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/k2$b;->s(Lcom/google/android/exoplayer2/k2$b;)Lcom/google/android/exoplayer2/audio/e;

    move-result-object v2

    iput-object v2, v15, Lcom/google/android/exoplayer2/k2;->V0:Lcom/google/android/exoplayer2/audio/e;

    .line 17
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/k2$b;->t(Lcom/google/android/exoplayer2/k2$b;)I

    move-result v2

    iput v2, v15, Lcom/google/android/exoplayer2/k2;->P0:I

    .line 18
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/k2$b;->u(Lcom/google/android/exoplayer2/k2$b;)Z

    move-result v2

    iput-boolean v2, v15, Lcom/google/android/exoplayer2/k2;->X0:Z

    .line 19
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/k2$b;->v(Lcom/google/android/exoplayer2/k2$b;)J

    move-result-wide v2

    iput-wide v2, v15, Lcom/google/android/exoplayer2/k2;->F0:J

    .line 20
    new-instance v14, Lcom/google/android/exoplayer2/k2$c;

    const/4 v6, 0x0

    invoke-direct {v14, v15, v6}, Lcom/google/android/exoplayer2/k2$c;-><init>(Lcom/google/android/exoplayer2/k2;Lcom/google/android/exoplayer2/k2$a;)V

    iput-object v14, v15, Lcom/google/android/exoplayer2/k2;->s0:Lcom/google/android/exoplayer2/k2$c;

    .line 21
    new-instance v5, Lcom/google/android/exoplayer2/k2$d;

    invoke-direct {v5, v6}, Lcom/google/android/exoplayer2/k2$d;-><init>(Lcom/google/android/exoplayer2/k2$a;)V

    iput-object v5, v15, Lcom/google/android/exoplayer2/k2;->t0:Lcom/google/android/exoplayer2/k2$d;

    .line 22
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v2, v15, Lcom/google/android/exoplayer2/k2;->u0:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 23
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v2, v15, Lcom/google/android/exoplayer2/k2;->v0:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 24
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v2, v15, Lcom/google/android/exoplayer2/k2;->w0:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 25
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v2, v15, Lcom/google/android/exoplayer2/k2;->x0:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 26
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v2, v15, Lcom/google/android/exoplayer2/k2;->y0:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 27
    new-instance v4, Landroid/os/Handler;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/k2$b;->w(Lcom/google/android/exoplayer2/k2$b;)Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v4, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 28
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/k2$b;->c(Lcom/google/android/exoplayer2/k2$b;)Lcom/google/android/exoplayer2/i2;

    move-result-object v8

    move-object v9, v4

    move-object v10, v14

    move-object v11, v14

    move-object v12, v14

    move-object v13, v14

    invoke-interface/range {v8 .. v13}, Lcom/google/android/exoplayer2/i2;->a(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/z;Lcom/google/android/exoplayer2/audio/u;Lcom/google/android/exoplayer2/text/j;Lcom/google/android/exoplayer2/metadata/e;)[Lcom/google/android/exoplayer2/e2;

    move-result-object v2

    iput-object v2, v15, Lcom/google/android/exoplayer2/k2;->o0:[Lcom/google/android/exoplayer2/e2;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 29
    iput v3, v15, Lcom/google/android/exoplayer2/k2;->W0:F

    .line 30
    sget v3, Lcom/google/android/exoplayer2/util/z0;->a:I

    const/16 v8, 0x15

    const/4 v13, 0x0

    if-ge v3, v8, :cond_0

    .line 31
    invoke-direct {v15, v13}, Lcom/google/android/exoplayer2/k2;->D2(I)I

    move-result v1

    iput v1, v15, Lcom/google/android/exoplayer2/k2;->U0:I

    goto :goto_0

    .line 32
    :cond_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/i;->a(Landroid/content/Context;)I

    move-result v1

    iput v1, v15, Lcom/google/android/exoplayer2/k2;->U0:I

    .line 33
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/exoplayer2/k2;->Y0:Ljava/util/List;

    const/4 v11, 0x1

    .line 34
    iput-boolean v11, v15, Lcom/google/android/exoplayer2/k2;->b1:Z

    .line 35
    new-instance v1, Lcom/google/android/exoplayer2/v1$c$a;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/v1$c$a;-><init>()V

    const/16 v3, 0x8

    new-array v3, v3, [I

    const/16 v9, 0xf

    aput v9, v3, v13

    const/16 v9, 0x10

    aput v9, v3, v11

    const/16 v9, 0x11

    const/4 v12, 0x2

    aput v9, v3, v12

    const/16 v9, 0x12

    const/4 v10, 0x3

    aput v9, v3, v10

    const/16 v9, 0x13

    const/4 v8, 0x4

    aput v9, v3, v8

    const/4 v9, 0x5

    const/16 v17, 0x14

    aput v17, v3, v9

    const/4 v9, 0x6

    const/16 v16, 0x15

    aput v16, v3, v9

    const/16 v16, 0x16

    move-object/from16 v18, v0

    const/4 v0, 0x7

    aput v16, v3, v0

    .line 36
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/v1$c$a;->c([I)Lcom/google/android/exoplayer2/v1$c$a;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/v1$c$a;->e()Lcom/google/android/exoplayer2/v1$c;

    move-result-object v17

    .line 38
    new-instance v3, Lcom/google/android/exoplayer2/p0;

    .line 39
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/k2$b;->d(Lcom/google/android/exoplayer2/k2$b;)Lcom/google/android/exoplayer2/trackselection/o;

    move-result-object v16

    .line 40
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/k2$b;->e(Lcom/google/android/exoplayer2/k2$b;)Lcom/google/android/exoplayer2/source/j0;

    move-result-object v19

    .line 41
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/k2$b;->f(Lcom/google/android/exoplayer2/k2$b;)Lcom/google/android/exoplayer2/z0;

    move-result-object v20

    .line 42
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/k2$b;->g(Lcom/google/android/exoplayer2/k2$b;)Lcom/google/android/exoplayer2/upstream/e;

    move-result-object v21

    .line 43
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/k2$b;->h(Lcom/google/android/exoplayer2/k2$b;)Z

    move-result v22

    .line 44
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/k2$b;->i(Lcom/google/android/exoplayer2/k2$b;)Lcom/google/android/exoplayer2/j2;

    move-result-object v23

    .line 45
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/k2$b;->j(Lcom/google/android/exoplayer2/k2$b;)Lcom/google/android/exoplayer2/y0;

    move-result-object v24

    .line 46
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/k2$b;->k(Lcom/google/android/exoplayer2/k2$b;)J

    move-result-wide v25

    .line 47
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/k2$b;->l(Lcom/google/android/exoplayer2/k2$b;)Z

    move-result v27

    .line 48
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/k2$b;->n(Lcom/google/android/exoplayer2/k2$b;)Lcom/google/android/exoplayer2/util/d;

    move-result-object v28

    .line 49
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/k2$b;->w(Lcom/google/android/exoplayer2/k2$b;)Landroid/os/Looper;

    move-result-object v29
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v1, v3

    move-object v0, v3

    move-object/from16 v3, v16

    move-object/from16 v30, v4

    move-object/from16 v4, v19

    move-object/from16 v31, v5

    move-object/from16 v5, v20

    move-object/from16 v19, v6

    move-object/from16 v6, v21

    move/from16 v8, v22

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    move-wide/from16 v11, v25

    const/16 v20, 0x0

    move/from16 v13, v27

    move-object/from16 v32, v14

    move-object/from16 v14, v28

    move-object/from16 v15, v29

    move-object/from16 v16, p0

    :try_start_1
    invoke-direct/range {v1 .. v17}, Lcom/google/android/exoplayer2/p0;-><init>([Lcom/google/android/exoplayer2/e2;Lcom/google/android/exoplayer2/trackselection/o;Lcom/google/android/exoplayer2/source/j0;Lcom/google/android/exoplayer2/z0;Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/analytics/h1;ZLcom/google/android/exoplayer2/j2;Lcom/google/android/exoplayer2/y0;JZLcom/google/android/exoplayer2/util/d;Landroid/os/Looper;Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/v1$c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v1, p0

    :try_start_2
    iput-object v0, v1, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    move-object/from16 v2, v32

    .line 50
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/p0;->c1(Lcom/google/android/exoplayer2/v1$f;)V

    .line 51
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/p0;->f0(Lcom/google/android/exoplayer2/q$b;)V

    .line 52
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/k2$b;->o(Lcom/google/android/exoplayer2/k2$b;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    .line 53
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/k2$b;->o(Lcom/google/android/exoplayer2/k2$b;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/p0;->q2(J)V

    .line 54
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/b;

    .line 55
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/k2$b;->a(Lcom/google/android/exoplayer2/k2$b;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v4, v30

    invoke-direct {v0, v3, v4, v2}, Lcom/google/android/exoplayer2/b;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/b$b;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/k2;->A0:Lcom/google/android/exoplayer2/b;

    .line 56
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/k2$b;->p(Lcom/google/android/exoplayer2/k2$b;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/b;->b(Z)V

    .line 57
    new-instance v0, Lcom/google/android/exoplayer2/d;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/k2$b;->a(Lcom/google/android/exoplayer2/k2$b;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v4, v2}, Lcom/google/android/exoplayer2/d;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/d$c;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/k2;->B0:Lcom/google/android/exoplayer2/d;

    .line 58
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/k2$b;->q(Lcom/google/android/exoplayer2/k2$b;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v6, v1, Lcom/google/android/exoplayer2/k2;->V0:Lcom/google/android/exoplayer2/audio/e;

    goto :goto_1

    :cond_2
    move-object/from16 v6, v19

    :goto_1
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/d;->n(Lcom/google/android/exoplayer2/audio/e;)V

    .line 59
    new-instance v0, Lcom/google/android/exoplayer2/n2;

    .line 60
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/k2$b;->a(Lcom/google/android/exoplayer2/k2$b;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v4, v2}, Lcom/google/android/exoplayer2/n2;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/n2$b;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/k2;->C0:Lcom/google/android/exoplayer2/n2;

    .line 61
    iget-object v2, v1, Lcom/google/android/exoplayer2/k2;->V0:Lcom/google/android/exoplayer2/audio/e;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/e;->c:I

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/z0;->m0(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/n2;->m(I)V

    .line 62
    new-instance v2, Lcom/google/android/exoplayer2/v2;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/k2$b;->a(Lcom/google/android/exoplayer2/k2$b;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/v2;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/google/android/exoplayer2/k2;->D0:Lcom/google/android/exoplayer2/v2;

    .line 63
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/k2$b;->r(Lcom/google/android/exoplayer2/k2$b;)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v13, 0x1

    goto :goto_2

    :cond_3
    const/4 v13, 0x0

    :goto_2
    invoke-virtual {v2, v13}, Lcom/google/android/exoplayer2/v2;->a(Z)V

    .line 64
    new-instance v2, Lcom/google/android/exoplayer2/w2;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/k2$b;->a(Lcom/google/android/exoplayer2/k2$b;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/w2;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/google/android/exoplayer2/k2;->E0:Lcom/google/android/exoplayer2/w2;

    .line 65
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/k2$b;->r(Lcom/google/android/exoplayer2/k2$b;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    const/4 v13, 0x1

    goto :goto_3

    :cond_4
    const/4 v13, 0x0

    :goto_3
    invoke-virtual {v2, v13}, Lcom/google/android/exoplayer2/w2;->a(Z)V

    .line 66
    invoke-static {v0}, Lcom/google/android/exoplayer2/k2;->w2(Lcom/google/android/exoplayer2/n2;)Lcom/google/android/exoplayer2/device/b;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/k2;->g1:Lcom/google/android/exoplayer2/device/b;

    .line 67
    sget-object v0, Lcom/google/android/exoplayer2/video/b0;->i:Lcom/google/android/exoplayer2/video/b0;

    iput-object v0, v1, Lcom/google/android/exoplayer2/k2;->h1:Lcom/google/android/exoplayer2/video/b0;

    .line 68
    iget v0, v1, Lcom/google/android/exoplayer2/k2;->U0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x66

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2, v0}, Lcom/google/android/exoplayer2/k2;->I2(IILjava/lang/Object;)V

    .line 69
    iget v0, v1, Lcom/google/android/exoplayer2/k2;->U0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v4, v2, v0}, Lcom/google/android/exoplayer2/k2;->I2(IILjava/lang/Object;)V

    .line 70
    iget-object v0, v1, Lcom/google/android/exoplayer2/k2;->V0:Lcom/google/android/exoplayer2/audio/e;

    const/4 v2, 0x3

    invoke-direct {v1, v3, v2, v0}, Lcom/google/android/exoplayer2/k2;->I2(IILjava/lang/Object;)V

    .line 71
    iget v0, v1, Lcom/google/android/exoplayer2/k2;->P0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x4

    invoke-direct {v1, v4, v2, v0}, Lcom/google/android/exoplayer2/k2;->I2(IILjava/lang/Object;)V

    const/16 v0, 0x65

    .line 72
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/k2;->X0:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v3, v0, v2}, Lcom/google/android/exoplayer2/k2;->I2(IILjava/lang/Object;)V

    move-object/from16 v0, v31

    const/4 v2, 0x6

    .line 73
    invoke-direct {v1, v4, v2, v0}, Lcom/google/android/exoplayer2/k2;->I2(IILjava/lang/Object;)V

    const/4 v3, 0x7

    .line 74
    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/exoplayer2/k2;->I2(IILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/exoplayer2/util/g;->f()Z

    return-void

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v15

    :goto_4
    iget-object v2, v1, Lcom/google/android/exoplayer2/k2;->p0:Lcom/google/android/exoplayer2/util/g;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/g;->f()Z

    .line 76
    throw v0
.end method

.method private static A2(ZI)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    return v0
.end method

.method private D2(I)I
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->I0:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->I0:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/android/exoplayer2/k2;->I0:Landroid/media/AudioTrack;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->I0:Landroid/media/AudioTrack;

    if-nez v0, :cond_1

    const/16 v3, 0xfa0

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x2

    .line 6
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v2, 0x3

    const/4 v7, 0x0

    move-object v1, v0

    move v8, p1

    invoke-direct/range {v1 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/k2;->I0:Landroid/media/AudioTrack;

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/k2;->I0:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result p1

    return p1
.end method

.method private E2(II)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/k2;->Q0:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/k2;->R0:I

    if-eq p2, v0, :cond_1

    .line 2
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/k2;->Q0:I

    .line 3
    iput p2, p0, Lcom/google/android/exoplayer2/k2;->R0:I

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->z0:Lcom/google/android/exoplayer2/analytics/h1;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->t(II)V

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->u0:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/video/n;

    .line 6
    invoke-interface {v1, p1, p2}, Lcom/google/android/exoplayer2/video/n;->t(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private F2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->z0:Lcom/google/android/exoplayer2/analytics/h1;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/k2;->X0:Z

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/analytics/h1;->a(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->v0:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/audio/i;

    .line 3
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/k2;->X0:Z

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/audio/i;->a(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private H2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->M0:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    iget-object v2, p0, Lcom/google/android/exoplayer2/k2;->t0:Lcom/google/android/exoplayer2/k2$d;

    .line 3
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/p0;->G1(Lcom/google/android/exoplayer2/z1$b;)Lcom/google/android/exoplayer2/z1;

    move-result-object v0

    const/16 v2, 0x2710

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/z1;->u(I)Lcom/google/android/exoplayer2/z1;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/z1;->r(Ljava/lang/Object;)Lcom/google/android/exoplayer2/z1;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/z1;->n()Lcom/google/android/exoplayer2/z1;

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->M0:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    iget-object v2, p0, Lcom/google/android/exoplayer2/k2;->s0:Lcom/google/android/exoplayer2/k2$c;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->i(Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$b;)V

    .line 8
    iput-object v1, p0, Lcom/google/android/exoplayer2/k2;->M0:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->O0:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/k2;->s0:Lcom/google/android/exoplayer2/k2$c;

    if-eq v0, v2, :cond_1

    const-string v0, "SimpleExoPlayer"

    const-string v2, "SurfaceTextureListener already unset or replaced."

    .line 11
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/w;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->O0:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 13
    :goto_0
    iput-object v1, p0, Lcom/google/android/exoplayer2/k2;->O0:Landroid/view/TextureView;

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->L0:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_3

    .line 15
    iget-object v2, p0, Lcom/google/android/exoplayer2/k2;->s0:Lcom/google/android/exoplayer2/k2$c;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 16
    iput-object v1, p0, Lcom/google/android/exoplayer2/k2;->L0:Landroid/view/SurfaceHolder;

    :cond_3
    return-void
.end method

.method private I2(IILjava/lang/Object;)V
    .locals 5
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->o0:[Lcom/google/android/exoplayer2/e2;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-interface {v3}, Lcom/google/android/exoplayer2/e2;->getTrackType()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 3
    iget-object v4, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/p0;->G1(Lcom/google/android/exoplayer2/z1$b;)Lcom/google/android/exoplayer2/z1;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/android/exoplayer2/z1;->u(I)Lcom/google/android/exoplayer2/z1;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/google/android/exoplayer2/z1;->r(Ljava/lang/Object;)Lcom/google/android/exoplayer2/z1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/z1;->n()Lcom/google/android/exoplayer2/z1;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private J2()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/k2;->W0:F

    iget-object v1, p0, Lcom/google/android/exoplayer2/k2;->B0:Lcom/google/android/exoplayer2/d;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/d;->h()F

    move-result v1

    mul-float v0, v0, v1

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/exoplayer2/k2;->I2(IILjava/lang/Object;)V

    return-void
.end method

.method private M2(Landroid/view/SurfaceHolder;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/k2;->N0:Z

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/k2;->L0:Landroid/view/SurfaceHolder;

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/k2;->s0:Lcom/google/android/exoplayer2/k2$c;

    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/k2;->L0:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/k2;->L0:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/k2;->E2(II)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0, v0, v0}, Lcom/google/android/exoplayer2/k2;->E2(II)V

    :goto_0
    return-void
.end method

.method private O2(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/k2;->Q2(Ljava/lang/Object;)V

    .line 3
    iput-object v0, p0, Lcom/google/android/exoplayer2/k2;->K0:Landroid/view/Surface;

    return-void
.end method

.method static synthetic Q1(Lcom/google/android/exoplayer2/k2;Lcom/google/android/exoplayer2/decoder/d;)Lcom/google/android/exoplayer2/decoder/d;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/k2;->S0:Lcom/google/android/exoplayer2/decoder/d;

    return-object p1
.end method

.method private Q2(Ljava/lang/Object;)V
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/k2;->o0:[Lcom/google/android/exoplayer2/e2;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 3
    invoke-interface {v5}, Lcom/google/android/exoplayer2/e2;->getTrackType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 4
    iget-object v6, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    .line 5
    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/p0;->G1(Lcom/google/android/exoplayer2/z1$b;)Lcom/google/android/exoplayer2/z1;

    move-result-object v5

    const/4 v6, 0x1

    .line 6
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/z1;->u(I)Lcom/google/android/exoplayer2/z1;

    move-result-object v5

    .line 7
    invoke-virtual {v5, p1}, Lcom/google/android/exoplayer2/z1;->r(Ljava/lang/Object;)Lcom/google/android/exoplayer2/z1;

    move-result-object v5

    .line 8
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/z1;->n()Lcom/google/android/exoplayer2/z1;

    move-result-object v5

    .line 9
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/k2;->J0:Ljava/lang/Object;

    if-eqz v1, :cond_3

    if-eq v1, p1, :cond_3

    .line 11
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/z1;

    .line 12
    iget-wide v4, p0, Lcom/google/android/exoplayer2/k2;->F0:J

    invoke-virtual {v1, v4, v5}, Lcom/google/android/exoplayer2/z1;->b(J)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 13
    :catch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    new-instance v1, Lcom/google/android/exoplayer2/ExoTimeoutException;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ExoTimeoutException;-><init>(I)V

    .line 14
    invoke-static {v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v1

    .line 15
    invoke-virtual {v0, v3, v1}, Lcom/google/android/exoplayer2/p0;->e3(ZLcom/google/android/exoplayer2/ExoPlaybackException;)V

    goto :goto_2

    .line 16
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 17
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->J0:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/exoplayer2/k2;->K0:Landroid/view/Surface;

    if-ne v0, v1, :cond_3

    .line 18
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/google/android/exoplayer2/k2;->K0:Landroid/view/Surface;

    .line 20
    :cond_3
    iput-object p1, p0, Lcom/google/android/exoplayer2/k2;->J0:Ljava/lang/Object;

    return-void
.end method

.method static synthetic R1(Lcom/google/android/exoplayer2/k2;)Lcom/google/android/exoplayer2/analytics/h1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/k2;->z0:Lcom/google/android/exoplayer2/analytics/h1;

    return-object p0
.end method

.method static synthetic S1(Lcom/google/android/exoplayer2/k2;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/k2;->G0:Lcom/google/android/exoplayer2/Format;

    return-object p1
.end method

.method private S2(ZII)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eq p2, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {p2, p1, v0, p3}, Lcom/google/android/exoplayer2/p0;->d3(ZII)V

    return-void
.end method

.method static synthetic T1(Lcom/google/android/exoplayer2/k2;Lcom/google/android/exoplayer2/video/b0;)Lcom/google/android/exoplayer2/video/b0;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/k2;->h1:Lcom/google/android/exoplayer2/video/b0;

    return-object p1
.end method

.method private T2()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k2;->c()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k2;->v1()Z

    move-result v0

    .line 4
    iget-object v3, p0, Lcom/google/android/exoplayer2/k2;->D0:Lcom/google/android/exoplayer2/v2;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k2;->Q0()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/v2;->b(Z)V

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->E0:Lcom/google/android/exoplayer2/w2;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k2;->Q0()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/w2;->b(Z)V

    goto :goto_2

    .line 6
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->D0:Lcom/google/android/exoplayer2/v2;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/v2;->b(Z)V

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->E0:Lcom/google/android/exoplayer2/w2;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/w2;->b(Z)V

    :goto_2
    return-void
.end method

.method static synthetic U1(Lcom/google/android/exoplayer2/k2;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/k2;->u0:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method private U2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->p0:Lcom/google/android/exoplayer2/util/g;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/g;->c()V

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k2;->B0()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k2;->B0()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Player is accessed on the wrong thread.\nCurrent thread: \'%s\'\nExpected thread: \'%s\'\nSee https://exoplayer.dev/issues/player-accessed-on-wrong-thread"

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/z0;->I(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/k2;->b1:Z

    if-nez v1, :cond_1

    .line 6
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/k2;->c1:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    :goto_0
    const-string v3, "SimpleExoPlayer"

    invoke-static {v3, v0, v1}, Lcom/google/android/exoplayer2/util/w;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/k2;->c1:Z

    goto :goto_1

    .line 8
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic V1(Lcom/google/android/exoplayer2/k2;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/k2;->J0:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic W1(Lcom/google/android/exoplayer2/k2;Lcom/google/android/exoplayer2/decoder/d;)Lcom/google/android/exoplayer2/decoder/d;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/k2;->T0:Lcom/google/android/exoplayer2/decoder/d;

    return-object p1
.end method

.method static synthetic X1(Lcom/google/android/exoplayer2/k2;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/k2;->H0:Lcom/google/android/exoplayer2/Format;

    return-object p1
.end method

.method static synthetic Y1(Lcom/google/android/exoplayer2/k2;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/k2;->X0:Z

    return p0
.end method

.method static synthetic Z1(Lcom/google/android/exoplayer2/k2;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/k2;->X0:Z

    return p1
.end method

.method static synthetic a2(Lcom/google/android/exoplayer2/k2;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->F2()V

    return-void
.end method

.method static synthetic b2(Lcom/google/android/exoplayer2/k2;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/k2;->Y0:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c2(Lcom/google/android/exoplayer2/k2;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/k2;->w0:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic d2(Lcom/google/android/exoplayer2/k2;)Lcom/google/android/exoplayer2/p0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    return-object p0
.end method

.method static synthetic e2(Lcom/google/android/exoplayer2/k2;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/k2;->x0:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic f2(Lcom/google/android/exoplayer2/k2;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/k2;->N0:Z

    return p0
.end method

.method static synthetic g2(Lcom/google/android/exoplayer2/k2;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/k2;->Q2(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic h2(Lcom/google/android/exoplayer2/k2;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/k2;->E2(II)V

    return-void
.end method

.method static synthetic i2(Lcom/google/android/exoplayer2/k2;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/k2;->O2(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method static synthetic j2(Lcom/google/android/exoplayer2/k2;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->J2()V

    return-void
.end method

.method static synthetic k2(ZI)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/k2;->A2(ZI)I

    move-result p0

    return p0
.end method

.method static synthetic l2(Lcom/google/android/exoplayer2/k2;ZII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/k2;->S2(ZII)V

    return-void
.end method

.method static synthetic m2(Lcom/google/android/exoplayer2/k2;)Lcom/google/android/exoplayer2/n2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/k2;->C0:Lcom/google/android/exoplayer2/n2;

    return-object p0
.end method

.method static synthetic n2(Lcom/google/android/exoplayer2/n2;)Lcom/google/android/exoplayer2/device/b;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/k2;->w2(Lcom/google/android/exoplayer2/n2;)Lcom/google/android/exoplayer2/device/b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic o2(Lcom/google/android/exoplayer2/k2;)Lcom/google/android/exoplayer2/device/b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/k2;->g1:Lcom/google/android/exoplayer2/device/b;

    return-object p0
.end method

.method static synthetic p2(Lcom/google/android/exoplayer2/k2;Lcom/google/android/exoplayer2/device/b;)Lcom/google/android/exoplayer2/device/b;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/k2;->g1:Lcom/google/android/exoplayer2/device/b;

    return-object p1
.end method

.method static synthetic q2(Lcom/google/android/exoplayer2/k2;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/k2;->y0:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic r2(Lcom/google/android/exoplayer2/k2;)Lcom/google/android/exoplayer2/util/PriorityTaskManager;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/k2;->d1:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    return-object p0
.end method

.method static synthetic s2(Lcom/google/android/exoplayer2/k2;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/k2;->e1:Z

    return p0
.end method

.method static synthetic t2(Lcom/google/android/exoplayer2/k2;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/k2;->e1:Z

    return p1
.end method

.method static synthetic u2(Lcom/google/android/exoplayer2/k2;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->T2()V

    return-void
.end method

.method private static w2(Lcom/google/android/exoplayer2/n2;)Lcom/google/android/exoplayer2/device/b;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/device/b;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/n2;->e()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/n2;->d()I

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lcom/google/android/exoplayer2/device/b;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public A()Lcom/google/android/exoplayer2/video/b0;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->h1:Lcom/google/android/exoplayer2/video/b0;

    return-object v0
.end method

.method public A0()Lcom/google/android/exoplayer2/s2;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p0;->A0()Lcom/google/android/exoplayer2/s2;

    move-result-object v0

    return-object v0
.end method

.method public B()F
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/k2;->W0:F

    return v0
.end method

.method public B0()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p0;->B0()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public B1(Lcom/google/android/exoplayer2/text/j;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->w0:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public B2()Lcom/google/android/exoplayer2/decoder/d;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->S0:Lcom/google/android/exoplayer2/decoder/d;

    return-object v0
.end method

.method public C()Lcom/google/android/exoplayer2/device/b;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->g1:Lcom/google/android/exoplayer2/device/b;

    return-object v0
.end method

.method public C0()Lcom/google/android/exoplayer2/trackselection/m;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p0;->C0()Lcom/google/android/exoplayer2/trackselection/m;

    move-result-object v0

    return-object v0
.end method

.method public C1(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/p0;->C1(III)V

    return-void
.end method

.method public C2()Lcom/google/android/exoplayer2/Format;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->G0:Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method

.method public D()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->H2()V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/k2;->Q2(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0, v0}, Lcom/google/android/exoplayer2/k2;->E2(II)V

    return-void
.end method

.method public D0(I)I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/p0;->D0(I)I

    move-result p1

    return p1
.end method

.method public E0(Lcom/google/android/exoplayer2/video/n;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->u0:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public E1(Lcom/google/android/exoplayer2/device/d;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->y0:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public F()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/k2;->X0:Z

    return v0
.end method

.method public F0()V
    .locals 3

    new-instance v0, Lcom/google/android/exoplayer2/audio/y;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/y;-><init>(IF)V

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/k2;->u(Lcom/google/android/exoplayer2/audio/y;)V

    return-void
.end method

.method public F1()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/k2;->P0:I

    return v0
.end method

.method public G(Landroid/view/SurfaceView;)V
    .locals 0
    .param p1    # Landroid/view/SurfaceView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/k2;->v(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public G0(Lcom/google/android/exoplayer2/audio/e;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/k2;->f1:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->V0:Lcom/google/android/exoplayer2/audio/e;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/z0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/k2;->V0:Lcom/google/android/exoplayer2/audio/e;

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 5
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/k2;->I2(IILjava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->C0:Lcom/google/android/exoplayer2/n2;

    iget v1, p1, Lcom/google/android/exoplayer2/audio/e;->c:I

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/z0;->m0(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/n2;->m(I)V

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->z0:Lcom/google/android/exoplayer2/analytics/h1;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/analytics/h1;->A(Lcom/google/android/exoplayer2/audio/e;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->v0:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/audio/i;

    .line 9
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/audio/i;->A(Lcom/google/android/exoplayer2/audio/e;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->B0:Lcom/google/android/exoplayer2/d;

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/d;->n(Lcom/google/android/exoplayer2/audio/e;)V

    .line 11
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k2;->Q0()Z

    move-result p1

    .line 12
    iget-object p2, p0, Lcom/google/android/exoplayer2/k2;->B0:Lcom/google/android/exoplayer2/d;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k2;->c()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/google/android/exoplayer2/d;->q(ZI)I

    move-result p2

    .line 13
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/k2;->A2(ZI)I

    move-result v0

    .line 14
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/k2;->S2(ZII)V

    return-void
.end method

.method public G1(Lcom/google/android/exoplayer2/z1$b;)Lcom/google/android/exoplayer2/z1;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/p0;->G1(Lcom/google/android/exoplayer2/z1$b;)Lcom/google/android/exoplayer2/z1;

    move-result-object p1

    return-object p1
.end method

.method public G2(Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->z0:Lcom/google/android/exoplayer2/analytics/h1;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/analytics/h1;->O2(Lcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method public H()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->C0:Lcom/google/android/exoplayer2/n2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n2;->j()Z

    move-result v0

    return v0
.end method

.method public H0()Lcom/google/android/exoplayer2/q$f;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    return-object p0
.end method

.method public H1()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p0;->H1()Z

    move-result v0

    return v0
.end method

.method public I(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->C0:Lcom/google/android/exoplayer2/n2;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/n2;->n(I)V

    return-void
.end method

.method public I0(Lcom/google/android/exoplayer2/source/z;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/p0;->I0(Lcom/google/android/exoplayer2/source/z;J)V

    return-void
.end method

.method public I1()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p0;->I1()J

    move-result-wide v0

    return-wide v0
.end method

.method public J(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/k2;->X0:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/k2;->X0:Z

    const/4 v0, 0x1

    const/16 v1, 0x65

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/k2;->I2(IILjava/lang/Object;)V

    .line 5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->F2()V

    return-void
.end method

.method public J0(Lcom/google/android/exoplayer2/source/z;ZZ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/k2;->p0(Ljava/util/List;Z)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k2;->a()V

    return-void
.end method

.method public J1(Lcom/google/android/exoplayer2/metadata/e;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->x0:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public K()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p0;->K()Z

    move-result v0

    return v0
.end method

.method public K0()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p0;->K0()Z

    move-result v0

    return v0
.end method

.method public K1(Lcom/google/android/exoplayer2/source/z;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/p0;->K1(Lcom/google/android/exoplayer2/source/z;Z)V

    return-void
.end method

.method public K2(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/k2;->f1:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->A0:Lcom/google/android/exoplayer2/b;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/b;->b(Z)V

    return-void
.end method

.method public L()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p0;->L()J

    move-result-wide v0

    return-wide v0
.end method

.method public L1()Lcom/google/android/exoplayer2/f1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p0;->L1()Lcom/google/android/exoplayer2/f1;

    move-result-object v0

    return-object v0
.end method

.method public L2(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/k2;->R2(I)V

    return-void
.end method

.method public M0(Lcom/google/android/exoplayer2/video/spherical/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/k2;->a1:Lcom/google/android/exoplayer2/video/spherical/a;

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/k2;->t0:Lcom/google/android/exoplayer2/k2$d;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/p0;->G1(Lcom/google/android/exoplayer2/z1$b;)Lcom/google/android/exoplayer2/z1;

    move-result-object v0

    const/4 v1, 0x7

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/z1;->u(I)Lcom/google/android/exoplayer2/z1;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/z1;->r(Ljava/lang/Object;)Lcom/google/android/exoplayer2/z1;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/z1;->n()Lcom/google/android/exoplayer2/z1;

    return-void
.end method

.method public N0()Lcom/google/android/exoplayer2/v1$c;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p0;->N0()Lcom/google/android/exoplayer2/v1$c;

    move-result-object v0

    return-object v0
.end method

.method public N2(Lcom/google/android/exoplayer2/util/PriorityTaskManager;)V
    .locals 2
    .param p1    # Lcom/google/android/exoplayer2/util/PriorityTaskManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->d1:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/z0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/k2;->e1:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->d1:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->e(I)V

    :cond_1
    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k2;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->a(I)V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/k2;->e1:Z

    goto :goto_0

    .line 8
    :cond_2
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/k2;->e1:Z

    .line 9
    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/k2;->d1:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    return-void
.end method

.method public O()Lcom/google/android/exoplayer2/util/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p0;->O()Lcom/google/android/exoplayer2/util/d;

    move-result-object v0

    return-object v0
.end method

.method public P()Lcom/google/android/exoplayer2/trackselection/o;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p0;->P()Lcom/google/android/exoplayer2/trackselection/o;

    move-result-object v0

    return-object v0
.end method

.method public P0(Lcom/google/android/exoplayer2/video/j;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/k2;->Z0:Lcom/google/android/exoplayer2/video/j;

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/k2;->t0:Lcom/google/android/exoplayer2/k2$d;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/p0;->G1(Lcom/google/android/exoplayer2/z1$b;)Lcom/google/android/exoplayer2/z1;

    move-result-object v0

    const/4 v1, 0x6

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/z1;->u(I)Lcom/google/android/exoplayer2/z1;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/z1;->r(Ljava/lang/Object;)Lcom/google/android/exoplayer2/z1;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/z1;->n()Lcom/google/android/exoplayer2/z1;

    return-void
.end method

.method public P2(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/k2;->b1:Z

    return-void
.end method

.method public Q(Lcom/google/android/exoplayer2/source/z;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/p0;->Q(Lcom/google/android/exoplayer2/source/z;)V

    return-void
.end method

.method public Q0()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p0;->Q0()Z

    move-result v0

    return v0
.end method

.method public R0(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/p0;->R0(Z)V

    return-void
.end method

.method public R2(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/k2;->D0:Lcom/google/android/exoplayer2/v2;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/v2;->a(Z)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/k2;->E0:Lcom/google/android/exoplayer2/w2;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/w2;->a(Z)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/k2;->D0:Lcom/google/android/exoplayer2/v2;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/v2;->a(Z)V

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/k2;->E0:Lcom/google/android/exoplayer2/w2;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/w2;->a(Z)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/k2;->D0:Lcom/google/android/exoplayer2/v2;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/v2;->a(Z)V

    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/k2;->E0:Lcom/google/android/exoplayer2/w2;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/w2;->a(Z)V

    :goto_0
    return-void
.end method

.method public S()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p0;->S()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public S0(Lcom/google/android/exoplayer2/j2;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/j2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/p0;->S0(Lcom/google/android/exoplayer2/j2;)V

    return-void
.end method

.method public T0()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p0;->T0()I

    move-result v0

    return v0
.end method

.method public V(Lcom/google/android/exoplayer2/source/z;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/p0;->V(Lcom/google/android/exoplayer2/source/z;)V

    return-void
.end method

.method public V0(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/z;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/p0;->V0(ILjava/util/List;)V

    return-void
.end method

.method public W(Lcom/google/android/exoplayer2/v1$h;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/k2;->w1(Lcom/google/android/exoplayer2/audio/i;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/k2;->E0(Lcom/google/android/exoplayer2/video/n;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/k2;->g1(Lcom/google/android/exoplayer2/text/j;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/k2;->n0(Lcom/google/android/exoplayer2/metadata/e;)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/k2;->E1(Lcom/google/android/exoplayer2/device/d;)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/k2;->g0(Lcom/google/android/exoplayer2/v1$f;)V

    return-void
.end method

.method public W0(Lcom/google/android/exoplayer2/video/spherical/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->a1:Lcom/google/android/exoplayer2/video/spherical/a;

    if-eq v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->t0:Lcom/google/android/exoplayer2/k2$d;

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/p0;->G1(Lcom/google/android/exoplayer2/z1$b;)Lcom/google/android/exoplayer2/z1;

    move-result-object p1

    const/4 v0, 0x7

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/z1;->u(I)Lcom/google/android/exoplayer2/z1;

    move-result-object p1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/z1;->r(Ljava/lang/Object;)Lcom/google/android/exoplayer2/z1;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/z1;->n()Lcom/google/android/exoplayer2/z1;

    return-void
.end method

.method public Y(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/b1;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/p0;->Y(Ljava/util/List;Z)V

    return-void
.end method

.method public Y0()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p0;->Y0()I

    move-result v0

    return v0
.end method

.method public Z(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/p0;->Z(Z)V

    return-void
.end method

.method public a()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k2;->Q0()Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/k2;->B0:Lcom/google/android/exoplayer2/d;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/d;->q(ZI)I

    move-result v1

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/k2;->A2(ZI)I

    move-result v2

    .line 5
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/k2;->S2(ZII)V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p0;->a()V

    return-void
.end method

.method public a0(ILcom/google/android/exoplayer2/source/z;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/p0;->a0(ILcom/google/android/exoplayer2/source/z;)V

    return-void
.end method

.method public a1(Lcom/google/android/exoplayer2/device/d;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->y0:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p0;->b()Z

    move-result v0

    return v0
.end method

.method public b1(Lcom/google/android/exoplayer2/audio/i;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->v0:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p0;->c()I

    move-result v0

    return v0
.end method

.method public c1(Lcom/google/android/exoplayer2/v1$f;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/p0;->c1(Lcom/google/android/exoplayer2/v1$f;)V

    return-void
.end method

.method public d1()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p0;->d1()I

    move-result v0

    return v0
.end method

.method public e()Lcom/google/android/exoplayer2/t1;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p0;->e()Lcom/google/android/exoplayer2/t1;

    move-result-object v0

    return-object v0
.end method

.method public f(F)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/z0;->s(FFF)F

    move-result p1

    .line 3
    iget v0, p0, Lcom/google/android/exoplayer2/k2;->W0:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/k2;->W0:F

    .line 5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->J2()V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->z0:Lcom/google/android/exoplayer2/analytics/h1;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/analytics/h1;->w(F)V

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->v0:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/audio/i;

    .line 8
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/audio/i;->w(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public f0(Lcom/google/android/exoplayer2/q$b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/p0;->f0(Lcom/google/android/exoplayer2/q$b;)V

    return-void
.end method

.method public f1(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/z;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/p0;->f1(Ljava/util/List;)V

    return-void
.end method

.method public g(Lcom/google/android/exoplayer2/t1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/p0;->g(Lcom/google/android/exoplayer2/t1;)V

    return-void
.end method

.method public g0(Lcom/google/android/exoplayer2/v1$f;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/p0;->g0(Lcom/google/android/exoplayer2/v1$f;)V

    return-void
.end method

.method public g1(Lcom/google/android/exoplayer2/text/j;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->w0:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAudioAttributes()Lcom/google/android/exoplayer2/audio/e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->V0:Lcom/google/android/exoplayer2/audio/e;

    return-object v0
.end method

.method public getAudioSessionId()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/k2;->U0:I

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p0;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p0;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public h(Landroid/view/Surface;)V
    .locals 0
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->H2()V

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/k2;->Q2(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 4
    :goto_0
    invoke-direct {p0, p1, p1}, Lcom/google/android/exoplayer2/k2;->E2(II)V

    return-void
.end method

.method public h0(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/z;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/p0;->h0(Ljava/util/List;)V

    return-void
.end method

.method public i(Landroid/view/Surface;)V
    .locals 1
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->J0:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k2;->D()V

    :cond_0
    return-void
.end method

.method public i0(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/p0;->i0(II)V

    return-void
.end method

.method public i1()Lcom/google/android/exoplayer2/q$d;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    return-object p0
.end method

.method public j(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/p0;->j(I)V

    return-void
.end method

.method public j0()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p0;->j0()I

    move-result v0

    return v0
.end method

.method public j1(Lcom/google/android/exoplayer2/q$b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/p0;->j1(Lcom/google/android/exoplayer2/q$b;)V

    return-void
.end method

.method public k()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p0;->k()I

    move-result v0

    return v0
.end method

.method public k0()Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p0;->k0()Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    return-object v0
.end method

.method public k1()Lcom/google/android/exoplayer2/q$a;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    return-object p0
.end method

.method public l(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/k2;->U0:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x15

    if-nez p1, :cond_2

    .line 3
    sget p1, Lcom/google/android/exoplayer2/util/z0;->a:I

    if-ge p1, v0, :cond_1

    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/k2;->D2(I)I

    move-result p1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/k2;->q0:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/exoplayer2/i;->a(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    .line 6
    :cond_2
    sget v1, Lcom/google/android/exoplayer2/util/z0;->a:I

    if-ge v1, v0, :cond_3

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/k2;->D2(I)I

    .line 8
    :cond_3
    :goto_0
    iput p1, p0, Lcom/google/android/exoplayer2/k2;->U0:I

    const/4 v0, 0x1

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x66

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/k2;->I2(IILjava/lang/Object;)V

    const/4 v0, 0x2

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/k2;->I2(IILjava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->z0:Lcom/google/android/exoplayer2/analytics/h1;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/analytics/h1;->k(I)V

    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->v0:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/audio/i;

    .line 13
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/audio/i;->k(I)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public l0(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->B0:Lcom/google/android/exoplayer2/d;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k2;->c()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/d;->q(ZI)I

    move-result v0

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/k2;->A2(ZI)I

    move-result v1

    .line 4
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/k2;->S2(ZII)V

    return-void
.end method

.method public l1(Lcom/google/android/exoplayer2/video/n;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->u0:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->C0:Lcom/google/android/exoplayer2/n2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n2;->c()V

    return-void
.end method

.method public m0()Lcom/google/android/exoplayer2/q$g;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    return-object p0
.end method

.method public m1(Ljava/util/List;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/b1;",
            ">;IJ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/p0;->m1(Ljava/util/List;IJ)V

    return-void
.end method

.method public n(Landroid/view/SurfaceView;)V
    .locals 2
    .param p1    # Landroid/view/SurfaceView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    instance-of v0, p1, Lcom/google/android/exoplayer2/video/i;

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->H2()V

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/k2;->Q2(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/k2;->M2(Landroid/view/SurfaceHolder;)V

    goto :goto_1

    .line 6
    :cond_0
    instance-of v0, p1, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    if-eqz v0, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->H2()V

    .line 8
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    iput-object v0, p0, Lcom/google/android/exoplayer2/k2;->M0:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/k2;->t0:Lcom/google/android/exoplayer2/k2$d;

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/p0;->G1(Lcom/google/android/exoplayer2/z1$b;)Lcom/google/android/exoplayer2/z1;

    move-result-object v0

    const/16 v1, 0x2710

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/z1;->u(I)Lcom/google/android/exoplayer2/z1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/k2;->M0:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/z1;->r(Ljava/lang/Object;)Lcom/google/android/exoplayer2/z1;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/z1;->n()Lcom/google/android/exoplayer2/z1;

    .line 14
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->M0:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/k2;->s0:Lcom/google/android/exoplayer2/k2$c;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->d(Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$b;)V

    .line 15
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->M0:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->getVideoSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/k2;->Q2(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/k2;->M2(Landroid/view/SurfaceHolder;)V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/k2;->o(Landroid/view/SurfaceHolder;)V

    :goto_1
    return-void
.end method

.method public n0(Lcom/google/android/exoplayer2/metadata/e;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->x0:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public o(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k2;->D()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->H2()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/k2;->N0:Z

    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/k2;->L0:Landroid/view/SurfaceHolder;

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->s0:Lcom/google/android/exoplayer2/k2$c;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 7
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/k2;->Q2(Ljava/lang/Object;)V

    .line 10
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/k2;->E2(II)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 12
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/k2;->Q2(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 13
    invoke-direct {p0, p1, p1}, Lcom/google/android/exoplayer2/k2;->E2(II)V

    :goto_0
    return-void
.end method

.method public o1()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p0;->o1()J

    move-result-wide v0

    return-wide v0
.end method

.method public p(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/k2;->P0:I

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/k2;->I2(IILjava/lang/Object;)V

    return-void
.end method

.method public p0(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/z;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/p0;->p0(Ljava/util/List;Z)V

    return-void
.end method

.method public p1(Lcom/google/android/exoplayer2/v1$h;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/k2;->b1(Lcom/google/android/exoplayer2/audio/i;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/k2;->l1(Lcom/google/android/exoplayer2/video/n;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/k2;->B1(Lcom/google/android/exoplayer2/text/j;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/k2;->J1(Lcom/google/android/exoplayer2/metadata/e;)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/k2;->a1(Lcom/google/android/exoplayer2/device/d;)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/k2;->c1(Lcom/google/android/exoplayer2/v1$f;)V

    return-void
.end method

.method public q()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->Y0:Ljava/util/List;

    return-object v0
.end method

.method public q0(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/p0;->q0(Z)V

    return-void
.end method

.method public q1(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/b1;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/p0;->q1(ILjava/util/List;)V

    return-void
.end method

.method public r(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->C0:Lcom/google/android/exoplayer2/n2;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/n2;->l(Z)V

    return-void
.end method

.method public r0(Lcom/google/android/exoplayer2/video/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->Z0:Lcom/google/android/exoplayer2/video/j;

    if-eq v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->t0:Lcom/google/android/exoplayer2/k2$d;

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/p0;->G1(Lcom/google/android/exoplayer2/z1$b;)Lcom/google/android/exoplayer2/z1;

    move-result-object p1

    const/4 v0, 0x6

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/z1;->u(I)Lcom/google/android/exoplayer2/z1;

    move-result-object p1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/z1;->r(Ljava/lang/Object;)Lcom/google/android/exoplayer2/z1;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/z1;->n()Lcom/google/android/exoplayer2/z1;

    return-void
.end method

.method public release()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    sget v0, Lcom/google/android/exoplayer2/util/z0;->a:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->I0:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 4
    iput-object v1, p0, Lcom/google/android/exoplayer2/k2;->I0:Landroid/media/AudioTrack;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->A0:Lcom/google/android/exoplayer2/b;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/b;->b(Z)V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->C0:Lcom/google/android/exoplayer2/n2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n2;->k()V

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->D0:Lcom/google/android/exoplayer2/v2;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/v2;->b(Z)V

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->E0:Lcom/google/android/exoplayer2/w2;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/w2;->b(Z)V

    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->B0:Lcom/google/android/exoplayer2/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/d;->j()V

    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p0;->release()V

    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->z0:Lcom/google/android/exoplayer2/analytics/h1;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/analytics/h1;->N2()V

    .line 12
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->H2()V

    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->K0:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 15
    iput-object v1, p0, Lcom/google/android/exoplayer2/k2;->K0:Landroid/view/Surface;

    .line 16
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/k2;->e1:Z

    if-eqz v0, :cond_2

    .line 17
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->d1:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->e(I)V

    .line 18
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/k2;->e1:Z

    .line 19
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/k2;->Y0:Ljava/util/List;

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/k2;->f1:Z

    return-void
.end method

.method public retry()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k2;->a()V

    return-void
.end method

.method public s()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->C0:Lcom/google/android/exoplayer2/n2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n2;->i()V

    return-void
.end method

.method public s0()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p0;->s0()I

    move-result v0

    return v0
.end method

.method public s1()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p0;->s1()J

    move-result-wide v0

    return-wide v0
.end method

.method public t(Landroid/view/TextureView;)V
    .locals 2
    .param p1    # Landroid/view/TextureView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k2;->D()V

    goto :goto_1

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->H2()V

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/k2;->O0:Landroid/view/TextureView;

    .line 5
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "SimpleExoPlayer"

    const-string v1, "Replacing existing SurfaceTextureListener."

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/w;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->s0:Lcom/google/android/exoplayer2/k2$c;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 8
    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    .line 9
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/k2;->Q2(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1, p1}, Lcom/google/android/exoplayer2/k2;->E2(II)V

    goto :goto_1

    .line 11
    :cond_3
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/k2;->O2(Landroid/graphics/SurfaceTexture;)V

    .line 12
    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/k2;->E2(II)V

    :goto_1
    return-void
.end method

.method public t1()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p0;->t1()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public u(Lcom/google/android/exoplayer2/audio/y;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    const/4 v0, 0x1

    const/4 v1, 0x5

    .line 2
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/k2;->I2(IILjava/lang/Object;)V

    return-void
.end method

.method public u0(Lcom/google/android/exoplayer2/source/z;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/google/android/exoplayer2/k2;->J0(Lcom/google/android/exoplayer2/source/z;ZZ)V

    return-void
.end method

.method public u1(Lcom/google/android/exoplayer2/source/z0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/p0;->u1(Lcom/google/android/exoplayer2/source/z0;)V

    return-void
.end method

.method public v(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->L0:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k2;->D()V

    :cond_0
    return-void
.end method

.method public v0(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/p0;->v0(Z)V

    return-void
.end method

.method public v1()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p0;->v1()Z

    move-result v0

    return v0
.end method

.method public v2(Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->z0:Lcom/google/android/exoplayer2/analytics/h1;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/analytics/h1;->x1(Lcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method public w()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->C0:Lcom/google/android/exoplayer2/n2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n2;->g()I

    move-result v0

    return v0
.end method

.method public w0(Ljava/util/List;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/z;",
            ">;IJ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/p0;->w0(Ljava/util/List;IJ)V

    return-void
.end method

.method public w1(Lcom/google/android/exoplayer2/audio/i;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->v0:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public x(IJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->z0:Lcom/google/android/exoplayer2/analytics/h1;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/analytics/h1;->M2()V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/p0;->x(IJ)V

    return-void
.end method

.method public x0()Lcom/google/android/exoplayer2/q$e;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    return-object p0
.end method

.method public x2()Lcom/google/android/exoplayer2/analytics/h1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->z0:Lcom/google/android/exoplayer2/analytics/h1;

    return-object v0
.end method

.method public y(Z)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->B0:Lcom/google/android/exoplayer2/d;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k2;->Q0()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/d;->q(ZI)I

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/p0;->y(Z)V

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/k2;->Y0:Ljava/util/List;

    return-void
.end method

.method public y0()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p0;->y0()I

    move-result v0

    return v0
.end method

.method public y1()Lcom/google/android/exoplayer2/j2;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p0;->y1()Lcom/google/android/exoplayer2/j2;

    move-result-object v0

    return-object v0
.end method

.method public y2()Lcom/google/android/exoplayer2/decoder/d;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->T0:Lcom/google/android/exoplayer2/decoder/d;

    return-object v0
.end method

.method public z(Landroid/view/TextureView;)V
    .locals 1
    .param p1    # Landroid/view/TextureView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->O0:Landroid/view/TextureView;

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k2;->D()V

    :cond_0
    return-void
.end method

.method public z0()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k2;->U2()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->r0:Lcom/google/android/exoplayer2/p0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p0;->z0()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public z2()Lcom/google/android/exoplayer2/Format;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/k2;->H0:Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method

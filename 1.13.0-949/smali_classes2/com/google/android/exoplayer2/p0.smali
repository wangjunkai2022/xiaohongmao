.class final Lcom/google/android/exoplayer2/p0;
.super Lcom/google/android/exoplayer2/e;
.source "ExoPlayerImpl.java"

# interfaces
.implements Lcom/google/android/exoplayer2/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/p0$a;
    }
.end annotation


# static fields
.field private static final V0:Ljava/lang/String; = "ExoPlayerImpl"


# instance fields
.field private final A0:Lcom/google/android/exoplayer2/source/j0;

.field private final B0:Lcom/google/android/exoplayer2/analytics/h1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final C0:Landroid/os/Looper;

.field private final D0:Lcom/google/android/exoplayer2/upstream/e;

.field private final E0:Lcom/google/android/exoplayer2/util/d;

.field private F0:I

.field private G0:Z

.field private H0:I

.field private I0:I

.field private J0:Z

.field private K0:I

.field private L0:Z

.field private M0:Lcom/google/android/exoplayer2/j2;

.field private N0:Lcom/google/android/exoplayer2/source/z0;

.field private O0:Z

.field private P0:Lcom/google/android/exoplayer2/v1$c;

.field private Q0:Lcom/google/android/exoplayer2/f1;

.field private R0:Lcom/google/android/exoplayer2/r1;

.field private S0:I

.field private T0:I

.field private U0:J

.field final o0:Lcom/google/android/exoplayer2/trackselection/p;

.field final p0:Lcom/google/android/exoplayer2/v1$c;

.field private final q0:[Lcom/google/android/exoplayer2/e2;

.field private final r0:Lcom/google/android/exoplayer2/trackselection/o;

.field private final s0:Lcom/google/android/exoplayer2/util/q;

.field private final t0:Lcom/google/android/exoplayer2/t0$f;

.field private final u0:Lcom/google/android/exoplayer2/t0;

.field private final v0:Lcom/google/android/exoplayer2/util/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/v<",
            "Lcom/google/android/exoplayer2/v1$f;",
            ">;"
        }
    .end annotation
.end field

.field private final w0:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/q$b;",
            ">;"
        }
    .end annotation
.end field

.field private final x0:Lcom/google/android/exoplayer2/s2$b;

.field private final y0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/p0$a;",
            ">;"
        }
    .end annotation
.end field

.field private final z0:Z


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/e2;Lcom/google/android/exoplayer2/trackselection/o;Lcom/google/android/exoplayer2/source/j0;Lcom/google/android/exoplayer2/z0;Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/analytics/h1;ZLcom/google/android/exoplayer2/j2;Lcom/google/android/exoplayer2/y0;JZLcom/google/android/exoplayer2/util/d;Landroid/os/Looper;Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/v1$c;)V
    .locals 19
    .param p6    # Lcom/google/android/exoplayer2/analytics/h1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p15    # Lcom/google/android/exoplayer2/v1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p5

    move-object/from16 v9, p6

    move-object/from16 v15, p13

    move-object/from16 v14, p14

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/e;-><init>()V

    .line 2
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/android/exoplayer2/util/z0;->e:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1e

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Init "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ExoPlayerLib/2.14.2"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] ["

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ExoPlayerImpl"

    .line 3
    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/util/w;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    array-length v1, v2

    const/4 v3, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 5
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/e2;

    iput-object v1, v0, Lcom/google/android/exoplayer2/p0;->q0:[Lcom/google/android/exoplayer2/e2;

    .line 6
    invoke-static/range {p2 .. p2}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/trackselection/o;

    iput-object v1, v0, Lcom/google/android/exoplayer2/p0;->r0:Lcom/google/android/exoplayer2/trackselection/o;

    move-object/from16 v1, p3

    .line 7
    iput-object v1, v0, Lcom/google/android/exoplayer2/p0;->A0:Lcom/google/android/exoplayer2/source/j0;

    .line 8
    iput-object v6, v0, Lcom/google/android/exoplayer2/p0;->D0:Lcom/google/android/exoplayer2/upstream/e;

    .line 9
    iput-object v9, v0, Lcom/google/android/exoplayer2/p0;->B0:Lcom/google/android/exoplayer2/analytics/h1;

    move/from16 v1, p7

    .line 10
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/p0;->z0:Z

    move-object/from16 v10, p8

    .line 11
    iput-object v10, v0, Lcom/google/android/exoplayer2/p0;->M0:Lcom/google/android/exoplayer2/j2;

    move/from16 v12, p12

    .line 12
    iput-boolean v12, v0, Lcom/google/android/exoplayer2/p0;->O0:Z

    .line 13
    iput-object v14, v0, Lcom/google/android/exoplayer2/p0;->C0:Landroid/os/Looper;

    .line 14
    iput-object v15, v0, Lcom/google/android/exoplayer2/p0;->E0:Lcom/google/android/exoplayer2/util/d;

    .line 15
    iput v3, v0, Lcom/google/android/exoplayer2/p0;->F0:I

    if-eqz p15, :cond_1

    move-object/from16 v1, p15

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 16
    :goto_1
    new-instance v4, Lcom/google/android/exoplayer2/util/v;

    new-instance v5, Lcom/google/android/exoplayer2/f0;

    invoke-direct {v5, v1}, Lcom/google/android/exoplayer2/f0;-><init>(Lcom/google/android/exoplayer2/v1;)V

    invoke-direct {v4, v14, v15, v5}, Lcom/google/android/exoplayer2/util/v;-><init>(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/d;Lcom/google/android/exoplayer2/util/v$b;)V

    iput-object v4, v0, Lcom/google/android/exoplayer2/p0;->v0:Lcom/google/android/exoplayer2/util/v;

    .line 17
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v4, v0, Lcom/google/android/exoplayer2/p0;->w0:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 18
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/google/android/exoplayer2/p0;->y0:Ljava/util/List;

    .line 19
    new-instance v4, Lcom/google/android/exoplayer2/source/z0$a;

    invoke-direct {v4, v3}, Lcom/google/android/exoplayer2/source/z0$a;-><init>(I)V

    iput-object v4, v0, Lcom/google/android/exoplayer2/p0;->N0:Lcom/google/android/exoplayer2/source/z0;

    .line 20
    new-instance v4, Lcom/google/android/exoplayer2/trackselection/p;

    array-length v3, v2

    new-array v3, v3, [Lcom/google/android/exoplayer2/h2;

    array-length v5, v2

    new-array v5, v5, [Lcom/google/android/exoplayer2/trackselection/g;

    const/4 v7, 0x0

    invoke-direct {v4, v3, v5, v7}, Lcom/google/android/exoplayer2/trackselection/p;-><init>([Lcom/google/android/exoplayer2/h2;[Lcom/google/android/exoplayer2/trackselection/g;Ljava/lang/Object;)V

    iput-object v4, v0, Lcom/google/android/exoplayer2/p0;->o0:Lcom/google/android/exoplayer2/trackselection/p;

    .line 21
    new-instance v3, Lcom/google/android/exoplayer2/s2$b;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/s2$b;-><init>()V

    iput-object v3, v0, Lcom/google/android/exoplayer2/p0;->x0:Lcom/google/android/exoplayer2/s2$b;

    .line 22
    new-instance v3, Lcom/google/android/exoplayer2/v1$c$a;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/v1$c$a;-><init>()V

    const/16 v5, 0x9

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    .line 23
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/v1$c$a;->c([I)Lcom/google/android/exoplayer2/v1$c$a;

    move-result-object v3

    move-object/from16 v5, p16

    .line 24
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/v1$c$a;->b(Lcom/google/android/exoplayer2/v1$c;)Lcom/google/android/exoplayer2/v1$c$a;

    move-result-object v3

    .line 25
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/v1$c$a;->e()Lcom/google/android/exoplayer2/v1$c;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/p0;->p0:Lcom/google/android/exoplayer2/v1$c;

    .line 26
    new-instance v5, Lcom/google/android/exoplayer2/v1$c$a;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/v1$c$a;-><init>()V

    .line 27
    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/v1$c$a;->b(Lcom/google/android/exoplayer2/v1$c;)Lcom/google/android/exoplayer2/v1$c$a;

    move-result-object v3

    const/4 v5, 0x3

    .line 28
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/v1$c$a;->a(I)Lcom/google/android/exoplayer2/v1$c$a;

    move-result-object v3

    const/4 v5, 0x7

    .line 29
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/v1$c$a;->a(I)Lcom/google/android/exoplayer2/v1$c$a;

    move-result-object v3

    .line 30
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/v1$c$a;->e()Lcom/google/android/exoplayer2/v1$c;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/p0;->P0:Lcom/google/android/exoplayer2/v1$c;

    .line 31
    sget-object v3, Lcom/google/android/exoplayer2/f1;->z:Lcom/google/android/exoplayer2/f1;

    iput-object v3, v0, Lcom/google/android/exoplayer2/p0;->Q0:Lcom/google/android/exoplayer2/f1;

    const/4 v3, -0x1

    .line 32
    iput v3, v0, Lcom/google/android/exoplayer2/p0;->S0:I

    .line 33
    invoke-interface {v15, v14, v7}, Lcom/google/android/exoplayer2/util/d;->d(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/q;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/p0;->s0:Lcom/google/android/exoplayer2/util/q;

    .line 34
    new-instance v13, Lcom/google/android/exoplayer2/s;

    invoke-direct {v13, v0}, Lcom/google/android/exoplayer2/s;-><init>(Lcom/google/android/exoplayer2/p0;)V

    iput-object v13, v0, Lcom/google/android/exoplayer2/p0;->t0:Lcom/google/android/exoplayer2/t0$f;

    .line 35
    invoke-static {v4}, Lcom/google/android/exoplayer2/r1;->k(Lcom/google/android/exoplayer2/trackselection/p;)Lcom/google/android/exoplayer2/r1;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    if-eqz v9, :cond_2

    .line 36
    invoke-virtual {v9, v1, v14}, Lcom/google/android/exoplayer2/analytics/h1;->Q2(Lcom/google/android/exoplayer2/v1;Landroid/os/Looper;)V

    .line 37
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/p0;->p1(Lcom/google/android/exoplayer2/v1$h;)V

    .line 38
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v14}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-interface {v6, v1, v9}, Lcom/google/android/exoplayer2/upstream/e;->g(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/e$a;)V

    .line 39
    :cond_2
    new-instance v11, Lcom/google/android/exoplayer2/t0;

    move-object v1, v11

    iget v7, v0, Lcom/google/android/exoplayer2/p0;->F0:I

    iget-boolean v8, v0, Lcom/google/android/exoplayer2/p0;->G0:Z

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v18, v11

    move-object/from16 v11, p9

    move-object/from16 v17, v13

    move-wide/from16 v12, p10

    move/from16 v14, p12

    move-object/from16 v15, p14

    move-object/from16 v16, p13

    invoke-direct/range {v1 .. v17}, Lcom/google/android/exoplayer2/t0;-><init>([Lcom/google/android/exoplayer2/e2;Lcom/google/android/exoplayer2/trackselection/o;Lcom/google/android/exoplayer2/trackselection/p;Lcom/google/android/exoplayer2/z0;Lcom/google/android/exoplayer2/upstream/e;IZLcom/google/android/exoplayer2/analytics/h1;Lcom/google/android/exoplayer2/j2;Lcom/google/android/exoplayer2/y0;JZLandroid/os/Looper;Lcom/google/android/exoplayer2/util/d;Lcom/google/android/exoplayer2/t0$f;)V

    move-object/from16 v1, v18

    iput-object v1, v0, Lcom/google/android/exoplayer2/p0;->u0:Lcom/google/android/exoplayer2/t0;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
    .end array-data
.end method

.method private static A2(Lcom/google/android/exoplayer2/r1;)Z
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/r1;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/r1;->l:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/google/android/exoplayer2/r1;->m:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic B2(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/v1$f;Lcom/google/android/exoplayer2/util/m;)V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/v1$g;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/v1$g;-><init>(Lcom/google/android/exoplayer2/util/m;)V

    invoke-interface {p1, p0, v0}, Lcom/google/android/exoplayer2/v1$f;->z(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/v1$g;)V

    return-void
.end method

.method private synthetic C2(Lcom/google/android/exoplayer2/t0$e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/p0;->z2(Lcom/google/android/exoplayer2/t0$e;)V

    return-void
.end method

.method private synthetic D2(Lcom/google/android/exoplayer2/t0$e;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->s0:Lcom/google/android/exoplayer2/util/q;

    new-instance v1, Lcom/google/android/exoplayer2/g0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/g0;-><init>(Lcom/google/android/exoplayer2/p0;Lcom/google/android/exoplayer2/t0$e;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/q;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic E2(Lcom/google/android/exoplayer2/v1$f;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->Q0:Lcom/google/android/exoplayer2/f1;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/v1$f;->m(Lcom/google/android/exoplayer2/f1;)V

    return-void
.end method

.method private static synthetic F2(Lcom/google/android/exoplayer2/v1$f;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/ExoTimeoutException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ExoTimeoutException;-><init>(I)V

    .line 2
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    .line 3
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/v1$f;->u(Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method private static synthetic G2(ILcom/google/android/exoplayer2/v1$f;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/v1$f;->i(I)V

    return-void
.end method

.method private static synthetic H2(ZLcom/google/android/exoplayer2/v1$f;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/v1$f;->n(Z)V

    return-void
.end method

.method private synthetic I2(Lcom/google/android/exoplayer2/v1$f;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->P0:Lcom/google/android/exoplayer2/v1$c;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/v1$f;->h(Lcom/google/android/exoplayer2/v1$c;)V

    return-void
.end method

.method private static synthetic J2(Lcom/google/android/exoplayer2/r1;Lcom/google/android/exoplayer2/v1$f;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/r1;->f:Lcom/google/android/exoplayer2/ExoPlaybackException;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/v1$f;->u(Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method private static synthetic K2(Lcom/google/android/exoplayer2/r1;Lcom/google/android/exoplayer2/trackselection/m;Lcom/google/android/exoplayer2/v1$f;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/r1;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/v1$f;->s(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/m;)V

    return-void
.end method

.method private static synthetic L2(Lcom/google/android/exoplayer2/r1;Lcom/google/android/exoplayer2/v1$f;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/r1;->j:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/v1$f;->g(Ljava/util/List;)V

    return-void
.end method

.method private static synthetic M2(Lcom/google/android/exoplayer2/f1;Lcom/google/android/exoplayer2/v1$f;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/v1$f;->m(Lcom/google/android/exoplayer2/f1;)V

    return-void
.end method

.method private static synthetic N2(Lcom/google/android/exoplayer2/r1;Lcom/google/android/exoplayer2/v1$f;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/r1;->g:Z

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/v1$f;->G(Z)V

    .line 2
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/r1;->g:Z

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/v1$f;->v(Z)V

    return-void
.end method

.method private static synthetic O2(Lcom/google/android/exoplayer2/r1;Lcom/google/android/exoplayer2/v1$f;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/r1;->l:Z

    iget p0, p0, Lcom/google/android/exoplayer2/r1;->e:I

    invoke-interface {p1, v0, p0}, Lcom/google/android/exoplayer2/v1$f;->a0(ZI)V

    return-void
.end method

.method private static synthetic P2(Lcom/google/android/exoplayer2/r1;Lcom/google/android/exoplayer2/v1$f;)V
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/r1;->e:I

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/v1$f;->l(I)V

    return-void
.end method

.method public static synthetic Q1(Lcom/google/android/exoplayer2/r1;Lcom/google/android/exoplayer2/v1$f;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/p0;->J2(Lcom/google/android/exoplayer2/r1;Lcom/google/android/exoplayer2/v1$f;)V

    return-void
.end method

.method private static synthetic Q2(Lcom/google/android/exoplayer2/r1;ILcom/google/android/exoplayer2/v1$f;)V
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/r1;->l:Z

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/v1$f;->C(ZI)V

    return-void
.end method

.method public static synthetic R1(Lcom/google/android/exoplayer2/r1;Lcom/google/android/exoplayer2/trackselection/m;Lcom/google/android/exoplayer2/v1$f;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/p0;->K2(Lcom/google/android/exoplayer2/r1;Lcom/google/android/exoplayer2/trackselection/m;Lcom/google/android/exoplayer2/v1$f;)V

    return-void
.end method

.method private static synthetic R2(Lcom/google/android/exoplayer2/r1;Lcom/google/android/exoplayer2/v1$f;)V
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/r1;->m:I

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/v1$f;->f(I)V

    return-void
.end method

.method public static synthetic S1(ILcom/google/android/exoplayer2/v1$f;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/p0;->G2(ILcom/google/android/exoplayer2/v1$f;)V

    return-void
.end method

.method private static synthetic S2(Lcom/google/android/exoplayer2/r1;Lcom/google/android/exoplayer2/v1$f;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/p0;->A2(Lcom/google/android/exoplayer2/r1;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/v1$f;->E(Z)V

    return-void
.end method

.method public static synthetic T1(Lcom/google/android/exoplayer2/b1;ILcom/google/android/exoplayer2/v1$f;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/p0;->W2(Lcom/google/android/exoplayer2/b1;ILcom/google/android/exoplayer2/v1$f;)V

    return-void
.end method

.method private static synthetic T2(Lcom/google/android/exoplayer2/r1;Lcom/google/android/exoplayer2/v1$f;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/r1;->n:Lcom/google/android/exoplayer2/t1;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/v1$f;->c(Lcom/google/android/exoplayer2/t1;)V

    return-void
.end method

.method public static synthetic U1(Lcom/google/android/exoplayer2/r1;Lcom/google/android/exoplayer2/v1$f;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/p0;->L2(Lcom/google/android/exoplayer2/r1;Lcom/google/android/exoplayer2/v1$f;)V

    return-void
.end method

.method private static synthetic U2(Lcom/google/android/exoplayer2/r1;ILcom/google/android/exoplayer2/v1$f;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2;->u()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/s2$d;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/s2$d;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/exoplayer2/s2;->r(ILcom/google/android/exoplayer2/s2$d;)Lcom/google/android/exoplayer2/s2$d;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/s2$d;->d:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    invoke-interface {p2, v1, v0, p1}, Lcom/google/android/exoplayer2/v1$f;->e0(Lcom/google/android/exoplayer2/s2;Ljava/lang/Object;I)V

    .line 5
    iget-object p0, p0, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/v1$f;->j(Lcom/google/android/exoplayer2/s2;I)V

    return-void
.end method

.method public static synthetic V1(Lcom/google/android/exoplayer2/r1;Lcom/google/android/exoplayer2/v1$f;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/p0;->S2(Lcom/google/android/exoplayer2/r1;Lcom/google/android/exoplayer2/v1$f;)V

    return-void
.end method

.method private static synthetic V2(ILcom/google/android/exoplayer2/v1$l;Lcom/google/android/exoplayer2/v1$l;Lcom/google/android/exoplayer2/v1$f;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0}, Lcom/google/android/exoplayer2/v1$f;->U(I)V

    .line 2
    invoke-interface {p3, p1, p2, p0}, Lcom/google/android/exoplayer2/v1$f;->e(Lcom/google/android/exoplayer2/v1$l;Lcom/google/android/exoplayer2/v1$l;I)V

    return-void
.end method

.method public static synthetic W1(ZLcom/google/android/exoplayer2/v1$f;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/p0;->H2(ZLcom/google/android/exoplayer2/v1$f;)V

    return-void
.end method

.method private static synthetic W2(Lcom/google/android/exoplayer2/b1;ILcom/google/android/exoplayer2/v1$f;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/v1$f;->B(Lcom/google/android/exoplayer2/b1;I)V

    return-void
.end method

.method public static synthetic X1(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/v1$f;Lcom/google/android/exoplayer2/util/m;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/p0;->B2(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/v1$f;Lcom/google/android/exoplayer2/util/m;)V

    return-void
.end method

.method private X2(Lcom/google/android/exoplayer2/r1;Lcom/google/android/exoplayer2/s2;Landroid/util/Pair;)Lcom/google/android/exoplayer2/r1;
    .locals 19
    .param p3    # Landroid/util/Pair;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/r1;",
            "Lcom/google/android/exoplayer2/s2;",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/android/exoplayer2/r1;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    move-object/from16 v3, p1

    .line 2
    iget-object v5, v3, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    .line 3
    invoke-virtual/range {p1 .. p2}, Lcom/google/android/exoplayer2/r1;->j(Lcom/google/android/exoplayer2/s2;)Lcom/google/android/exoplayer2/r1;

    move-result-object v6

    .line 4
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    invoke-static {}, Lcom/google/android/exoplayer2/r1;->l()Lcom/google/android/exoplayer2/source/z$a;

    move-result-object v1

    .line 6
    iget-wide v2, v0, Lcom/google/android/exoplayer2/p0;->U0:J

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/i;->c(J)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    .line 7
    sget-object v16, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v2, v0, Lcom/google/android/exoplayer2/p0;->o0:Lcom/google/android/exoplayer2/trackselection/p;

    .line 8
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v18

    move-object v7, v1

    move-wide v8, v12

    move-wide v10, v12

    move-object/from16 v17, v2

    .line 9
    invoke-virtual/range {v6 .. v18}, Lcom/google/android/exoplayer2/r1;->c(Lcom/google/android/exoplayer2/source/z$a;JJJJLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/p;Ljava/util/List;)Lcom/google/android/exoplayer2/r1;

    move-result-object v2

    .line 10
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/r1;->b(Lcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/r1;

    move-result-object v1

    .line 11
    iget-wide v2, v1, Lcom/google/android/exoplayer2/r1;->s:J

    iput-wide v2, v1, Lcom/google/android/exoplayer2/r1;->q:J

    return-object v1

    .line 12
    :cond_2
    iget-object v3, v6, Lcom/google/android/exoplayer2/r1;->b:Lcom/google/android/exoplayer2/source/z$a;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/x;->a:Ljava/lang/Object;

    .line 13
    invoke-static/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v4

    if-eqz v7, :cond_3

    .line 14
    new-instance v8, Lcom/google/android/exoplayer2/source/z$a;

    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer2/source/z$a;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v8, v6, Lcom/google/android/exoplayer2/r1;->b:Lcom/google/android/exoplayer2/source/z$a;

    :goto_2
    move-object v14, v8

    .line 15
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/p0;->o1()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/i;->c(J)J

    move-result-wide v8

    .line 17
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v2

    if-nez v2, :cond_4

    .line 18
    iget-object v2, v0, Lcom/google/android/exoplayer2/p0;->x0:Lcom/google/android/exoplayer2/s2$b;

    .line 19
    invoke-virtual {v5, v3, v2}, Lcom/google/android/exoplayer2/s2;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/s2$b;)Lcom/google/android/exoplayer2/s2$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/s2$b;->q()J

    move-result-wide v2

    sub-long/2addr v8, v2

    :cond_4
    if-nez v7, :cond_b

    cmp-long v2, v12, v8

    if-gez v2, :cond_5

    goto/16 :goto_5

    :cond_5
    if-nez v2, :cond_9

    .line 20
    iget-object v2, v6, Lcom/google/android/exoplayer2/r1;->k:Lcom/google/android/exoplayer2/source/z$a;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/x;->a:Ljava/lang/Object;

    .line 21
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/s2;->f(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 22
    iget-object v3, v0, Lcom/google/android/exoplayer2/p0;->x0:Lcom/google/android/exoplayer2/s2$b;

    .line 23
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/s2;->j(ILcom/google/android/exoplayer2/s2$b;)Lcom/google/android/exoplayer2/s2$b;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/s2$b;->c:I

    iget-object v3, v14, Lcom/google/android/exoplayer2/source/x;->a:Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/android/exoplayer2/p0;->x0:Lcom/google/android/exoplayer2/s2$b;

    .line 24
    invoke-virtual {v1, v3, v4}, Lcom/google/android/exoplayer2/s2;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/s2$b;)Lcom/google/android/exoplayer2/s2$b;

    move-result-object v3

    iget v3, v3, Lcom/google/android/exoplayer2/s2$b;->c:I

    if-eq v2, v3, :cond_8

    .line 25
    :cond_6
    iget-object v2, v14, Lcom/google/android/exoplayer2/source/x;->a:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/exoplayer2/p0;->x0:Lcom/google/android/exoplayer2/s2$b;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/s2;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/s2$b;)Lcom/google/android/exoplayer2/s2$b;

    .line 26
    invoke-virtual {v14}, Lcom/google/android/exoplayer2/source/x;->c()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 27
    iget-object v1, v0, Lcom/google/android/exoplayer2/p0;->x0:Lcom/google/android/exoplayer2/s2$b;

    iget v2, v14, Lcom/google/android/exoplayer2/source/x;->b:I

    iget v3, v14, Lcom/google/android/exoplayer2/source/x;->c:I

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/s2$b;->e(II)J

    move-result-wide v1

    goto :goto_3

    .line 28
    :cond_7
    iget-object v1, v0, Lcom/google/android/exoplayer2/p0;->x0:Lcom/google/android/exoplayer2/s2$b;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/s2$b;->d:J

    .line 29
    :goto_3
    iget-wide v8, v6, Lcom/google/android/exoplayer2/r1;->s:J

    iget-wide v10, v6, Lcom/google/android/exoplayer2/r1;->s:J

    iget-wide v12, v6, Lcom/google/android/exoplayer2/r1;->d:J

    iget-wide v3, v6, Lcom/google/android/exoplayer2/r1;->s:J

    sub-long v3, v1, v3

    iget-object v5, v6, Lcom/google/android/exoplayer2/r1;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v15, v6, Lcom/google/android/exoplayer2/r1;->i:Lcom/google/android/exoplayer2/trackselection/p;

    iget-object v7, v6, Lcom/google/android/exoplayer2/r1;->j:Ljava/util/List;

    move-object/from16 v18, v7

    move-object v7, v14

    move-object v0, v14

    move-object/from16 v17, v15

    move-wide v14, v3

    move-object/from16 v16, v5

    .line 30
    invoke-virtual/range {v6 .. v18}, Lcom/google/android/exoplayer2/r1;->c(Lcom/google/android/exoplayer2/source/z$a;JJJJLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/p;Ljava/util/List;)Lcom/google/android/exoplayer2/r1;

    move-result-object v3

    .line 31
    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/r1;->b(Lcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/r1;

    move-result-object v6

    .line 32
    iput-wide v1, v6, Lcom/google/android/exoplayer2/r1;->q:J

    :cond_8
    :goto_4
    move-object/from16 v0, p0

    goto/16 :goto_9

    :cond_9
    move-object v0, v14

    .line 33
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/x;->c()Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    const-wide/16 v1, 0x0

    .line 34
    iget-wide v3, v6, Lcom/google/android/exoplayer2/r1;->r:J

    sub-long v7, v12, v8

    sub-long/2addr v3, v7

    .line 35
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 36
    iget-wide v1, v6, Lcom/google/android/exoplayer2/r1;->q:J

    .line 37
    iget-object v3, v6, Lcom/google/android/exoplayer2/r1;->k:Lcom/google/android/exoplayer2/source/z$a;

    iget-object v4, v6, Lcom/google/android/exoplayer2/r1;->b:Lcom/google/android/exoplayer2/source/z$a;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/source/x;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    add-long v1, v12, v14

    .line 38
    :cond_a
    iget-object v3, v6, Lcom/google/android/exoplayer2/r1;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v4, v6, Lcom/google/android/exoplayer2/r1;->i:Lcom/google/android/exoplayer2/trackselection/p;

    iget-object v5, v6, Lcom/google/android/exoplayer2/r1;->j:Ljava/util/List;

    move-object v7, v0

    move-wide v8, v12

    move-wide v10, v12

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    .line 39
    invoke-virtual/range {v6 .. v18}, Lcom/google/android/exoplayer2/r1;->c(Lcom/google/android/exoplayer2/source/z$a;JJJJLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/p;Ljava/util/List;)Lcom/google/android/exoplayer2/r1;

    move-result-object v6

    .line 40
    iput-wide v1, v6, Lcom/google/android/exoplayer2/r1;->q:J

    goto :goto_4

    :cond_b
    :goto_5
    move-object v0, v14

    .line 41
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/x;->c()Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    const-wide/16 v14, 0x0

    if-eqz v7, :cond_c

    .line 42
    sget-object v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    goto :goto_6

    :cond_c
    iget-object v1, v6, Lcom/google/android/exoplayer2/r1;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    :goto_6
    move-object/from16 v16, v1

    move-object v1, v0

    move-object/from16 v0, p0

    if-eqz v7, :cond_d

    .line 43
    iget-object v2, v0, Lcom/google/android/exoplayer2/p0;->o0:Lcom/google/android/exoplayer2/trackselection/p;

    goto :goto_7

    :cond_d
    iget-object v2, v6, Lcom/google/android/exoplayer2/r1;->i:Lcom/google/android/exoplayer2/trackselection/p;

    :goto_7
    move-object/from16 v17, v2

    if-eqz v7, :cond_e

    .line 44
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    goto :goto_8

    :cond_e
    iget-object v2, v6, Lcom/google/android/exoplayer2/r1;->j:Ljava/util/List;

    :goto_8
    move-object/from16 v18, v2

    move-object v7, v1

    move-wide v8, v12

    move-wide v10, v12

    move-wide v2, v12

    .line 45
    invoke-virtual/range {v6 .. v18}, Lcom/google/android/exoplayer2/r1;->c(Lcom/google/android/exoplayer2/source/z$a;JJJJLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/p;Ljava/util/List;)Lcom/google/android/exoplayer2/r1;

    move-result-object v4

    .line 46
    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/r1;->b(Lcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/r1;

    move-result-object v6

    .line 47
    iput-wide v2, v6, Lcom/google/android/exoplayer2/r1;->q:J

    :goto_9
    return-object v6
.end method

.method public static synthetic Y1(Lcom/google/android/exoplayer2/p0;Lcom/google/android/exoplayer2/v1$f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/p0;->I2(Lcom/google/android/exoplayer2/v1$f;)V

    return-void
.end method

.method public static synthetic Z1(Lcom/google/android/exoplayer2/r1;Lcom/google/android/exoplayer2/v1$f;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/p0;->N2(Lcom/google/android/exoplayer2/r1;Lcom/google/android/exoplayer2/v1$f;)V

    return-void
.end method

.method private Z2(Lcom/google/android/exoplayer2/s2;Lcom/google/android/exoplayer2/source/z$a;J)J
    .locals 1

    .line 1
    iget-object p2, p2, Lcom/google/android/exoplayer2/source/x;->a:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->x0:Lcom/google/android/exoplayer2/s2$b;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/s2;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/s2$b;)Lcom/google/android/exoplayer2/s2$b;

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/p0;->x0:Lcom/google/android/exoplayer2/s2$b;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/s2$b;->q()J

    move-result-wide p1

    add-long/2addr p3, p1

    return-wide p3
.end method

.method public static synthetic a2(Lcom/google/android/exoplayer2/r1;Lcom/google/android/exoplayer2/v1$f;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/p0;->O2(Lcom/google/android/exoplayer2/r1;Lcom/google/android/exoplayer2/v1$f;)V

    return-void
.end method

.method private a3(II)Lcom/google/android/exoplayer2/r1;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    .line 1
    iget-object v2, p0, Lcom/google/android/exoplayer2/p0;->y0:Ljava/util/List;

    .line 2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt p2, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p0;->j0()I

    move-result v2

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p0;->A0()Lcom/google/android/exoplayer2/s2;

    move-result-object v3

    .line 6
    iget-object v4, p0, Lcom/google/android/exoplayer2/p0;->y0:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 7
    iget v5, p0, Lcom/google/android/exoplayer2/p0;->H0:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/google/android/exoplayer2/p0;->H0:I

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/p0;->b3(II)V

    .line 9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/p0;->n2()Lcom/google/android/exoplayer2/s2;

    move-result-object v5

    .line 10
    iget-object v6, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    .line 11
    invoke-direct {p0, v3, v5}, Lcom/google/android/exoplayer2/p0;->u2(Lcom/google/android/exoplayer2/s2;Lcom/google/android/exoplayer2/s2;)Landroid/util/Pair;

    move-result-object v3

    .line 12
    invoke-direct {p0, v6, v5, v3}, Lcom/google/android/exoplayer2/p0;->X2(Lcom/google/android/exoplayer2/r1;Lcom/google/android/exoplayer2/s2;Landroid/util/Pair;)Lcom/google/android/exoplayer2/r1;

    move-result-object v3

    .line 13
    iget v5, v3, Lcom/google/android/exoplayer2/r1;->e:I

    const/4 v6, 0x4

    if-eq v5, v1, :cond_1

    if-eq v5, v6, :cond_1

    if-ge p1, p2, :cond_1

    if-ne p2, v4, :cond_1

    iget-object v4, v3, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    .line 14
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/s2;->u()I

    move-result v4

    if-lt v2, v4, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/r1;->h(I)Lcom/google/android/exoplayer2/r1;

    move-result-object v3

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->u0:Lcom/google/android/exoplayer2/t0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/p0;->N0:Lcom/google/android/exoplayer2/source/z0;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/t0;->m0(IILcom/google/android/exoplayer2/source/z0;)V

    return-object v3
.end method

.method public static synthetic b2(ILcom/google/android/exoplayer2/v1$l;Lcom/google/android/exoplayer2/v1$l;Lcom/google/android/exoplayer2/v1$f;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/p0;->V2(ILcom/google/android/exoplayer2/v1$l;Lcom/google/android/exoplayer2/v1$l;Lcom/google/android/exoplayer2/v1$f;)V

    return-void
.end method

.method private b3(II)V
    .locals 2

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-lt v0, p1, :cond_0

    .line 1
    iget-object v1, p0, Lcom/google/android/exoplayer2/p0;->y0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->N0:Lcom/google/android/exoplayer2/source/z0;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/z0;->a(II)Lcom/google/android/exoplayer2/source/z0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/p0;->N0:Lcom/google/android/exoplayer2/source/z0;

    return-void
.end method

.method public static synthetic c2(Lcom/google/android/exoplayer2/f1;Lcom/google/android/exoplayer2/v1$f;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/p0;->M2(Lcom/google/android/exoplayer2/f1;Lcom/google/android/exoplayer2/v1$f;)V

    return-void
.end method

.method private c3(Ljava/util/List;IJZ)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/z;",
            ">;IJZ)V"
        }
    .end annotation

    move-object/from16 v10, p0

    move/from16 v0, p2

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/p0;->t2()I

    move-result v1

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/p0;->getCurrentPosition()J

    move-result-wide v2

    .line 3
    iget v4, v10, Lcom/google/android/exoplayer2/p0;->H0:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v10, Lcom/google/android/exoplayer2/p0;->H0:I

    .line 4
    iget-object v4, v10, Lcom/google/android/exoplayer2/p0;->y0:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v6, 0x0

    if-nez v4, :cond_0

    .line 5
    iget-object v4, v10, Lcom/google/android/exoplayer2/p0;->y0:Ljava/util/List;

    .line 6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 7
    invoke-direct {v10, v6, v4}, Lcom/google/android/exoplayer2/p0;->b3(II)V

    :cond_0
    move-object/from16 v4, p1

    .line 8
    invoke-direct {v10, v6, v4}, Lcom/google/android/exoplayer2/p0;->m2(ILjava/util/List;)Ljava/util/List;

    move-result-object v12

    .line 9
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/p0;->n2()Lcom/google/android/exoplayer2/s2;

    move-result-object v4

    .line 10
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/s2;->u()I

    move-result v7

    if-ge v0, v7, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    new-instance v1, Lcom/google/android/exoplayer2/IllegalSeekPositionException;

    move-wide/from16 v7, p3

    invoke-direct {v1, v4, v0, v7, v8}, Lcom/google/android/exoplayer2/IllegalSeekPositionException;-><init>(Lcom/google/android/exoplayer2/s2;IJ)V

    throw v1

    :cond_2
    :goto_0
    move-wide/from16 v7, p3

    const/4 v9, -0x1

    if-eqz p5, :cond_3

    .line 12
    iget-boolean v0, v10, Lcom/google/android/exoplayer2/p0;->G0:Z

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/s2;->e(Z)I

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    move v13, v0

    goto :goto_1

    :cond_3
    if-ne v0, v9, :cond_4

    move v13, v1

    move-wide v1, v2

    goto :goto_1

    :cond_4
    move v13, v0

    move-wide v1, v7

    .line 13
    :goto_1
    iget-object v0, v10, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    .line 14
    invoke-direct {v10, v4, v13, v1, v2}, Lcom/google/android/exoplayer2/p0;->v2(Lcom/google/android/exoplayer2/s2;IJ)Landroid/util/Pair;

    move-result-object v3

    .line 15
    invoke-direct {v10, v0, v4, v3}, Lcom/google/android/exoplayer2/p0;->X2(Lcom/google/android/exoplayer2/r1;Lcom/google/android/exoplayer2/s2;Landroid/util/Pair;)Lcom/google/android/exoplayer2/r1;

    move-result-object v0

    .line 16
    iget v3, v0, Lcom/google/android/exoplayer2/r1;->e:I

    if-eq v13, v9, :cond_7

    if-eq v3, v5, :cond_7

    .line 17
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/s2;->u()I

    move-result v3

    if-lt v13, v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x2

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v3, 0x4

    .line 18
    :cond_7
    :goto_3
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/r1;->h(I)Lcom/google/android/exoplayer2/r1;

    move-result-object v3

    .line 19
    iget-object v11, v10, Lcom/google/android/exoplayer2/p0;->u0:Lcom/google/android/exoplayer2/t0;

    .line 20
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/i;->c(J)J

    move-result-wide v14

    iget-object v0, v10, Lcom/google/android/exoplayer2/p0;->N0:Lcom/google/android/exoplayer2/source/z0;

    move-object/from16 v16, v0

    .line 21
    invoke-virtual/range {v11 .. v16}, Lcom/google/android/exoplayer2/t0;->M0(Ljava/util/List;IJLcom/google/android/exoplayer2/source/z0;)V

    .line 22
    iget-object v0, v10, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-object v0, v0, Lcom/google/android/exoplayer2/r1;->b:Lcom/google/android/exoplayer2/source/z$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/x;->a:Ljava/lang/Object;

    iget-object v1, v3, Lcom/google/android/exoplayer2/r1;->b:Lcom/google/android/exoplayer2/source/z$a;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/x;->a:Ljava/lang/Object;

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v10, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-object v0, v0, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    :goto_4
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    .line 25
    invoke-direct {v10, v3}, Lcom/google/android/exoplayer2/p0;->s2(Lcom/google/android/exoplayer2/r1;)J

    move-result-wide v8

    const/4 v11, -0x1

    move-object/from16 v0, p0

    move-object v1, v3

    move v3, v4

    move v4, v6

    move v6, v7

    move-wide v7, v8

    move v9, v11

    .line 26
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/p0;->g3(Lcom/google/android/exoplayer2/r1;IIZZIJI)V

    return-void
.end method

.method public static synthetic d2(Lcom/google/android/exoplayer2/p0;Lcom/google/android/exoplayer2/t0$e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/p0;->D2(Lcom/google/android/exoplayer2/t0$e;)V

    return-void
.end method

.method public static synthetic e2(Lcom/google/android/exoplayer2/p0;Lcom/google/android/exoplayer2/v1$f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/p0;->E2(Lcom/google/android/exoplayer2/v1$f;)V

    return-void
.end method

.method public static synthetic f2(Lcom/google/android/exoplayer2/r1;ILcom/google/android/exoplayer2/v1$f;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/p0;->U2(Lcom/google/android/exoplayer2/r1;ILcom/google/android/exoplayer2/v1$f;)V

    return-void
.end method

.method private f3()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->P0:Lcom/google/android/exoplayer2/v1$c;

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/p0;->p0:Lcom/google/android/exoplayer2/v1$c;

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/e;->O1(Lcom/google/android/exoplayer2/v1$c;)Lcom/google/android/exoplayer2/v1$c;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/p0;->P0:Lcom/google/android/exoplayer2/v1$c;

    .line 3
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/v1$c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->v0:Lcom/google/android/exoplayer2/util/v;

    const/16 v1, 0xe

    new-instance v2, Lcom/google/android/exoplayer2/i0;

    invoke-direct {v2, p0}, Lcom/google/android/exoplayer2/i0;-><init>(Lcom/google/android/exoplayer2/p0;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/v;->i(ILcom/google/android/exoplayer2/util/v$a;)V

    :cond_0
    return-void
.end method

.method public static synthetic g2(Lcom/google/android/exoplayer2/v1$f;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/p0;->F2(Lcom/google/android/exoplayer2/v1$f;)V

    return-void
.end method

.method private g3(Lcom/google/android/exoplayer2/r1;IIZZIJI)V
    .locals 14

    move-object v6, p0

    move-object v7, p1

    move/from16 v8, p6

    .line 1
    iget-object v9, v6, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    .line 2
    iput-object v7, v6, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    .line 3
    iget-object v0, v9, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    iget-object v1, v7, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/s2;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v10, 0x1

    xor-int/lit8 v5, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v9

    move/from16 v3, p5

    move/from16 v4, p6

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/p0;->p2(Lcom/google/android/exoplayer2/r1;Lcom/google/android/exoplayer2/r1;ZIZ)Landroid/util/Pair;

    move-result-object v0

    .line 6
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 7
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 8
    iget-object v2, v6, Lcom/google/android/exoplayer2/p0;->Q0:Lcom/google/android/exoplayer2/f1;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 9
    iget-object v4, v7, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v4

    if-nez v4, :cond_0

    .line 10
    iget-object v3, v7, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    iget-object v4, v7, Lcom/google/android/exoplayer2/r1;->b:Lcom/google/android/exoplayer2/source/z$a;

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/x;->a:Ljava/lang/Object;

    iget-object v5, v6, Lcom/google/android/exoplayer2/p0;->x0:Lcom/google/android/exoplayer2/s2$b;

    .line 11
    invoke-virtual {v3, v4, v5}, Lcom/google/android/exoplayer2/s2;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/s2$b;)Lcom/google/android/exoplayer2/s2$b;

    move-result-object v3

    iget v3, v3, Lcom/google/android/exoplayer2/s2$b;->c:I

    .line 12
    iget-object v4, v7, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    iget-object v5, v6, Lcom/google/android/exoplayer2/e;->n0:Lcom/google/android/exoplayer2/s2$d;

    invoke-virtual {v4, v3, v5}, Lcom/google/android/exoplayer2/s2;->r(ILcom/google/android/exoplayer2/s2$d;)Lcom/google/android/exoplayer2/s2$d;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/exoplayer2/s2$d;->c:Lcom/google/android/exoplayer2/b1;

    :cond_0
    if-eqz v3, :cond_1

    .line 13
    iget-object v4, v3, Lcom/google/android/exoplayer2/b1;->d:Lcom/google/android/exoplayer2/f1;

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/google/android/exoplayer2/f1;->z:Lcom/google/android/exoplayer2/f1;

    :goto_0
    iput-object v4, v6, Lcom/google/android/exoplayer2/p0;->Q0:Lcom/google/android/exoplayer2/f1;

    .line 14
    :cond_2
    iget-object v4, v9, Lcom/google/android/exoplayer2/r1;->j:Ljava/util/List;

    iget-object v5, v7, Lcom/google/android/exoplayer2/r1;->j:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 15
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/f1;->b()Lcom/google/android/exoplayer2/f1$b;

    move-result-object v2

    iget-object v4, v7, Lcom/google/android/exoplayer2/r1;->j:Ljava/util/List;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/f1$b;->u(Ljava/util/List;)Lcom/google/android/exoplayer2/f1$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/f1$b;->s()Lcom/google/android/exoplayer2/f1;

    move-result-object v2

    .line 16
    :cond_3
    iget-object v4, v6, Lcom/google/android/exoplayer2/p0;->Q0:Lcom/google/android/exoplayer2/f1;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/f1;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v10

    .line 17
    iput-object v2, v6, Lcom/google/android/exoplayer2/p0;->Q0:Lcom/google/android/exoplayer2/f1;

    .line 18
    iget-object v2, v9, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    iget-object v5, v7, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/s2;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 19
    iget-object v2, v6, Lcom/google/android/exoplayer2/p0;->v0:Lcom/google/android/exoplayer2/util/v;

    const/4 v5, 0x0

    new-instance v11, Lcom/google/android/exoplayer2/y;

    move/from16 v12, p2

    invoke-direct {v11, p1, v12}, Lcom/google/android/exoplayer2/y;-><init>(Lcom/google/android/exoplayer2/r1;I)V

    invoke-virtual {v2, v5, v11}, Lcom/google/android/exoplayer2/util/v;->i(ILcom/google/android/exoplayer2/util/v$a;)V

    :cond_4
    if-eqz p5, :cond_5

    move/from16 v2, p9

    .line 20
    invoke-direct {p0, v8, v9, v2}, Lcom/google/android/exoplayer2/p0;->x2(ILcom/google/android/exoplayer2/r1;I)Lcom/google/android/exoplayer2/v1$l;

    move-result-object v2

    move-wide/from16 v11, p7

    .line 21
    invoke-direct {p0, v11, v12}, Lcom/google/android/exoplayer2/p0;->w2(J)Lcom/google/android/exoplayer2/v1$l;

    move-result-object v5

    .line 22
    iget-object v11, v6, Lcom/google/android/exoplayer2/p0;->v0:Lcom/google/android/exoplayer2/util/v;

    const/16 v12, 0xc

    new-instance v13, Lcom/google/android/exoplayer2/h0;

    invoke-direct {v13, v8, v2, v5}, Lcom/google/android/exoplayer2/h0;-><init>(ILcom/google/android/exoplayer2/v1$l;Lcom/google/android/exoplayer2/v1$l;)V

    invoke-virtual {v11, v12, v13}, Lcom/google/android/exoplayer2/util/v;->i(ILcom/google/android/exoplayer2/util/v$a;)V

    :cond_5
    if-eqz v1, :cond_6

    .line 23
    iget-object v1, v6, Lcom/google/android/exoplayer2/p0;->v0:Lcom/google/android/exoplayer2/util/v;

    new-instance v2, Lcom/google/android/exoplayer2/k0;

    invoke-direct {v2, v3, v0}, Lcom/google/android/exoplayer2/k0;-><init>(Lcom/google/android/exoplayer2/b1;I)V

    invoke-virtual {v1, v10, v2}, Lcom/google/android/exoplayer2/util/v;->i(ILcom/google/android/exoplayer2/util/v$a;)V

    .line 24
    :cond_6
    iget-object v0, v9, Lcom/google/android/exoplayer2/r1;->f:Lcom/google/android/exoplayer2/ExoPlaybackException;

    iget-object v1, v7, Lcom/google/android/exoplayer2/r1;->f:Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-eq v0, v1, :cond_7

    if-eqz v1, :cond_7

    .line 25
    iget-object v0, v6, Lcom/google/android/exoplayer2/p0;->v0:Lcom/google/android/exoplayer2/util/v;

    const/16 v1, 0xb

    new-instance v2, Lcom/google/android/exoplayer2/m0;

    invoke-direct {v2, p1}, Lcom/google/android/exoplayer2/m0;-><init>(Lcom/google/android/exoplayer2/r1;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/v;->i(ILcom/google/android/exoplayer2/util/v$a;)V

    .line 26
    :cond_7
    iget-object v0, v9, Lcom/google/android/exoplayer2/r1;->i:Lcom/google/android/exoplayer2/trackselection/p;

    iget-object v1, v7, Lcom/google/android/exoplayer2/r1;->i:Lcom/google/android/exoplayer2/trackselection/p;

    if-eq v0, v1, :cond_8

    .line 27
    iget-object v0, v6, Lcom/google/android/exoplayer2/p0;->r0:Lcom/google/android/exoplayer2/trackselection/o;

    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/p;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/o;->d(Ljava/lang/Object;)V

    .line 28
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/m;

    iget-object v1, v7, Lcom/google/android/exoplayer2/r1;->i:Lcom/google/android/exoplayer2/trackselection/p;

    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/p;->c:[Lcom/google/android/exoplayer2/trackselection/g;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/trackselection/m;-><init>([Lcom/google/android/exoplayer2/trackselection/l;)V

    .line 29
    iget-object v1, v6, Lcom/google/android/exoplayer2/p0;->v0:Lcom/google/android/exoplayer2/util/v;

    const/4 v2, 0x2

    new-instance v3, Lcom/google/android/exoplayer2/a0;

    invoke-direct {v3, p1, v0}, Lcom/google/android/exoplayer2/a0;-><init>(Lcom/google/android/exoplayer2/r1;Lcom/google/android/exoplayer2/trackselection/m;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/util/v;->i(ILcom/google/android/exoplayer2/util/v$a;)V

    .line 30
    :cond_8
    iget-object v0, v9, Lcom/google/android/exoplayer2/r1;->j:Ljava/util/List;

    iget-object v1, v7, Lcom/google/android/exoplayer2/r1;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 31
    iget-object v0, v6, Lcom/google/android/exoplayer2/p0;->v0:Lcom/google/android/exoplayer2/util/v;

    const/4 v1, 0x3

    new-instance v2, Lcom/google/android/exoplayer2/n0;

    invoke-direct {v2, p1}, Lcom/google/android/exoplayer2/n0;-><init>(Lcom/google/android/exoplayer2/r1;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/v;->i(ILcom/google/android/exoplayer2/util/v$a;)V

    :cond_9
    if-eqz v4, :cond_a

    .line 32
    iget-object v0, v6, Lcom/google/android/exoplayer2/p0;->Q0:Lcom/google/android/exoplayer2/f1;

    .line 33
    iget-object v1, v6, Lcom/google/android/exoplayer2/p0;->v0:Lcom/google/android/exoplayer2/util/v;

    const/16 v2, 0xf

    new-instance v3, Lcom/google/android/exoplayer2/l0;

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer2/l0;-><init>(Lcom/google/android/exoplayer2/f1;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/util/v;->i(ILcom/google/android/exoplayer2/util/v$a;)V

    .line 34
    :cond_a
    iget-boolean v0, v9, Lcom/google/android/exoplayer2/r1;->g:Z

    iget-boolean v1, v7, Lcom/google/android/exoplayer2/r1;->g:Z

    if-eq v0, v1, :cond_b

    .line 35
    iget-object v0, v6, Lcom/google/android/exoplayer2/p0;->v0:Lcom/google/android/exoplayer2/util/v;

    const/4 v1, 0x4

    new-instance v2, Lcom/google/android/exoplayer2/t;

    invoke-direct {v2, p1}, Lcom/google/android/exoplayer2/t;-><init>(Lcom/google/android/exoplayer2/r1;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/v;->i(ILcom/google/android/exoplayer2/util/v$a;)V

    .line 36
    :cond_b
    iget v0, v9, Lcom/google/android/exoplayer2/r1;->e:I

    iget v1, v7, Lcom/google/android/exoplayer2/r1;->e:I

    const/4 v2, -0x1

    if-ne v0, v1, :cond_c

    iget-boolean v0, v9, Lcom/google/android/exoplayer2/r1;->l:Z

    iget-boolean v1, v7, Lcom/google/android/exoplayer2/r1;->l:Z

    if-eq v0, v1, :cond_d

    .line 37
    :cond_c
    iget-object v0, v6, Lcom/google/android/exoplayer2/p0;->v0:Lcom/google/android/exoplayer2/util/v;

    new-instance v1, Lcom/google/android/exoplayer2/u;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/u;-><init>(Lcom/google/android/exoplayer2/r1;)V

    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/util/v;->i(ILcom/google/android/exoplayer2/util/v$a;)V

    .line 38
    :cond_d
    iget v0, v9, Lcom/google/android/exoplayer2/r1;->e:I

    iget v1, v7, Lcom/google/android/exoplayer2/r1;->e:I

    if-eq v0, v1, :cond_e

    .line 39
    iget-object v0, v6, Lcom/google/android/exoplayer2/p0;->v0:Lcom/google/android/exoplayer2/util/v;

    const/4 v1, 0x5

    new-instance v3, Lcom/google/android/exoplayer2/v;

    invoke-direct {v3, p1}, Lcom/google/android/exoplayer2/v;-><init>(Lcom/google/android/exoplayer2/r1;)V

    invoke-virtual {v0, v1, v3}, Lcom/google/android/exoplayer2/util/v;->i(ILcom/google/android/exoplayer2/util/v$a;)V

    .line 40
    :cond_e
    iget-boolean v0, v9, Lcom/google/android/exoplayer2/r1;->l:Z

    iget-boolean v1, v7, Lcom/google/android/exoplayer2/r1;->l:Z

    if-eq v0, v1, :cond_f

    .line 41
    iget-object v0, v6, Lcom/google/android/exoplayer2/p0;->v0:Lcom/google/android/exoplayer2/util/v;

    const/4 v1, 0x6

    new-instance v3, Lcom/google/android/exoplayer2/z;

    move/from16 v4, p3

    invoke-direct {v3, p1, v4}, Lcom/google/android/exoplayer2/z;-><init>(Lcom/google/android/exoplayer2/r1;I)V

    invoke-virtual {v0, v1, v3}, Lcom/google/android/exoplayer2/util/v;->i(ILcom/google/android/exoplayer2/util/v$a;)V

    .line 42
    :cond_f
    iget v0, v9, Lcom/google/android/exoplayer2/r1;->m:I

    iget v1, v7, Lcom/google/android/exoplayer2/r1;->m:I

    if-eq v0, v1, :cond_10

    .line 43
    iget-object v0, v6, Lcom/google/android/exoplayer2/p0;->v0:Lcom/google/android/exoplayer2/util/v;

    const/4 v1, 0x7

    new-instance v3, Lcom/google/android/exoplayer2/x;

    invoke-direct {v3, p1}, Lcom/google/android/exoplayer2/x;-><init>(Lcom/google/android/exoplayer2/r1;)V

    invoke-virtual {v0, v1, v3}, Lcom/google/android/exoplayer2/util/v;->i(ILcom/google/android/exoplayer2/util/v$a;)V

    .line 44
    :cond_10
    invoke-static {v9}, Lcom/google/android/exoplayer2/p0;->A2(Lcom/google/android/exoplayer2/r1;)Z

    move-result v0

    invoke-static {p1}, Lcom/google/android/exoplayer2/p0;->A2(Lcom/google/android/exoplayer2/r1;)Z

    move-result v1

    if-eq v0, v1, :cond_11

    .line 45
    iget-object v0, v6, Lcom/google/android/exoplayer2/p0;->v0:Lcom/google/android/exoplayer2/util/v;

    const/16 v1, 0x8

    new-instance v3, Lcom/google/android/exoplayer2/o0;

    invoke-direct {v3, p1}, Lcom/google/android/exoplayer2/o0;-><init>(Lcom/google/android/exoplayer2/r1;)V

    invoke-virtual {v0, v1, v3}, Lcom/google/android/exoplayer2/util/v;->i(ILcom/google/android/exoplayer2/util/v$a;)V

    .line 46
    :cond_11
    iget-object v0, v9, Lcom/google/android/exoplayer2/r1;->n:Lcom/google/android/exoplayer2/t1;

    iget-object v1, v7, Lcom/google/android/exoplayer2/r1;->n:Lcom/google/android/exoplayer2/t1;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/t1;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 47
    iget-object v0, v6, Lcom/google/android/exoplayer2/p0;->v0:Lcom/google/android/exoplayer2/util/v;

    const/16 v1, 0xd

    new-instance v3, Lcom/google/android/exoplayer2/w;

    invoke-direct {v3, p1}, Lcom/google/android/exoplayer2/w;-><init>(Lcom/google/android/exoplayer2/r1;)V

    invoke-virtual {v0, v1, v3}, Lcom/google/android/exoplayer2/util/v;->i(ILcom/google/android/exoplayer2/util/v$a;)V

    :cond_12
    if-eqz p4, :cond_13

    .line 48
    iget-object v0, v6, Lcom/google/android/exoplayer2/p0;->v0:Lcom/google/android/exoplayer2/util/v;

    sget-object v1, Lcom/google/android/exoplayer2/e0;->a:Lcom/google/android/exoplayer2/e0;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/util/v;->i(ILcom/google/android/exoplayer2/util/v$a;)V

    .line 49
    :cond_13
    invoke-direct {p0}, Lcom/google/android/exoplayer2/p0;->f3()V

    .line 50
    iget-object v0, v6, Lcom/google/android/exoplayer2/p0;->v0:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/v;->e()V

    .line 51
    iget-boolean v0, v9, Lcom/google/android/exoplayer2/r1;->o:Z

    iget-boolean v1, v7, Lcom/google/android/exoplayer2/r1;->o:Z

    if-eq v0, v1, :cond_14

    .line 52
    iget-object v0, v6, Lcom/google/android/exoplayer2/p0;->w0:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/q$b;

    .line 53
    iget-boolean v2, v7, Lcom/google/android/exoplayer2/r1;->o:Z

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/q$b;->c0(Z)V

    goto :goto_1

    .line 54
    :cond_14
    iget-boolean v0, v9, Lcom/google/android/exoplayer2/r1;->p:Z

    iget-boolean v1, v7, Lcom/google/android/exoplayer2/r1;->p:Z

    if-eq v0, v1, :cond_15

    .line 55
    iget-object v0, v6, Lcom/google/android/exoplayer2/p0;->w0:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/q$b;

    .line 56
    iget-boolean v2, v7, Lcom/google/android/exoplayer2/r1;->p:Z

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/q$b;->O(Z)V

    goto :goto_2

    :cond_15
    return-void
.end method

.method public static synthetic h2(Lcom/google/android/exoplayer2/r1;Lcom/google/android/exoplayer2/v1$f;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/p0;->P2(Lcom/google/android/exoplayer2/r1;Lcom/google/android/exoplayer2/v1$f;)V

    return-void
.end method

.method public static synthetic i2(Lcom/google/android/exoplayer2/p0;Lcom/google/android/exoplayer2/t0$e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/p0;->C2(Lcom/google/android/exoplayer2/t0$e;)V

    return-void
.end method

.method public static synthetic j2(Lcom/google/android/exoplayer2/r1;ILcom/google/android/exoplayer2/v1$f;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/p0;->Q2(Lcom/google/android/exoplayer2/r1;ILcom/google/android/exoplayer2/v1$f;)V

    return-void
.end method

.method public static synthetic k2(Lcom/google/android/exoplayer2/r1;Lcom/google/android/exoplayer2/v1$f;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/p0;->T2(Lcom/google/android/exoplayer2/r1;Lcom/google/android/exoplayer2/v1$f;)V

    return-void
.end method

.method public static synthetic l2(Lcom/google/android/exoplayer2/r1;Lcom/google/android/exoplayer2/v1$f;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/p0;->R2(Lcom/google/android/exoplayer2/r1;Lcom/google/android/exoplayer2/v1$f;)V

    return-void
.end method

.method private m2(ILjava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/z;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/m1$c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    new-instance v2, Lcom/google/android/exoplayer2/m1$c;

    .line 4
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/z;

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/p0;->z0:Z

    invoke-direct {v2, v3, v4}, Lcom/google/android/exoplayer2/m1$c;-><init>(Lcom/google/android/exoplayer2/source/z;Z)V

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v3, p0, Lcom/google/android/exoplayer2/p0;->y0:Ljava/util/List;

    add-int v4, v1, p1

    new-instance v5, Lcom/google/android/exoplayer2/p0$a;

    iget-object v6, v2, Lcom/google/android/exoplayer2/m1$c;->b:Ljava/lang/Object;

    iget-object v2, v2, Lcom/google/android/exoplayer2/m1$c;->a:Lcom/google/android/exoplayer2/source/r;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/r;->P()Lcom/google/android/exoplayer2/s2;

    move-result-object v2

    invoke-direct {v5, v6, v2}, Lcom/google/android/exoplayer2/p0$a;-><init>(Ljava/lang/Object;Lcom/google/android/exoplayer2/s2;)V

    .line 8
    invoke-interface {v3, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/p0;->N0:Lcom/google/android/exoplayer2/source/z0;

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 11
    invoke-interface {p2, p1, v1}, Lcom/google/android/exoplayer2/source/z0;->g(II)Lcom/google/android/exoplayer2/source/z0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/p0;->N0:Lcom/google/android/exoplayer2/source/z0;

    return-object v0
.end method

.method private n2()Lcom/google/android/exoplayer2/s2;
    .locals 3

    new-instance v0, Lcom/google/android/exoplayer2/a2;

    iget-object v1, p0, Lcom/google/android/exoplayer2/p0;->y0:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/exoplayer2/p0;->N0:Lcom/google/android/exoplayer2/source/z0;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/a2;-><init>(Ljava/util/Collection;Lcom/google/android/exoplayer2/source/z0;)V

    return-object v0
.end method

.method private o2(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/b1;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/z;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/p0;->A0:Lcom/google/android/exoplayer2/source/j0;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/b1;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/source/j0;->c(Lcom/google/android/exoplayer2/b1;)Lcom/google/android/exoplayer2/source/z;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private p2(Lcom/google/android/exoplayer2/r1;Lcom/google/android/exoplayer2/r1;ZIZ)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/r1;",
            "Lcom/google/android/exoplayer2/r1;",
            "ZIZ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    .line 2
    iget-object v1, p1, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v2

    const/4 v3, -0x1

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v4

    const/4 v5, 0x3

    if-eq v2, v4, :cond_1

    .line 8
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 9
    :cond_1
    iget-object v2, p2, Lcom/google/android/exoplayer2/r1;->b:Lcom/google/android/exoplayer2/source/z$a;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/x;->a:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/exoplayer2/p0;->x0:Lcom/google/android/exoplayer2/s2$b;

    .line 10
    invoke-virtual {v0, v2, v4}, Lcom/google/android/exoplayer2/s2;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/s2$b;)Lcom/google/android/exoplayer2/s2$b;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/s2$b;->c:I

    .line 11
    iget-object v4, p0, Lcom/google/android/exoplayer2/e;->n0:Lcom/google/android/exoplayer2/s2$d;

    invoke-virtual {v0, v2, v4}, Lcom/google/android/exoplayer2/s2;->r(ILcom/google/android/exoplayer2/s2$d;)Lcom/google/android/exoplayer2/s2$d;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/s2$d;->a:Ljava/lang/Object;

    .line 12
    iget-object v2, p1, Lcom/google/android/exoplayer2/r1;->b:Lcom/google/android/exoplayer2/source/z$a;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/x;->a:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/exoplayer2/p0;->x0:Lcom/google/android/exoplayer2/s2$b;

    .line 13
    invoke-virtual {v1, v2, v4}, Lcom/google/android/exoplayer2/s2;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/s2$b;)Lcom/google/android/exoplayer2/s2$b;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/s2$b;->c:I

    .line 14
    iget-object v4, p0, Lcom/google/android/exoplayer2/e;->n0:Lcom/google/android/exoplayer2/s2$d;

    invoke-virtual {v1, v2, v4}, Lcom/google/android/exoplayer2/s2;->r(ILcom/google/android/exoplayer2/s2$d;)Lcom/google/android/exoplayer2/s2$d;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/s2$d;->a:Ljava/lang/Object;

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 p1, 0x1

    if-eqz p3, :cond_2

    if-nez p4, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    if-ne p4, p1, :cond_3

    const/4 v5, 0x2

    goto :goto_0

    :cond_3
    if-eqz p5, :cond_4

    .line 16
    :goto_0
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 17
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_5
    if-eqz p3, :cond_6

    if-nez p4, :cond_6

    .line 18
    iget-object p2, p2, Lcom/google/android/exoplayer2/r1;->b:Lcom/google/android/exoplayer2/source/z$a;

    iget-wide p2, p2, Lcom/google/android/exoplayer2/source/x;->d:J

    iget-object p1, p1, Lcom/google/android/exoplayer2/r1;->b:Lcom/google/android/exoplayer2/source/z$a;

    iget-wide p4, p1, Lcom/google/android/exoplayer2/source/x;->d:J

    cmp-long p1, p2, p4

    if-gez p1, :cond_6

    .line 19
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 20
    :cond_6
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private s2(Lcom/google/android/exoplayer2/r1;)J
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/p0;->U0:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/i;->c(J)J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/r1;->b:Lcom/google/android/exoplayer2/source/z$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/x;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-wide v0, p1, Lcom/google/android/exoplayer2/r1;->s:J

    return-wide v0

    .line 5
    :cond_1
    iget-object v0, p1, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    iget-object v1, p1, Lcom/google/android/exoplayer2/r1;->b:Lcom/google/android/exoplayer2/source/z$a;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/r1;->s:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/p0;->Z2(Lcom/google/android/exoplayer2/s2;Lcom/google/android/exoplayer2/source/z$a;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private t2()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-object v0, v0, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/p0;->S0:I

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-object v1, v0, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    iget-object v0, v0, Lcom/google/android/exoplayer2/r1;->b:Lcom/google/android/exoplayer2/source/z$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/x;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/p0;->x0:Lcom/google/android/exoplayer2/s2$b;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/s2;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/s2$b;)Lcom/google/android/exoplayer2/s2$b;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/s2$b;->c:I

    return v0
.end method

.method private u2(Lcom/google/android/exoplayer2/s2;Lcom/google/android/exoplayer2/s2;)Landroid/util/Pair;
    .locals 13
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/s2;",
            "Lcom/google/android/exoplayer2/s2;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p0;->o1()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v2

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, -0x1

    if-nez v2, :cond_3

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p0;->j0()I

    move-result v9

    .line 4
    iget-object v7, p0, Lcom/google/android/exoplayer2/e;->n0:Lcom/google/android/exoplayer2/s2$d;

    iget-object v8, p0, Lcom/google/android/exoplayer2/p0;->x0:Lcom/google/android/exoplayer2/s2$b;

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/i;->c(J)J

    move-result-wide v10

    move-object v6, p1

    .line 6
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/exoplayer2/s2;->n(Lcom/google/android/exoplayer2/s2$d;Lcom/google/android/exoplayer2/s2$b;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v10, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 8
    invoke-virtual {p2, v10}, Lcom/google/android/exoplayer2/s2;->f(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v5, :cond_1

    return-object v0

    .line 9
    :cond_1
    iget-object v6, p0, Lcom/google/android/exoplayer2/e;->n0:Lcom/google/android/exoplayer2/s2$d;

    iget-object v7, p0, Lcom/google/android/exoplayer2/p0;->x0:Lcom/google/android/exoplayer2/s2$b;

    iget v8, p0, Lcom/google/android/exoplayer2/p0;->F0:I

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/p0;->G0:Z

    move-object v11, p1

    move-object v12, p2

    .line 10
    invoke-static/range {v6 .. v12}, Lcom/google/android/exoplayer2/t0;->x0(Lcom/google/android/exoplayer2/s2$d;Lcom/google/android/exoplayer2/s2$b;IZLjava/lang/Object;Lcom/google/android/exoplayer2/s2;Lcom/google/android/exoplayer2/s2;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->x0:Lcom/google/android/exoplayer2/s2$b;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/exoplayer2/s2;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/s2$b;)Lcom/google/android/exoplayer2/s2$b;

    .line 12
    iget-object p1, p0, Lcom/google/android/exoplayer2/p0;->x0:Lcom/google/android/exoplayer2/s2$b;

    iget p1, p1, Lcom/google/android/exoplayer2/s2$b;->c:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/e;->n0:Lcom/google/android/exoplayer2/s2$d;

    .line 13
    invoke-virtual {p2, p1, v0}, Lcom/google/android/exoplayer2/s2;->r(ILcom/google/android/exoplayer2/s2$d;)Lcom/google/android/exoplayer2/s2$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2$d;->d()J

    move-result-wide v0

    .line 14
    invoke-direct {p0, p2, p1, v0, v1}, Lcom/google/android/exoplayer2/p0;->v2(Lcom/google/android/exoplayer2/s2;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 15
    :cond_2
    invoke-direct {p0, p2, v5, v3, v4}, Lcom/google/android/exoplayer2/p0;->v2(Lcom/google/android/exoplayer2/s2;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 16
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_5

    goto :goto_2

    .line 17
    :cond_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/p0;->t2()I

    move-result v5

    :goto_2
    if-eqz p1, :cond_6

    move-wide v0, v3

    .line 18
    :cond_6
    invoke-direct {p0, p2, v5, v0, v1}, Lcom/google/android/exoplayer2/p0;->v2(Lcom/google/android/exoplayer2/s2;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private v2(Lcom/google/android/exoplayer2/s2;IJ)Landroid/util/Pair;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/s2;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iput p2, p0, Lcom/google/android/exoplayer2/p0;->S0:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, p1

    if-nez v0, :cond_0

    const-wide/16 p3, 0x0

    .line 3
    :cond_0
    iput-wide p3, p0, Lcom/google/android/exoplayer2/p0;->U0:J

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/google/android/exoplayer2/p0;->T0:I

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/s2;->u()I

    move-result v0

    if-lt p2, v0, :cond_3

    .line 6
    :cond_2
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/p0;->G0:Z

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/s2;->e(Z)I

    move-result p2

    .line 7
    iget-object p3, p0, Lcom/google/android/exoplayer2/e;->n0:Lcom/google/android/exoplayer2/s2$d;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/s2;->r(ILcom/google/android/exoplayer2/s2$d;)Lcom/google/android/exoplayer2/s2$d;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/s2$d;->d()J

    move-result-wide p3

    :cond_3
    move v3, p2

    .line 8
    iget-object v1, p0, Lcom/google/android/exoplayer2/e;->n0:Lcom/google/android/exoplayer2/s2$d;

    iget-object v2, p0, Lcom/google/android/exoplayer2/p0;->x0:Lcom/google/android/exoplayer2/s2$b;

    invoke-static {p3, p4}, Lcom/google/android/exoplayer2/i;->c(J)J

    move-result-wide v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/s2;->n(Lcom/google/android/exoplayer2/s2$d;Lcom/google/android/exoplayer2/s2$b;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private w2(J)Lcom/google/android/exoplayer2/v1$l;
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p0;->j0()I

    move-result v2

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-object v0, v0, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-object v1, v0, Lcom/google/android/exoplayer2/r1;->b:Lcom/google/android/exoplayer2/source/z$a;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/x;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, v0, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    iget-object v3, p0, Lcom/google/android/exoplayer2/p0;->x0:Lcom/google/android/exoplayer2/s2$b;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/exoplayer2/s2;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/s2$b;)Lcom/google/android/exoplayer2/s2$b;

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-object v0, v0, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/s2;->f(Ljava/lang/Object;)I

    move-result v0

    .line 6
    iget-object v3, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-object v3, v3, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    iget-object v4, p0, Lcom/google/android/exoplayer2/e;->n0:Lcom/google/android/exoplayer2/s2$d;

    invoke-virtual {v3, v2, v4}, Lcom/google/android/exoplayer2/s2;->r(ILcom/google/android/exoplayer2/s2$d;)Lcom/google/android/exoplayer2/s2$d;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/exoplayer2/s2$d;->a:Ljava/lang/Object;

    move v4, v0

    move-object v11, v3

    move-object v3, v1

    move-object v1, v11

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    move-object v3, v1

    const/4 v4, -0x1

    .line 7
    :goto_0
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/i;->d(J)J

    move-result-wide v5

    .line 8
    new-instance p1, Lcom/google/android/exoplayer2/v1$l;

    .line 9
    iget-object p2, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-object p2, p2, Lcom/google/android/exoplayer2/r1;->b:Lcom/google/android/exoplayer2/source/z$a;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/x;->c()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 10
    iget-object p2, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    invoke-static {p2}, Lcom/google/android/exoplayer2/p0;->y2(Lcom/google/android/exoplayer2/r1;)J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/i;->d(J)J

    move-result-wide v7

    goto :goto_1

    :cond_1
    move-wide v7, v5

    .line 11
    :goto_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-object p2, p2, Lcom/google/android/exoplayer2/r1;->b:Lcom/google/android/exoplayer2/source/z$a;

    iget v9, p2, Lcom/google/android/exoplayer2/source/x;->b:I

    iget v10, p2, Lcom/google/android/exoplayer2/source/x;->c:I

    move-object v0, p1

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/v1$l;-><init>(Ljava/lang/Object;ILjava/lang/Object;IJJII)V

    return-object p1
.end method

.method private x2(ILcom/google/android/exoplayer2/r1;I)Lcom/google/android/exoplayer2/v1$l;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    new-instance v2, Lcom/google/android/exoplayer2/s2$b;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/s2$b;-><init>()V

    .line 2
    iget-object v3, v1, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 3
    iget-object v3, v1, Lcom/google/android/exoplayer2/r1;->b:Lcom/google/android/exoplayer2/source/z$a;

    iget-object v5, v3, Lcom/google/android/exoplayer2/source/x;->a:Ljava/lang/Object;

    .line 4
    iget-object v3, v1, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    invoke-virtual {v3, v5, v2}, Lcom/google/android/exoplayer2/s2;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/s2$b;)Lcom/google/android/exoplayer2/s2$b;

    .line 5
    iget v3, v2, Lcom/google/android/exoplayer2/s2$b;->c:I

    .line 6
    iget-object v6, v1, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/s2;->f(Ljava/lang/Object;)I

    move-result v6

    .line 7
    iget-object v7, v1, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    iget-object v8, v0, Lcom/google/android/exoplayer2/e;->n0:Lcom/google/android/exoplayer2/s2$d;

    invoke-virtual {v7, v3, v8}, Lcom/google/android/exoplayer2/s2;->r(ILcom/google/android/exoplayer2/s2$d;)Lcom/google/android/exoplayer2/s2$d;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/exoplayer2/s2$d;->a:Ljava/lang/Object;

    move v10, v3

    move-object v11, v5

    move v12, v6

    move-object v9, v7

    goto :goto_0

    :cond_0
    move/from16 v10, p3

    move-object v9, v5

    move-object v11, v9

    const/4 v12, -0x1

    :goto_0
    if-nez p1, :cond_2

    .line 8
    iget-wide v5, v2, Lcom/google/android/exoplayer2/s2$b;->e:J

    iget-wide v7, v2, Lcom/google/android/exoplayer2/s2$b;->d:J

    add-long/2addr v5, v7

    .line 9
    iget-object v3, v1, Lcom/google/android/exoplayer2/r1;->b:Lcom/google/android/exoplayer2/source/z$a;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/x;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10
    iget-object v3, v1, Lcom/google/android/exoplayer2/r1;->b:Lcom/google/android/exoplayer2/source/z$a;

    iget v4, v3, Lcom/google/android/exoplayer2/source/x;->b:I

    iget v3, v3, Lcom/google/android/exoplayer2/source/x;->c:I

    .line 11
    invoke-virtual {v2, v4, v3}, Lcom/google/android/exoplayer2/s2$b;->e(II)J

    move-result-wide v5

    .line 12
    invoke-static/range {p2 .. p2}, Lcom/google/android/exoplayer2/p0;->y2(Lcom/google/android/exoplayer2/r1;)J

    move-result-wide v2

    goto :goto_2

    .line 13
    :cond_1
    iget-object v2, v1, Lcom/google/android/exoplayer2/r1;->b:Lcom/google/android/exoplayer2/source/z$a;

    iget v2, v2, Lcom/google/android/exoplayer2/source/x;->e:I

    if-eq v2, v4, :cond_4

    iget-object v2, v0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-object v2, v2, Lcom/google/android/exoplayer2/r1;->b:Lcom/google/android/exoplayer2/source/z$a;

    .line 14
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/x;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 15
    iget-object v2, v0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    invoke-static {v2}, Lcom/google/android/exoplayer2/p0;->y2(Lcom/google/android/exoplayer2/r1;)J

    move-result-wide v5

    goto :goto_1

    .line 16
    :cond_2
    iget-object v3, v1, Lcom/google/android/exoplayer2/r1;->b:Lcom/google/android/exoplayer2/source/z$a;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/x;->c()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 17
    iget-wide v5, v1, Lcom/google/android/exoplayer2/r1;->s:J

    .line 18
    invoke-static/range {p2 .. p2}, Lcom/google/android/exoplayer2/p0;->y2(Lcom/google/android/exoplayer2/r1;)J

    move-result-wide v2

    goto :goto_2

    .line 19
    :cond_3
    iget-wide v2, v2, Lcom/google/android/exoplayer2/s2$b;->e:J

    iget-wide v4, v1, Lcom/google/android/exoplayer2/r1;->s:J

    add-long v5, v2, v4

    :cond_4
    :goto_1
    move-wide v2, v5

    .line 20
    :goto_2
    new-instance v4, Lcom/google/android/exoplayer2/v1$l;

    .line 21
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/i;->d(J)J

    move-result-wide v13

    .line 22
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/i;->d(J)J

    move-result-wide v15

    iget-object v1, v1, Lcom/google/android/exoplayer2/r1;->b:Lcom/google/android/exoplayer2/source/z$a;

    iget v2, v1, Lcom/google/android/exoplayer2/source/x;->b:I

    iget v1, v1, Lcom/google/android/exoplayer2/source/x;->c:I

    move-object v8, v4

    move/from16 v17, v2

    move/from16 v18, v1

    invoke-direct/range {v8 .. v18}, Lcom/google/android/exoplayer2/v1$l;-><init>(Ljava/lang/Object;ILjava/lang/Object;IJJII)V

    return-object v4
.end method

.method private static y2(Lcom/google/android/exoplayer2/r1;)J
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/s2$d;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/s2$d;-><init>()V

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/s2$b;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/s2$b;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    iget-object v3, p0, Lcom/google/android/exoplayer2/r1;->b:Lcom/google/android/exoplayer2/source/z$a;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/x;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/exoplayer2/s2;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/s2$b;)Lcom/google/android/exoplayer2/s2$b;

    .line 4
    iget-wide v2, p0, Lcom/google/android/exoplayer2/r1;->c:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 5
    iget-object p0, p0, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    iget v1, v1, Lcom/google/android/exoplayer2/s2$b;->c:I

    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer2/s2;->r(ILcom/google/android/exoplayer2/s2$d;)Lcom/google/android/exoplayer2/s2$d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/s2$d;->e()J

    move-result-wide v0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/s2$b;->q()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/r1;->c:J

    add-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method private z2(Lcom/google/android/exoplayer2/t0$e;)V
    .locals 12

    .line 1
    iget v1, p0, Lcom/google/android/exoplayer2/p0;->H0:I

    iget v2, p1, Lcom/google/android/exoplayer2/t0$e;->c:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/p0;->H0:I

    .line 2
    iget-boolean v2, p1, Lcom/google/android/exoplayer2/t0$e;->d:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 3
    iget v2, p1, Lcom/google/android/exoplayer2/t0$e;->e:I

    iput v2, p0, Lcom/google/android/exoplayer2/p0;->I0:I

    .line 4
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/p0;->J0:Z

    .line 5
    :cond_0
    iget-boolean v2, p1, Lcom/google/android/exoplayer2/t0$e;->f:Z

    if-eqz v2, :cond_1

    .line 6
    iget v2, p1, Lcom/google/android/exoplayer2/t0$e;->g:I

    iput v2, p0, Lcom/google/android/exoplayer2/p0;->K0:I

    :cond_1
    if-nez v1, :cond_b

    .line 7
    iget-object v1, p1, Lcom/google/android/exoplayer2/t0$e;->b:Lcom/google/android/exoplayer2/r1;

    iget-object v1, v1, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    .line 8
    iget-object v2, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-object v2, v2, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    .line 9
    iput v2, p0, Lcom/google/android/exoplayer2/p0;->S0:I

    const-wide/16 v5, 0x0

    .line 10
    iput-wide v5, p0, Lcom/google/android/exoplayer2/p0;->U0:J

    .line 11
    iput v4, p0, Lcom/google/android/exoplayer2/p0;->T0:I

    .line 12
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v2

    if-nez v2, :cond_4

    .line 13
    move-object v2, v1

    check-cast v2, Lcom/google/android/exoplayer2/a2;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/a2;->K()Ljava/util/List;

    move-result-object v2

    .line 14
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/exoplayer2/p0;->y0:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    const/4 v5, 0x0

    .line 15
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 16
    iget-object v6, p0, Lcom/google/android/exoplayer2/p0;->y0:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/p0$a;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/s2;

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/p0$a;->b(Lcom/google/android/exoplayer2/p0$a;Lcom/google/android/exoplayer2/s2;)Lcom/google/android/exoplayer2/s2;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/p0;->J0:Z

    if-eqz v2, :cond_a

    .line 18
    iget-object v2, p1, Lcom/google/android/exoplayer2/t0$e;->b:Lcom/google/android/exoplayer2/r1;

    iget-object v2, v2, Lcom/google/android/exoplayer2/r1;->b:Lcom/google/android/exoplayer2/source/z$a;

    iget-object v7, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-object v7, v7, Lcom/google/android/exoplayer2/r1;->b:Lcom/google/android/exoplayer2/source/z$a;

    .line 19
    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/source/x;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p1, Lcom/google/android/exoplayer2/t0$e;->b:Lcom/google/android/exoplayer2/r1;

    iget-wide v7, v2, Lcom/google/android/exoplayer2/r1;->d:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-wide v10, v2, Lcom/google/android/exoplayer2/r1;->s:J

    cmp-long v2, v7, v10

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :cond_6
    :goto_2
    if-eqz v3, :cond_9

    .line 20
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/google/android/exoplayer2/t0$e;->b:Lcom/google/android/exoplayer2/r1;

    iget-object v2, v2, Lcom/google/android/exoplayer2/r1;->b:Lcom/google/android/exoplayer2/source/z$a;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/x;->c()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_3

    .line 21
    :cond_7
    iget-object v2, p1, Lcom/google/android/exoplayer2/t0$e;->b:Lcom/google/android/exoplayer2/r1;

    iget-object v5, v2, Lcom/google/android/exoplayer2/r1;->b:Lcom/google/android/exoplayer2/source/z$a;

    iget-wide v6, v2, Lcom/google/android/exoplayer2/r1;->d:J

    invoke-direct {p0, v1, v5, v6, v7}, Lcom/google/android/exoplayer2/p0;->Z2(Lcom/google/android/exoplayer2/s2;Lcom/google/android/exoplayer2/source/z$a;J)J

    move-result-wide v1

    goto :goto_4

    .line 22
    :cond_8
    :goto_3
    iget-object v1, p1, Lcom/google/android/exoplayer2/t0$e;->b:Lcom/google/android/exoplayer2/r1;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/r1;->d:J

    :goto_4
    move-wide v7, v1

    goto :goto_5

    :cond_9
    move-wide v7, v5

    :goto_5
    move v5, v3

    goto :goto_6

    :cond_a
    move-wide v7, v5

    const/4 v5, 0x0

    .line 23
    :goto_6
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/p0;->J0:Z

    .line 24
    iget-object v1, p1, Lcom/google/android/exoplayer2/t0$e;->b:Lcom/google/android/exoplayer2/r1;

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/exoplayer2/p0;->K0:I

    const/4 v4, 0x0

    iget v6, p0, Lcom/google/android/exoplayer2/p0;->I0:I

    const/4 v9, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/p0;->g3(Lcom/google/android/exoplayer2/r1;IIZZIJI)V

    :cond_b
    return-void
.end method


# virtual methods
.method public A()Lcom/google/android/exoplayer2/video/b0;
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/video/b0;->i:Lcom/google/android/exoplayer2/video/b0;

    return-object v0
.end method

.method public A0()Lcom/google/android/exoplayer2/s2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-object v0, v0, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    return-object v0
.end method

.method public B()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public B0()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->C0:Landroid/os/Looper;

    return-object v0
.end method

.method public C()Lcom/google/android/exoplayer2/device/b;
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/device/b;->f:Lcom/google/android/exoplayer2/device/b;

    return-object v0
.end method

.method public C0()Lcom/google/android/exoplayer2/trackselection/m;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/m;

    iget-object v1, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-object v1, v1, Lcom/google/android/exoplayer2/r1;->i:Lcom/google/android/exoplayer2/trackselection/p;

    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/p;->c:[Lcom/google/android/exoplayer2/trackselection/g;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/trackselection/m;-><init>([Lcom/google/android/exoplayer2/trackselection/l;)V

    return-object v0
.end method

.method public C1(III)V
    .locals 11

    const/4 v3, 0x1

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    .line 1
    iget-object v4, p0, Lcom/google/android/exoplayer2/p0;->y0:Ljava/util/List;

    .line 2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gt p2, v4, :cond_0

    if-ltz p3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 3
    :goto_0
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p0;->A0()Lcom/google/android/exoplayer2/s2;

    move-result-object v4

    .line 5
    iget v5, p0, Lcom/google/android/exoplayer2/p0;->H0:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/google/android/exoplayer2/p0;->H0:I

    .line 6
    iget-object v3, p0, Lcom/google/android/exoplayer2/p0;->y0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int v5, p2, p1

    sub-int/2addr v3, v5

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 7
    iget-object v3, p0, Lcom/google/android/exoplayer2/p0;->y0:Ljava/util/List;

    invoke-static {v3, p1, p2, v2}, Lcom/google/android/exoplayer2/util/z0;->O0(Ljava/util/List;III)V

    .line 8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/p0;->n2()Lcom/google/android/exoplayer2/s2;

    move-result-object v3

    .line 9
    iget-object v5, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    .line 10
    invoke-direct {p0, v4, v3}, Lcom/google/android/exoplayer2/p0;->u2(Lcom/google/android/exoplayer2/s2;Lcom/google/android/exoplayer2/s2;)Landroid/util/Pair;

    move-result-object v4

    .line 11
    invoke-direct {p0, v5, v3, v4}, Lcom/google/android/exoplayer2/p0;->X2(Lcom/google/android/exoplayer2/r1;Lcom/google/android/exoplayer2/s2;Landroid/util/Pair;)Lcom/google/android/exoplayer2/r1;

    move-result-object v3

    .line 12
    iget-object v4, p0, Lcom/google/android/exoplayer2/p0;->u0:Lcom/google/android/exoplayer2/t0;

    iget-object v5, p0, Lcom/google/android/exoplayer2/p0;->N0:Lcom/google/android/exoplayer2/source/z0;

    invoke-virtual {v4, p1, p2, v2, v5}, Lcom/google/android/exoplayer2/t0;->c0(IIILcom/google/android/exoplayer2/source/z0;)V

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, -0x1

    move-object v0, p0

    move-object v1, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-wide v7, v8

    move v9, v10

    .line 13
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/p0;->g3(Lcom/google/android/exoplayer2/r1;IIZZIJI)V

    return-void
.end method

.method public D()V
    .locals 0

    return-void
.end method

.method public D0(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->q0:[Lcom/google/android/exoplayer2/e2;

    aget-object p1, v0, p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/e2;->getTrackType()I

    move-result p1

    return p1
.end method

.method public G(Landroid/view/SurfaceView;)V
    .locals 0
    .param p1    # Landroid/view/SurfaceView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public G1(Lcom/google/android/exoplayer2/z1$b;)Lcom/google/android/exoplayer2/z1;
    .locals 8

    .line 1
    new-instance v7, Lcom/google/android/exoplayer2/z1;

    iget-object v1, p0, Lcom/google/android/exoplayer2/p0;->u0:Lcom/google/android/exoplayer2/t0;

    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-object v3, v0, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p0;->j0()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/p0;->E0:Lcom/google/android/exoplayer2/util/d;

    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->u0:Lcom/google/android/exoplayer2/t0;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/t0;->C()Landroid/os/Looper;

    move-result-object v6

    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/z1;-><init>(Lcom/google/android/exoplayer2/z1$a;Lcom/google/android/exoplayer2/z1$b;Lcom/google/android/exoplayer2/s2;ILcom/google/android/exoplayer2/util/d;Landroid/os/Looper;)V

    return-object v7
.end method

.method public H()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public H0()Lcom/google/android/exoplayer2/q$f;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public H1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/p0;->G0:Z

    return v0
.end method

.method public I(I)V
    .locals 0

    return-void
.end method

.method public I0(Lcom/google/android/exoplayer2/source/z;J)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/google/android/exoplayer2/p0;->w0(Ljava/util/List;IJ)V

    return-void
.end method

.method public I1()J
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-object v0, v0, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/p0;->U0:J

    return-wide v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-object v1, v0, Lcom/google/android/exoplayer2/r1;->k:Lcom/google/android/exoplayer2/source/z$a;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/x;->d:J

    iget-object v3, v0, Lcom/google/android/exoplayer2/r1;->b:Lcom/google/android/exoplayer2/source/z$a;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/x;->d:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 4
    iget-object v0, v0, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p0;->j0()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/e;->n0:Lcom/google/android/exoplayer2/s2$d;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/s2;->r(ILcom/google/android/exoplayer2/s2$d;)Lcom/google/android/exoplayer2/s2$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2$d;->f()J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_1
    iget-wide v0, v0, Lcom/google/android/exoplayer2/r1;->q:J

    .line 6
    iget-object v2, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-object v2, v2, Lcom/google/android/exoplayer2/r1;->k:Lcom/google/android/exoplayer2/source/z$a;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/x;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-object v1, v0, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    iget-object v0, v0, Lcom/google/android/exoplayer2/r1;->k:Lcom/google/android/exoplayer2/source/z$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/x;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/p0;->x0:Lcom/google/android/exoplayer2/s2$b;

    .line 8
    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/s2;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/s2$b;)Lcom/google/android/exoplayer2/s2$b;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-object v1, v1, Lcom/google/android/exoplayer2/r1;->k:Lcom/google/android/exoplayer2/source/z$a;

    iget v1, v1, Lcom/google/android/exoplayer2/source/x;->b:I

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/s2$b;->i(I)J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    .line 11
    iget-wide v0, v0, Lcom/google/android/exoplayer2/s2$b;->d:J

    goto :goto_0

    :cond_2
    move-wide v0, v1

    .line 12
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-object v3, v2, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    iget-object v2, v2, Lcom/google/android/exoplayer2/r1;->k:Lcom/google/android/exoplayer2/source/z$a;

    .line 13
    invoke-direct {p0, v3, v2, v0, v1}, Lcom/google/android/exoplayer2/p0;->Z2(Lcom/google/android/exoplayer2/s2;Lcom/google/android/exoplayer2/source/z$a;J)J

    move-result-wide v0

    .line 14
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/i;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public J0(Lcom/google/android/exoplayer2/source/z;ZZ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/p0;->K1(Lcom/google/android/exoplayer2/source/z;Z)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p0;->a()V

    return-void
.end method

.method public K()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-object v0, v0, Lcom/google/android/exoplayer2/r1;->b:Lcom/google/android/exoplayer2/source/z$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/x;->c()Z

    move-result v0

    return v0
.end method

.method public K0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/p0;->O0:Z

    return v0
.end method

.method public K1(Lcom/google/android/exoplayer2/source/z;Z)V
    .locals 0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/p0;->p0(Ljava/util/List;Z)V

    return-void
.end method

.method public L()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/r1;->r:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/i;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public L1()Lcom/google/android/exoplayer2/f1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->Q0:Lcom/google/android/exoplayer2/f1;

    return-object v0
.end method

.method public N0()Lcom/google/android/exoplayer2/v1$c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->P0:Lcom/google/android/exoplayer2/v1$c;

    return-object v0
.end method

.method public O()Lcom/google/android/exoplayer2/util/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->E0:Lcom/google/android/exoplayer2/util/d;

    return-object v0
.end method

.method public P()Lcom/google/android/exoplayer2/trackselection/o;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->r0:Lcom/google/android/exoplayer2/trackselection/o;

    return-object v0
.end method

.method public Q(Lcom/google/android/exoplayer2/source/z;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/p0;->f1(Ljava/util/List;)V

    return-void
.end method

.method public Q0()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/r1;->l:Z

    return v0
.end method

.method public R0(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/p0;->G0:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/p0;->G0:Z

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->u0:Lcom/google/android/exoplayer2/t0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/t0;->Y0(Z)V

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->v0:Lcom/google/android/exoplayer2/util/v;

    const/16 v1, 0xa

    new-instance v2, Lcom/google/android/exoplayer2/b0;

    invoke-direct {v2, p1}, Lcom/google/android/exoplayer2/b0;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/v;->i(ILcom/google/android/exoplayer2/util/v$a;)V

    .line 5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/p0;->f3()V

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/p0;->v0:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->e()V

    :cond_0
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

    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-object v0, v0, Lcom/google/android/exoplayer2/r1;->j:Ljava/util/List;

    return-object v0
.end method

.method public S0(Lcom/google/android/exoplayer2/j2;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/j2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/google/android/exoplayer2/j2;->g:Lcom/google/android/exoplayer2/j2;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->M0:Lcom/google/android/exoplayer2/j2;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/j2;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/p0;->M0:Lcom/google/android/exoplayer2/j2;

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->u0:Lcom/google/android/exoplayer2/t0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/t0;->W0(Lcom/google/android/exoplayer2/j2;)V

    :cond_1
    return-void
.end method

.method public T0()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->q0:[Lcom/google/android/exoplayer2/e2;

    array-length v0, v0

    return v0
.end method

.method public V(Lcom/google/android/exoplayer2/source/z;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/p0;->h0(Ljava/util/List;)V

    return-void
.end method

.method public V0(ILjava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/z;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p0;->A0()Lcom/google/android/exoplayer2/s2;

    move-result-object v1

    .line 3
    iget v2, p0, Lcom/google/android/exoplayer2/p0;->H0:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer2/p0;->H0:I

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/p0;->m2(ILjava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/p0;->n2()Lcom/google/android/exoplayer2/s2;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    .line 7
    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/p0;->u2(Lcom/google/android/exoplayer2/s2;Lcom/google/android/exoplayer2/s2;)Landroid/util/Pair;

    move-result-object v1

    .line 8
    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/exoplayer2/p0;->X2(Lcom/google/android/exoplayer2/r1;Lcom/google/android/exoplayer2/s2;Landroid/util/Pair;)Lcom/google/android/exoplayer2/r1;

    move-result-object v4

    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->u0:Lcom/google/android/exoplayer2/t0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/p0;->N0:Lcom/google/android/exoplayer2/source/z0;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/t0;->l(ILjava/util/List;Lcom/google/android/exoplayer2/source/z0;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x5

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, -0x1

    move-object v3, p0

    .line 10
    invoke-direct/range {v3 .. v12}, Lcom/google/android/exoplayer2/p0;->g3(Lcom/google/android/exoplayer2/r1;IIZZIJI)V

    return-void
.end method

.method public W(Lcom/google/android/exoplayer2/v1$h;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/p0;->g0(Lcom/google/android/exoplayer2/v1$f;)V

    return-void
.end method

.method public Y(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/b1;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/p0;->o2(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/p0;->p0(Ljava/util/List;Z)V

    return-void
.end method

.method public Y0()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-object v0, v0, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/p0;->T0:I

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-object v1, v0, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    iget-object v0, v0, Lcom/google/android/exoplayer2/r1;->b:Lcom/google/android/exoplayer2/source/z$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/x;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/s2;->f(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public Y2(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->Q0:Lcom/google/android/exoplayer2/f1;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/f1;->b()Lcom/google/android/exoplayer2/f1$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/f1$b;->t(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/f1$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/f1$b;->s()Lcom/google/android/exoplayer2/f1;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->Q0:Lcom/google/android/exoplayer2/f1;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/f1;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/p0;->Q0:Lcom/google/android/exoplayer2/f1;

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/p0;->v0:Lcom/google/android/exoplayer2/util/v;

    const/16 v0, 0xf

    new-instance v1, Lcom/google/android/exoplayer2/j0;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/j0;-><init>(Lcom/google/android/exoplayer2/p0;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/util/v;->l(ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public Z(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/p0;->L0:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/p0;->L0:Z

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->u0:Lcom/google/android/exoplayer2/t0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/t0;->J0(Z)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/ExoTimeoutException;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ExoTimeoutException;-><init>(I)V

    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/p0;->e3(ZLcom/google/android/exoplayer2/ExoPlaybackException;)V

    :cond_0
    return-void
.end method

.method public a()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget v1, v0, Lcom/google/android/exoplayer2/r1;->e:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/r1;->f(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/r1;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    .line 4
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/r1;->h(I)Lcom/google/android/exoplayer2/r1;

    move-result-object v4

    .line 5
    iget v0, p0, Lcom/google/android/exoplayer2/p0;->H0:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/p0;->H0:I

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->u0:Lcom/google/android/exoplayer2/t0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/t0;->h0()V

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x5

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, -0x1

    move-object v3, p0

    .line 7
    invoke-direct/range {v3 .. v12}, Lcom/google/android/exoplayer2/p0;->g3(Lcom/google/android/exoplayer2/r1;IIZZIJI)V

    return-void
.end method

.method public a0(ILcom/google/android/exoplayer2/source/z;)V
    .locals 0

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/p0;->V0(ILjava/util/List;)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/r1;->g:Z

    return v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget v0, v0, Lcom/google/android/exoplayer2/r1;->e:I

    return v0
.end method

.method public c1(Lcom/google/android/exoplayer2/v1$f;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->v0:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/v;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public d1()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p0;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-object v0, v0, Lcom/google/android/exoplayer2/r1;->b:Lcom/google/android/exoplayer2/source/z$a;

    iget v0, v0, Lcom/google/android/exoplayer2/source/x;->c:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public d3(ZII)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/r1;->l:Z

    if-ne v1, p1, :cond_0

    iget v1, v0, Lcom/google/android/exoplayer2/r1;->m:I

    if-ne v1, p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/p0;->H0:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/p0;->H0:I

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/r1;->e(ZI)Lcom/google/android/exoplayer2/r1;

    move-result-object v3

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->u0:Lcom/google/android/exoplayer2/t0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/t0;->Q0(ZI)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x5

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v11, -0x1

    move-object v2, p0

    move v5, p3

    .line 5
    invoke-direct/range {v2 .. v11}, Lcom/google/android/exoplayer2/p0;->g3(Lcom/google/android/exoplayer2/r1;IIZZIJI)V

    return-void
.end method

.method public e()Lcom/google/android/exoplayer2/t1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-object v0, v0, Lcom/google/android/exoplayer2/r1;->n:Lcom/google/android/exoplayer2/t1;

    return-object v0
.end method

.method public e3(ZLcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 12
    .param p2    # Lcom/google/android/exoplayer2/ExoPlaybackException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/p0;->y0:Ljava/util/List;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/p0;->a3(II)Lcom/google/android/exoplayer2/r1;

    move-result-object p1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/r1;->f(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/r1;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-object v1, p1, Lcom/google/android/exoplayer2/r1;->b:Lcom/google/android/exoplayer2/source/z$a;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/r1;->b(Lcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/r1;

    move-result-object p1

    .line 6
    iget-wide v1, p1, Lcom/google/android/exoplayer2/r1;->s:J

    iput-wide v1, p1, Lcom/google/android/exoplayer2/r1;->q:J

    const-wide/16 v1, 0x0

    .line 7
    iput-wide v1, p1, Lcom/google/android/exoplayer2/r1;->r:J

    :goto_0
    const/4 v1, 0x1

    .line 8
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/r1;->h(I)Lcom/google/android/exoplayer2/r1;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 9
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/r1;->f(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/r1;

    move-result-object p1

    :cond_1
    move-object v3, p1

    .line 10
    iget p1, p0, Lcom/google/android/exoplayer2/p0;->H0:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/exoplayer2/p0;->H0:I

    .line 11
    iget-object p1, p0, Lcom/google/android/exoplayer2/p0;->u0:Lcom/google/android/exoplayer2/t0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/t0;->k1()V

    .line 12
    iget-object p1, v3, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-object p1, p1, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x4

    .line 14
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/p0;->s2(Lcom/google/android/exoplayer2/r1;)J

    move-result-wide v9

    const/4 v11, -0x1

    move-object v2, p0

    .line 15
    invoke-direct/range {v2 .. v11}, Lcom/google/android/exoplayer2/p0;->g3(Lcom/google/android/exoplayer2/r1;IIZZIJI)V

    return-void
.end method

.method public f(F)V
    .locals 0

    return-void
.end method

.method public f0(Lcom/google/android/exoplayer2/q$b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->w0:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

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

    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->y0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/p0;->V0(ILjava/util/List;)V

    return-void
.end method

.method public g(Lcom/google/android/exoplayer2/t1;)V
    .locals 11

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/google/android/exoplayer2/t1;->d:Lcom/google/android/exoplayer2/t1;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-object v0, v0, Lcom/google/android/exoplayer2/r1;->n:Lcom/google/android/exoplayer2/t1;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/t1;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/r1;->g(Lcom/google/android/exoplayer2/t1;)Lcom/google/android/exoplayer2/r1;

    move-result-object v2

    .line 4
    iget v0, p0, Lcom/google/android/exoplayer2/p0;->H0:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/p0;->H0:I

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->u0:Lcom/google/android/exoplayer2/t0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/t0;->S0(Lcom/google/android/exoplayer2/t1;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, -0x1

    move-object v1, p0

    .line 6
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/p0;->g3(Lcom/google/android/exoplayer2/r1;IIZZIJI)V

    return-void
.end method

.method public g0(Lcom/google/android/exoplayer2/v1$f;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->v0:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/v;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public getAudioAttributes()Lcom/google/android/exoplayer2/audio/e;
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/audio/e;->f:Lcom/google/android/exoplayer2/audio/e;

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/p0;->s2(Lcom/google/android/exoplayer2/r1;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/i;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p0;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-object v1, v0, Lcom/google/android/exoplayer2/r1;->b:Lcom/google/android/exoplayer2/source/z$a;

    .line 3
    iget-object v0, v0, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/x;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/exoplayer2/p0;->x0:Lcom/google/android/exoplayer2/s2$b;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/s2;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/s2$b;)Lcom/google/android/exoplayer2/s2$b;

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->x0:Lcom/google/android/exoplayer2/s2$b;

    iget v2, v1, Lcom/google/android/exoplayer2/source/x;->b:I

    iget v1, v1, Lcom/google/android/exoplayer2/source/x;->c:I

    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/s2$b;->e(II)J

    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/i;->d(J)J

    move-result-wide v0

    return-wide v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/e;->X0()J

    move-result-wide v0

    return-wide v0
.end method

.method public h(Landroid/view/Surface;)V
    .locals 0
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

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

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/p0;->p0(Ljava/util/List;Z)V

    return-void
.end method

.method public i(Landroid/view/Surface;)V
    .locals 0
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public i0(II)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->y0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/p0;->a3(II)Lcom/google/android/exoplayer2/r1;

    move-result-object v1

    .line 3
    iget-object p1, v1, Lcom/google/android/exoplayer2/r1;->b:Lcom/google/android/exoplayer2/source/z$a;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/x;->a:Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-object p2, p2, Lcom/google/android/exoplayer2/r1;->b:Lcom/google/android/exoplayer2/source/z$a;

    iget-object p2, p2, Lcom/google/android/exoplayer2/source/x;->a:Ljava/lang/Object;

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 v5, p1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x4

    .line 5
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/p0;->s2(Lcom/google/android/exoplayer2/r1;)J

    move-result-wide v7

    const/4 v9, -0x1

    move-object v0, p0

    .line 6
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/p0;->g3(Lcom/google/android/exoplayer2/r1;IIZZIJI)V

    return-void
.end method

.method public i1()Lcom/google/android/exoplayer2/q$d;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public j(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/p0;->F0:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/p0;->F0:I

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->u0:Lcom/google/android/exoplayer2/t0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/t0;->U0(I)V

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->v0:Lcom/google/android/exoplayer2/util/v;

    const/16 v1, 0x9

    new-instance v2, Lcom/google/android/exoplayer2/d0;

    invoke-direct {v2, p1}, Lcom/google/android/exoplayer2/d0;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/v;->i(ILcom/google/android/exoplayer2/util/v$a;)V

    .line 5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/p0;->f3()V

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/p0;->v0:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->e()V

    :cond_0
    return-void
.end method

.method public j0()I
    .locals 2

    invoke-direct {p0}, Lcom/google/android/exoplayer2/p0;->t2()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public j1(Lcom/google/android/exoplayer2/q$b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->w0:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/p0;->F0:I

    return v0
.end method

.method public k0()Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-object v0, v0, Lcom/google/android/exoplayer2/r1;->f:Lcom/google/android/exoplayer2/ExoPlaybackException;

    return-object v0
.end method

.method public k1()Lcom/google/android/exoplayer2/q$a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public l0(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/p0;->d3(ZII)V

    return-void
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method public m0()Lcom/google/android/exoplayer2/q$g;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public m1(Ljava/util/List;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/b1;",
            ">;IJ)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/p0;->o2(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/p0;->w0(Ljava/util/List;IJ)V

    return-void
.end method

.method public n(Landroid/view/SurfaceView;)V
    .locals 0
    .param p1    # Landroid/view/SurfaceView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public o(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public o1()J
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p0;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-object v1, v0, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    iget-object v0, v0, Lcom/google/android/exoplayer2/r1;->b:Lcom/google/android/exoplayer2/source/z$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/x;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/p0;->x0:Lcom/google/android/exoplayer2/s2$b;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/s2;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/s2$b;)Lcom/google/android/exoplayer2/s2$b;

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-wide v1, v0, Lcom/google/android/exoplayer2/r1;->c:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 4
    iget-object v0, v0, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p0;->j0()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/e;->n0:Lcom/google/android/exoplayer2/s2$d;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/s2;->r(ILcom/google/android/exoplayer2/s2$d;)Lcom/google/android/exoplayer2/s2$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2$d;->d()J

    move-result-wide v0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->x0:Lcom/google/android/exoplayer2/s2$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2$b;->p()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/r1;->c:J

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/i;->d(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p0;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public p0(Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/z;",
            ">;Z)V"
        }
    .end annotation

    const/4 v2, -0x1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/p0;->c3(Ljava/util/List;IJZ)V

    return-void
.end method

.method public p1(Lcom/google/android/exoplayer2/v1$h;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/p0;->c1(Lcom/google/android/exoplayer2/v1$f;)V

    return-void
.end method

.method public bridge synthetic q()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p0;->r2()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public q0(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->u0:Lcom/google/android/exoplayer2/t0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/t0;->v(Z)V

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->y0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/p0;->o2(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/p0;->V0(ILjava/util/List;)V

    return-void
.end method

.method public q2(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->u0:Lcom/google/android/exoplayer2/t0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/t0;->u(J)V

    return-void
.end method

.method public r(Z)V
    .locals 0

    return-void
.end method

.method public r2()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/text/a;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 5

    .line 1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/util/z0;->e:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/exoplayer2/u0;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x24

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Release "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ExoPlayerLib/2.14.2"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] ["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExoPlayerImpl"

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/w;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->u0:Lcom/google/android/exoplayer2/t0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/t0;->j0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->v0:Lcom/google/android/exoplayer2/util/v;

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/exoplayer2/c0;->a:Lcom/google/android/exoplayer2/c0;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/v;->l(ILcom/google/android/exoplayer2/util/v$a;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->v0:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/v;->j()V

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->s0:Lcom/google/android/exoplayer2/util/q;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/q;->i(Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->B0:Lcom/google/android/exoplayer2/analytics/h1;

    if-eqz v0, :cond_1

    .line 9
    iget-object v1, p0, Lcom/google/android/exoplayer2/p0;->D0:Lcom/google/android/exoplayer2/upstream/e;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/upstream/e;->d(Lcom/google/android/exoplayer2/upstream/e$a;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/r1;->h(I)Lcom/google/android/exoplayer2/r1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    .line 11
    iget-object v1, v0, Lcom/google/android/exoplayer2/r1;->b:Lcom/google/android/exoplayer2/source/z$a;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/r1;->b(Lcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/r1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    .line 12
    iget-wide v1, v0, Lcom/google/android/exoplayer2/r1;->s:J

    iput-wide v1, v0, Lcom/google/android/exoplayer2/r1;->q:J

    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/google/android/exoplayer2/r1;->r:J

    return-void
.end method

.method public retry()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p0;->a()V

    return-void
.end method

.method public s()V
    .locals 0

    return-void
.end method

.method public s0()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p0;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-object v0, v0, Lcom/google/android/exoplayer2/r1;->b:Lcom/google/android/exoplayer2/source/z$a;

    iget v0, v0, Lcom/google/android/exoplayer2/source/x;->b:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public s1()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p0;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-object v1, v0, Lcom/google/android/exoplayer2/r1;->k:Lcom/google/android/exoplayer2/source/z$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/r1;->b:Lcom/google/android/exoplayer2/source/z$a;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/x;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/r1;->q:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/i;->d(J)J

    move-result-wide v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p0;->getDuration()J

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p0;->I1()J

    move-result-wide v0

    return-wide v0
.end method

.method public t(Landroid/view/TextureView;)V
    .locals 0
    .param p1    # Landroid/view/TextureView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public t1()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->u0:Lcom/google/android/exoplayer2/t0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/t0;->C()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public u0(Lcom/google/android/exoplayer2/source/z;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/p0;->V(Lcom/google/android/exoplayer2/source/z;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p0;->a()V

    return-void
.end method

.method public u1(Lcom/google/android/exoplayer2/source/z0;)V
    .locals 13

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/p0;->n2()Lcom/google/android/exoplayer2/s2;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p0;->j0()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p0;->getCurrentPosition()J

    move-result-wide v3

    .line 4
    invoke-direct {p0, v0, v2, v3, v4}, Lcom/google/android/exoplayer2/p0;->v2(Lcom/google/android/exoplayer2/s2;IJ)Landroid/util/Pair;

    move-result-object v2

    .line 5
    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/exoplayer2/p0;->X2(Lcom/google/android/exoplayer2/r1;Lcom/google/android/exoplayer2/s2;Landroid/util/Pair;)Lcom/google/android/exoplayer2/r1;

    move-result-object v4

    .line 6
    iget v0, p0, Lcom/google/android/exoplayer2/p0;->H0:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/p0;->H0:I

    .line 7
    iput-object p1, p0, Lcom/google/android/exoplayer2/p0;->N0:Lcom/google/android/exoplayer2/source/z0;

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->u0:Lcom/google/android/exoplayer2/t0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/t0;->a1(Lcom/google/android/exoplayer2/source/z0;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x5

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, -0x1

    move-object v3, p0

    .line 9
    invoke-direct/range {v3 .. v12}, Lcom/google/android/exoplayer2/p0;->g3(Lcom/google/android/exoplayer2/r1;IIZZIJI)V

    return-void
.end method

.method public v(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public v0(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/p0;->O0:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/p0;->O0:Z

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->u0:Lcom/google/android/exoplayer2/t0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/t0;->O0(Z)V

    return-void
.end method

.method public v1()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/r1;->p:Z

    return v0
.end method

.method public w()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public w0(Ljava/util/List;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/z;",
            ">;IJ)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/p0;->c3(Ljava/util/List;IJZ)V

    return-void
.end method

.method public x(IJ)V
    .locals 13

    move-object v10, p0

    move v0, p1

    move-wide v1, p2

    .line 1
    iget-object v3, v10, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-object v3, v3, Lcom/google/android/exoplayer2/r1;->a:Lcom/google/android/exoplayer2/s2;

    if-ltz v0, :cond_3

    .line 2
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/s2;->u()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 3
    :cond_0
    iget v4, v10, Lcom/google/android/exoplayer2/p0;->H0:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v10, Lcom/google/android/exoplayer2/p0;->H0:I

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p0;->K()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "ExoPlayerImpl"

    const-string v1, "seekTo ignored because an ad is playing"

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/w;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/google/android/exoplayer2/t0$e;

    iget-object v1, v10, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/t0$e;-><init>(Lcom/google/android/exoplayer2/r1;)V

    .line 7
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/t0$e;->b(I)V

    .line 8
    iget-object v1, v10, Lcom/google/android/exoplayer2/p0;->t0:Lcom/google/android/exoplayer2/t0$f;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/t0$f;->a(Lcom/google/android/exoplayer2/t0$e;)V

    return-void

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p0;->c()I

    move-result v4

    if-ne v4, v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    .line 10
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p0;->j0()I

    move-result v9

    .line 11
    iget-object v4, v10, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/r1;->h(I)Lcom/google/android/exoplayer2/r1;

    move-result-object v4

    .line 12
    invoke-direct {p0, v3, p1, v1, v2}, Lcom/google/android/exoplayer2/p0;->v2(Lcom/google/android/exoplayer2/s2;IJ)Landroid/util/Pair;

    move-result-object v5

    .line 13
    invoke-direct {p0, v4, v3, v5}, Lcom/google/android/exoplayer2/p0;->X2(Lcom/google/android/exoplayer2/r1;Lcom/google/android/exoplayer2/s2;Landroid/util/Pair;)Lcom/google/android/exoplayer2/r1;

    move-result-object v4

    .line 14
    iget-object v5, v10, Lcom/google/android/exoplayer2/p0;->u0:Lcom/google/android/exoplayer2/t0;

    invoke-static/range {p2 .. p3}, Lcom/google/android/exoplayer2/i;->c(J)J

    move-result-wide v1

    invoke-virtual {v5, v3, p1, v1, v2}, Lcom/google/android/exoplayer2/t0;->z0(Lcom/google/android/exoplayer2/s2;IJ)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 15
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/p0;->s2(Lcom/google/android/exoplayer2/r1;)J

    move-result-wide v11

    move-object v0, p0

    move-object v1, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-wide v7, v11

    .line 16
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/p0;->g3(Lcom/google/android/exoplayer2/r1;IIZZIJI)V

    return-void

    .line 17
    :cond_3
    new-instance v4, Lcom/google/android/exoplayer2/IllegalSeekPositionException;

    invoke-direct {v4, v3, p1, v1, v2}, Lcom/google/android/exoplayer2/IllegalSeekPositionException;-><init>(Lcom/google/android/exoplayer2/s2;IJ)V

    throw v4
.end method

.method public x0()Lcom/google/android/exoplayer2/q$e;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public y(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/p0;->e3(ZLcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method public y0()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget v0, v0, Lcom/google/android/exoplayer2/r1;->m:I

    return v0
.end method

.method public y1()Lcom/google/android/exoplayer2/j2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->M0:Lcom/google/android/exoplayer2/j2;

    return-object v0
.end method

.method public z(Landroid/view/TextureView;)V
    .locals 0
    .param p1    # Landroid/view/TextureView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public z0()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/p0;->R0:Lcom/google/android/exoplayer2/r1;

    iget-object v0, v0, Lcom/google/android/exoplayer2/r1;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

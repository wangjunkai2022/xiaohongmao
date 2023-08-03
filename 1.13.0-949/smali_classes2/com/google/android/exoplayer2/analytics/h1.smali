.class public Lcom/google/android/exoplayer2/analytics/h1;
.super Ljava/lang/Object;
.source "AnalyticsCollector.java"

# interfaces
.implements Lcom/google/android/exoplayer2/v1$h;
.implements Lcom/google/android/exoplayer2/audio/u;
.implements Lcom/google/android/exoplayer2/video/z;
.implements Lcom/google/android/exoplayer2/source/h0;
.implements Lcom/google/android/exoplayer2/upstream/e$a;
.implements Lcom/google/android/exoplayer2/drm/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/analytics/h1$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/d;

.field private final b:Lcom/google/android/exoplayer2/s2$b;

.field private final c:Lcom/google/android/exoplayer2/s2$d;

.field private final d:Lcom/google/android/exoplayer2/analytics/h1$a;

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/analytics/j1$b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/exoplayer2/util/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/v<",
            "Lcom/google/android/exoplayer2/analytics/j1;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/android/exoplayer2/v1;

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/util/d;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/d;

    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/h1;->a:Lcom/google/android/exoplayer2/util/d;

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/util/v;

    invoke-static {}, Lcom/google/android/exoplayer2/util/z0;->X()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/analytics/b1;->a:Lcom/google/android/exoplayer2/analytics/b1;

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/exoplayer2/util/v;-><init>(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/d;Lcom/google/android/exoplayer2/util/v$b;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/h1;->f:Lcom/google/android/exoplayer2/util/v;

    .line 4
    new-instance p1, Lcom/google/android/exoplayer2/s2$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/s2$b;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/h1;->b:Lcom/google/android/exoplayer2/s2$b;

    .line 5
    new-instance v0, Lcom/google/android/exoplayer2/s2$d;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/s2$d;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/h1;->c:Lcom/google/android/exoplayer2/s2$d;

    .line 6
    new-instance v0, Lcom/google/android/exoplayer2/analytics/h1$a;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/analytics/h1$a;-><init>(Lcom/google/android/exoplayer2/s2$b;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/h1;->d:Lcom/google/android/exoplayer2/analytics/h1$a;

    .line 7
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/h1;->e:Landroid/util/SparseArray;

    return-void
.end method

.method public static synthetic A0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/Exception;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->Q1(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/Exception;Lcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private A1(Lcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/analytics/j1$b;
    .locals 3
    .param p1    # Lcom/google/android/exoplayer2/source/z$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/h1;->g:Lcom/google/android/exoplayer2/v1;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/h1;->d:Lcom/google/android/exoplayer2/analytics/h1$a;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/analytics/h1$a;->f(Lcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/s2;

    move-result-object v1

    :goto_0
    if-eqz p1, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/x;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/h1;->b:Lcom/google/android/exoplayer2/s2$b;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/s2;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/s2$b;)Lcom/google/android/exoplayer2/s2$b;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/s2$b;->c:I

    .line 4
    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/h1;->z1(Lcom/google/android/exoplayer2/s2;ILcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object p1

    return-object p1

    .line 5
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/h1;->g:Lcom/google/android/exoplayer2/v1;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->j0()I

    move-result p1

    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/h1;->g:Lcom/google/android/exoplayer2/v1;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/v1;->A0()Lcom/google/android/exoplayer2/s2;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/s2;->u()I

    move-result v2

    if-ge p1, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_4

    goto :goto_3

    .line 8
    :cond_4
    sget-object v1, Lcom/google/android/exoplayer2/s2;->a:Lcom/google/android/exoplayer2/s2;

    .line 9
    :goto_3
    invoke-virtual {p0, v1, p1, v0}, Lcom/google/android/exoplayer2/analytics/h1;->z1(Lcom/google/android/exoplayer2/s2;ILcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic A2(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/s;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/j1;->l0(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/s;)V

    return-void
.end method

.method public static synthetic B0(Lcom/google/android/exoplayer2/analytics/j1$b;IILcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/h1;->x2(Lcom/google/android/exoplayer2/analytics/j1$b;IILcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private B1()Lcom/google/android/exoplayer2/analytics/j1$b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/h1;->d:Lcom/google/android/exoplayer2/analytics/h1$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/analytics/h1$a;->e()Lcom/google/android/exoplayer2/source/z$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/analytics/h1;->A1(Lcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic B2(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/Exception;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/j1;->B(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic C0(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/decoder/d;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->F2(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/decoder/d;Lcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private C1(ILcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/analytics/j1$b;
    .locals 3
    .param p2    # Lcom/google/android/exoplayer2/source/z$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/h1;->g:Lcom/google/android/exoplayer2/v1;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 2
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/h1;->d:Lcom/google/android/exoplayer2/analytics/h1$a;

    .line 3
    invoke-virtual {v2, p2}, Lcom/google/android/exoplayer2/analytics/h1$a;->f(Lcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/s2;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/analytics/h1;->A1(Lcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object p1

    goto :goto_1

    .line 5
    :cond_1
    sget-object v0, Lcom/google/android/exoplayer2/s2;->a:Lcom/google/android/exoplayer2/s2;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->z1(Lcom/google/android/exoplayer2/s2;ILcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object p1

    :goto_1
    return-object p1

    .line 6
    :cond_2
    iget-object p2, p0, Lcom/google/android/exoplayer2/analytics/h1;->g:Lcom/google/android/exoplayer2/v1;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/v1;->A0()Lcom/google/android/exoplayer2/s2;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/s2;->u()I

    move-result v2

    if-ge p1, v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    goto :goto_3

    .line 8
    :cond_4
    sget-object p2, Lcom/google/android/exoplayer2/s2;->a:Lcom/google/android/exoplayer2/s2;

    :goto_3
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p2, p1, v0}, Lcom/google/android/exoplayer2/analytics/h1;->z1(Lcom/google/android/exoplayer2/s2;ILcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic C2(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;JJLcom/google/android/exoplayer2/analytics/j1;)V
    .locals 7

    .line 1
    invoke-interface {p6, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/j1;->p0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;J)V

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    .line 2
    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/analytics/j1;->z(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;JJ)V

    const/4 v3, 0x2

    move-object v1, p6

    move-object v2, p0

    move-object v4, p1

    .line 3
    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/analytics/j1;->O(Lcom/google/android/exoplayer2/analytics/j1$b;ILjava/lang/String;J)V

    return-void
.end method

.method public static synthetic D0(Lcom/google/android/exoplayer2/analytics/j1$b;ZLcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->b2(Lcom/google/android/exoplayer2/analytics/j1$b;ZLcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private D1()Lcom/google/android/exoplayer2/analytics/j1$b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/h1;->d:Lcom/google/android/exoplayer2/analytics/h1$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/analytics/h1$a;->g()Lcom/google/android/exoplayer2/source/z$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/analytics/h1;->A1(Lcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic D2(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/j1;->a(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic E0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/Exception;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->Y1(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/Exception;Lcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private E1()Lcom/google/android/exoplayer2/analytics/j1$b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/h1;->d:Lcom/google/android/exoplayer2/analytics/h1$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/analytics/h1$a;->h()Lcom/google/android/exoplayer2/source/z$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/analytics/h1;->A1(Lcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic E2(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/decoder/d;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 1

    .line 1
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/j1;->G(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/decoder/d;)V

    const/4 v0, 0x2

    .line 2
    invoke-interface {p2, p0, v0, p1}, Lcom/google/android/exoplayer2/analytics/j1;->s0(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/decoder/d;)V

    return-void
.end method

.method public static synthetic F0(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;Ljava/io/IOException;ZLcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplayer2/analytics/h1;->f2(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;Ljava/io/IOException;ZLcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic F1(Lcom/google/android/exoplayer2/analytics/j1;Lcom/google/android/exoplayer2/util/m;)V
    .locals 0

    return-void
.end method

.method private static synthetic F2(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/decoder/d;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 1

    .line 1
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/j1;->U(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/decoder/d;)V

    const/4 v0, 0x2

    .line 2
    invoke-interface {p2, p0, v0, p1}, Lcom/google/android/exoplayer2/analytics/j1;->k(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/decoder/d;)V

    return-void
.end method

.method public static synthetic G0(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/h1;->e2(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;Lcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic G1(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/analytics/j1;->D(Lcom/google/android/exoplayer2/analytics/j1$b;)V

    return-void
.end method

.method private static synthetic G2(Lcom/google/android/exoplayer2/analytics/j1$b;JILcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p4, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/j1;->b(Lcom/google/android/exoplayer2/analytics/j1$b;JI)V

    return-void
.end method

.method public static synthetic H0(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/decoder/d;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->M1(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/decoder/d;Lcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic H1(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/audio/e;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/j1;->X(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/audio/e;)V

    return-void
.end method

.method private static synthetic H2(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1}, Lcom/google/android/exoplayer2/analytics/j1;->r(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/Format;)V

    .line 2
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/j1;->A(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V

    const/4 p2, 0x2

    .line 3
    invoke-interface {p3, p0, p2, p1}, Lcom/google/android/exoplayer2/analytics/j1;->L(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public static synthetic I0(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->n2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic I1(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/Exception;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/j1;->i0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/Exception;)V

    return-void
.end method

.method private static synthetic I2(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/video/b0;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 6

    .line 1
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/j1;->Z(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/video/b0;)V

    .line 2
    iget v2, p1, Lcom/google/android/exoplayer2/video/b0;->a:I

    iget v3, p1, Lcom/google/android/exoplayer2/video/b0;->b:I

    iget v4, p1, Lcom/google/android/exoplayer2/video/b0;->c:I

    iget v5, p1, Lcom/google/android/exoplayer2/video/b0;->d:F

    move-object v0, p2

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/analytics/j1;->K(Lcom/google/android/exoplayer2/analytics/j1$b;IIIF)V

    return-void
.end method

.method public static synthetic J0(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/decoder/d;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->L1(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/decoder/d;Lcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic J1(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;JJLcom/google/android/exoplayer2/analytics/j1;)V
    .locals 7

    .line 1
    invoke-interface {p6, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/j1;->l(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;J)V

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    .line 2
    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/analytics/j1;->V(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;JJ)V

    const/4 v3, 0x1

    move-object v1, p6

    move-object v2, p0

    move-object v4, p1

    .line 3
    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/analytics/j1;->O(Lcom/google/android/exoplayer2/analytics/j1$b;ILjava/lang/String;J)V

    return-void
.end method

.method private static synthetic J2(Lcom/google/android/exoplayer2/analytics/j1$b;FLcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/j1;->e0(Lcom/google/android/exoplayer2/analytics/j1$b;F)V

    return-void
.end method

.method public static synthetic K0(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/h1;->W1(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic K1(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/j1;->n0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic K2(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/analytics/j1;->Y(Lcom/google/android/exoplayer2/analytics/j1$b;)V

    return-void
.end method

.method public static synthetic L0(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/f1;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->i2(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/f1;Lcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic L1(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/decoder/d;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 1

    .line 1
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/j1;->T(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/decoder/d;)V

    const/4 v0, 0x1

    .line 2
    invoke-interface {p2, p0, v0, p1}, Lcom/google/android/exoplayer2/analytics/j1;->s0(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/decoder/d;)V

    return-void
.end method

.method private synthetic L2(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/analytics/j1;Lcom/google/android/exoplayer2/util/m;)V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/analytics/j1$c;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/h1;->e:Landroid/util/SparseArray;

    invoke-direct {v0, p3, v1}, Lcom/google/android/exoplayer2/analytics/j1$c;-><init>(Lcom/google/android/exoplayer2/util/m;Landroid/util/SparseArray;)V

    invoke-interface {p2, p1, v0}, Lcom/google/android/exoplayer2/analytics/j1;->n(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/analytics/j1$c;)V

    return-void
.end method

.method public static synthetic M0(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/h1;->g2(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;Lcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic M1(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/decoder/d;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 1

    .line 1
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/j1;->i(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/decoder/d;)V

    const/4 v0, 0x1

    .line 2
    invoke-interface {p2, p0, v0, p1}, Lcom/google/android/exoplayer2/analytics/j1;->k(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/decoder/d;)V

    return-void
.end method

.method public static synthetic N0(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/h1;->t2(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic N1(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1}, Lcom/google/android/exoplayer2/analytics/j1;->c0(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/Format;)V

    .line 2
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/j1;->q0(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V

    const/4 p2, 0x1

    .line 3
    invoke-interface {p3, p0, p2, p1}, Lcom/google/android/exoplayer2/analytics/j1;->L(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public static synthetic O0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/util/List;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->w2(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/util/List;Lcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic O1(Lcom/google/android/exoplayer2/analytics/j1$b;JLcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/j1;->s(Lcom/google/android/exoplayer2/analytics/j1$b;J)V

    return-void
.end method

.method public static synthetic P0(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->m2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic P1(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/j1;->q(Lcom/google/android/exoplayer2/analytics/j1$b;I)V

    return-void
.end method

.method public static synthetic Q0(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/h1;->K2(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic Q1(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/Exception;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/j1;->w(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic R0(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->X1(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic R1(Lcom/google/android/exoplayer2/analytics/j1$b;IJJLcom/google/android/exoplayer2/analytics/j1;)V
    .locals 7

    move-object v0, p6

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/analytics/j1;->S(Lcom/google/android/exoplayer2/analytics/j1$b;IJJ)V

    return-void
.end method

.method public static synthetic S0(Lcom/google/android/exoplayer2/analytics/j1$b;IJLcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/h1;->a2(Lcom/google/android/exoplayer2/analytics/j1$b;IJLcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic S1(Lcom/google/android/exoplayer2/analytics/j1$b;IJJLcom/google/android/exoplayer2/analytics/j1;)V
    .locals 7

    move-object v0, p6

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/analytics/j1;->J(Lcom/google/android/exoplayer2/analytics/j1$b;IJJ)V

    return-void
.end method

.method public static synthetic T0(Lcom/google/android/exoplayer2/analytics/j1$b;IJJLcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplayer2/analytics/h1;->S1(Lcom/google/android/exoplayer2/analytics/j1$b;IJJLcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic T1(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/s;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/j1;->j0(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/s;)V

    return-void
.end method

.method public static synthetic U0(Lcom/google/android/exoplayer2/analytics/j1;Lcom/google/android/exoplayer2/util/m;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/h1;->F1(Lcom/google/android/exoplayer2/analytics/j1;Lcom/google/android/exoplayer2/util/m;)V

    return-void
.end method

.method private static synthetic U1(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/analytics/j1;->d0(Lcom/google/android/exoplayer2/analytics/j1$b;)V

    return-void
.end method

.method public static synthetic V0(Lcom/google/android/exoplayer2/analytics/j1$b;ZLcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->c2(Lcom/google/android/exoplayer2/analytics/j1$b;ZLcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic V1(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/analytics/j1;->H(Lcom/google/android/exoplayer2/analytics/j1$b;)V

    return-void
.end method

.method public static synthetic W0(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->P1(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic W1(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/analytics/j1;->e(Lcom/google/android/exoplayer2/analytics/j1$b;)V

    return-void
.end method

.method public static synthetic X0(Lcom/google/android/exoplayer2/analytics/j1$b;ZLcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->v2(Lcom/google/android/exoplayer2/analytics/j1$b;ZLcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic X1(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0}, Lcom/google/android/exoplayer2/analytics/j1;->F(Lcom/google/android/exoplayer2/analytics/j1$b;)V

    .line 2
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/j1;->c(Lcom/google/android/exoplayer2/analytics/j1$b;I)V

    return-void
.end method

.method public static synthetic Y0(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/v1$l;Lcom/google/android/exoplayer2/v1$l;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/h1;->q2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/v1$l;Lcom/google/android/exoplayer2/v1$l;Lcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic Y1(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/Exception;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/j1;->d(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic Z0(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/h1;->N1(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;Lcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic Z1(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/analytics/j1;->Q(Lcom/google/android/exoplayer2/analytics/j1$b;)V

    return-void
.end method

.method public static synthetic a1(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/m;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/h1;->z2(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/m;Lcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic a2(Lcom/google/android/exoplayer2/analytics/j1$b;IJLcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p4, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/j1;->v(Lcom/google/android/exoplayer2/analytics/j1$b;IJ)V

    return-void
.end method

.method public static synthetic b1(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;JJLcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplayer2/analytics/h1;->J1(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;JJLcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic b2(Lcom/google/android/exoplayer2/analytics/j1$b;ZLcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/j1;->g(Lcom/google/android/exoplayer2/analytics/j1$b;Z)V

    .line 2
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/j1;->u0(Lcom/google/android/exoplayer2/analytics/j1$b;Z)V

    return-void
.end method

.method public static synthetic c1(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/Object;JLcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/h1;->r2(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/Object;JLcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic c2(Lcom/google/android/exoplayer2/analytics/j1$b;ZLcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/j1;->h0(Lcom/google/android/exoplayer2/analytics/j1$b;Z)V

    return-void
.end method

.method public static synthetic d1(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/h1;->Z1(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic d2(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/j1;->f0(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V

    return-void
.end method

.method public static synthetic e1(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->D2(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Lcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic e2(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/j1;->k0(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V

    return-void
.end method

.method public static synthetic f1(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/decoder/d;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->E2(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/decoder/d;Lcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic f2(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;Ljava/io/IOException;ZLcom/google/android/exoplayer2/analytics/j1;)V
    .locals 6

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/analytics/j1;->j(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;Ljava/io/IOException;Z)V

    return-void
.end method

.method public static synthetic g1(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/h1;->d2(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;Lcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic g2(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/j1;->N(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V

    return-void
.end method

.method public static synthetic h1(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/h1;->V1(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic h2(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/b1;ILcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/j1;->E(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/b1;I)V

    return-void
.end method

.method public static synthetic i1(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/h1;->H2(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;Lcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic i2(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/f1;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/j1;->h(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/f1;)V

    return-void
.end method

.method public static synthetic j1(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/h1;->G1(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic j2(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/j1;->m(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public static synthetic k1(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->y2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic k2(Lcom/google/android/exoplayer2/analytics/j1$b;ZILcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/j1;->y(Lcom/google/android/exoplayer2/analytics/j1$b;ZI)V

    return-void
.end method

.method public static synthetic l1(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/b1;ILcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/h1;->h2(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/b1;ILcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic l2(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/t1;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/j1;->R(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/t1;)V

    return-void
.end method

.method public static synthetic m1(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/s;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->A2(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/s;Lcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic m2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/j1;->p(Lcom/google/android/exoplayer2/analytics/j1$b;I)V

    return-void
.end method

.method public static synthetic n1(Lcom/google/android/exoplayer2/analytics/j1$b;JLcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/h1;->O1(Lcom/google/android/exoplayer2/analytics/j1$b;JLcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic n2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/j1;->f(Lcom/google/android/exoplayer2/analytics/j1$b;I)V

    return-void
.end method

.method public static synthetic o1(Lcom/google/android/exoplayer2/analytics/j1$b;JILcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/h1;->G2(Lcom/google/android/exoplayer2/analytics/j1$b;JILcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic o2(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/ExoPlaybackException;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/j1;->I(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method public static synthetic p1(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/Exception;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->I1(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/Exception;Lcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic p2(Lcom/google/android/exoplayer2/analytics/j1$b;ZILcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/j1;->o(Lcom/google/android/exoplayer2/analytics/j1$b;ZI)V

    return-void
.end method

.method public static synthetic q0(Lcom/google/android/exoplayer2/analytics/j1$b;ZILcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/h1;->k2(Lcom/google/android/exoplayer2/analytics/j1$b;ZILcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method public static synthetic q1(Lcom/google/android/exoplayer2/analytics/j1$b;IJJLcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplayer2/analytics/h1;->R1(Lcom/google/android/exoplayer2/analytics/j1$b;IJJLcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic q2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/v1$l;Lcom/google/android/exoplayer2/v1$l;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    .line 1
    invoke-interface {p4, p0, p1}, Lcom/google/android/exoplayer2/analytics/j1;->P(Lcom/google/android/exoplayer2/analytics/j1$b;I)V

    .line 2
    invoke-interface {p4, p0, p2, p3, p1}, Lcom/google/android/exoplayer2/analytics/j1;->m0(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/v1$l;Lcom/google/android/exoplayer2/v1$l;I)V

    return-void
.end method

.method public static synthetic r0(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/t1;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->l2(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/t1;Lcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method public static synthetic r1(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/s;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->T1(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/s;Lcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic r2(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/Object;JLcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p4, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/j1;->r0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/Object;J)V

    return-void
.end method

.method public static synthetic s0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;JJLcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplayer2/analytics/h1;->C2(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;JJLcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method public static synthetic s1(Lcom/google/android/exoplayer2/analytics/j1$b;ZLcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->u2(Lcom/google/android/exoplayer2/analytics/j1$b;ZLcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic s2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/j1;->W(Lcom/google/android/exoplayer2/analytics/j1$b;I)V

    return-void
.end method

.method public static synthetic t0(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/ExoPlaybackException;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->o2(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/ExoPlaybackException;Lcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method public static synthetic t1(Lcom/google/android/exoplayer2/analytics/j1$b;FLcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->J2(Lcom/google/android/exoplayer2/analytics/j1$b;FLcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic t2(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/analytics/j1;->M(Lcom/google/android/exoplayer2/analytics/j1$b;)V

    return-void
.end method

.method public static synthetic u0(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/h1;->U1(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method public static synthetic u1(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->s2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic u2(Lcom/google/android/exoplayer2/analytics/j1$b;ZLcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/j1;->u(Lcom/google/android/exoplayer2/analytics/j1$b;Z)V

    return-void
.end method

.method public static synthetic v0(Lcom/google/android/exoplayer2/analytics/h1;Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/analytics/j1;Lcom/google/android/exoplayer2/util/m;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/h1;->L2(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/analytics/j1;Lcom/google/android/exoplayer2/util/m;)V

    return-void
.end method

.method public static synthetic v1(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/audio/e;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->H1(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/audio/e;Lcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic v2(Lcom/google/android/exoplayer2/analytics/j1$b;ZLcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/j1;->x(Lcom/google/android/exoplayer2/analytics/j1$b;Z)V

    return-void
.end method

.method public static synthetic w0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/Exception;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->B2(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/Exception;Lcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method public static synthetic w1(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/video/b0;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->I2(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/video/b0;Lcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic w2(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/util/List;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/j1;->t0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic x0(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->j2(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic x2(Lcom/google/android/exoplayer2/analytics/j1$b;IILcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/j1;->t(Lcom/google/android/exoplayer2/analytics/j1$b;II)V

    return-void
.end method

.method public static synthetic y0(Lcom/google/android/exoplayer2/analytics/j1$b;ZILcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/h1;->p2(Lcom/google/android/exoplayer2/analytics/j1$b;ZILcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic y2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/j1;->C(Lcom/google/android/exoplayer2/analytics/j1$b;I)V

    return-void
.end method

.method public static synthetic z0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->K1(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Lcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.method private static synthetic z2(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/m;Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/j1;->g0(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/m;)V

    return-void
.end method


# virtual methods
.method public final A(Lcom/google/android/exoplayer2/audio/e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/h1;->E1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/t;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/t;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/audio/e;)V

    const/16 p1, 0x3f8

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final B(Lcom/google/android/exoplayer2/b1;I)V
    .locals 2
    .param p1    # Lcom/google/android/exoplayer2/b1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/h1;->y1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/q;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/q;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/b1;I)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final C(ZI)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/h1;->y1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/y0;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/y0;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;ZI)V

    const/4 p1, 0x6

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public synthetic D(Lcom/google/android/exoplayer2/device/b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->e(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/device/b;)V

    return-void
.end method

.method public E(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/h1;->y1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/v0;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/v0;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;Z)V

    const/16 p1, 0x8

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final F(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/h1;->E1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v7

    .line 2
    new-instance v8, Lcom/google/android/exoplayer2/analytics/q0;

    move-object v0, v8

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/analytics/q0;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;JJ)V

    const/16 p1, 0x3fd

    invoke-virtual {p0, v7, p1, v8}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public synthetic G(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->e(Lcom/google/android/exoplayer2/v1$f;Z)V

    return-void
.end method

.method public final H(ILcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/source/s;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/z$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->C1(ILcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/google/android/exoplayer2/analytics/f0;

    invoke-direct {p2, p1, p3}, Lcom/google/android/exoplayer2/analytics/f0;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/s;)V

    const/16 p3, 0x3ec

    invoke-virtual {p0, p1, p3, p2}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final I(ILcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/z$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->C1(ILcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/google/android/exoplayer2/analytics/c0;

    invoke-direct {p2, p1, p3, p4}, Lcom/google/android/exoplayer2/analytics/c0;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V

    const/16 p3, 0x3ea

    invoke-virtual {p0, p1, p3, p2}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final J(ILcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/z$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->C1(ILcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/google/android/exoplayer2/analytics/b0;

    invoke-direct {p2, p1, p3, p4}, Lcom/google/android/exoplayer2/analytics/b0;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V

    const/16 p3, 0x3e8

    invoke-virtual {p0, p1, p3, p2}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final K(IJJ)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/h1;->B1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v7

    .line 2
    new-instance v8, Lcom/google/android/exoplayer2/analytics/h;

    move-object v0, v8

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/analytics/h;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;IJJ)V

    const/16 p1, 0x3ee

    invoke-virtual {p0, v7, p1, v8}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final L(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/h1;->E1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/o0;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/o0;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;)V

    const/16 p1, 0x3f5

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final M(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/h1;->E1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v7

    .line 2
    new-instance v8, Lcom/google/android/exoplayer2/analytics/r0;

    move-object v0, v8

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/analytics/r0;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;JJ)V

    const/16 p1, 0x3f1

    invoke-virtual {p0, v7, p1, v8}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final M2()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/h1;->h:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/h1;->y1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/h1;->h:Z

    const/4 v1, -0x1

    .line 4
    new-instance v2, Lcom/google/android/exoplayer2/analytics/d1;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/analytics/d1;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    :cond_0
    return-void
.end method

.method public final N(ILcom/google/android/exoplayer2/source/z$a;)V
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/source/z$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->C1(ILcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/google/android/exoplayer2/analytics/c1;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/analytics/c1;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;)V

    const/16 v0, 0x40a

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public N2()V
    .locals 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/h1;->y1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/h1;->e:Landroid/util/SparseArray;

    const/16 v2, 0x40c

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/h1;->f:Lcom/google/android/exoplayer2/util/v;

    new-instance v3, Lcom/google/android/exoplayer2/analytics/h0;

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer2/analytics/h0;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/util/v;->h(ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public synthetic O(ILcom/google/android/exoplayer2/source/z$a;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/l;->d(Lcom/google/android/exoplayer2/drm/s;ILcom/google/android/exoplayer2/source/z$a;)V

    return-void
.end method

.method public O2(Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/h1;->f:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/v;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic P(Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/video/o;->i(Lcom/google/android/exoplayer2/video/z;Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method protected final P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/analytics/j1$b;",
            "I",
            "Lcom/google/android/exoplayer2/util/v$a<",
            "Lcom/google/android/exoplayer2/analytics/j1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/h1;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/h1;->f:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/util/v;->l(ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final Q(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 2
    .param p2    # Lcom/google/android/exoplayer2/decoder/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/h1;->E1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/p;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/p;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V

    const/16 p1, 0x3fe

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public Q2(Lcom/google/android/exoplayer2/v1;Landroid/os/Looper;)V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/h1;->g:Lcom/google/android/exoplayer2/v1;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/h1;->d:Lcom/google/android/exoplayer2/analytics/h1$a;

    .line 2
    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/h1$a;->a(Lcom/google/android/exoplayer2/analytics/h1$a;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3
    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 4
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/v1;

    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/h1;->g:Lcom/google/android/exoplayer2/v1;

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/h1;->f:Lcom/google/android/exoplayer2/util/v;

    new-instance v1, Lcom/google/android/exoplayer2/analytics/a1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/analytics/a1;-><init>(Lcom/google/android/exoplayer2/analytics/h1;Lcom/google/android/exoplayer2/v1;)V

    .line 6
    invoke-virtual {v0, p2, v1}, Lcom/google/android/exoplayer2/util/v;->d(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/v$b;)Lcom/google/android/exoplayer2/util/v;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/h1;->f:Lcom/google/android/exoplayer2/util/v;

    return-void
.end method

.method public final R(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/h1;->E1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/k;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/k;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;J)V

    const/16 p1, 0x3f3

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final R2(Ljava/util/List;Lcom/google/android/exoplayer2/source/z$a;)V
    .locals 2
    .param p2    # Lcom/google/android/exoplayer2/source/z$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/z$a;",
            ">;",
            "Lcom/google/android/exoplayer2/source/z$a;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/h1;->d:Lcom/google/android/exoplayer2/analytics/h1$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/h1;->g:Lcom/google/android/exoplayer2/v1;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/v1;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/analytics/h1$a;->k(Ljava/util/List;Lcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/v1;)V

    return-void
.end method

.method public final S(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/h1;->E1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/j0;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/j0;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/Exception;)V

    const/16 p1, 0x40e

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final T(Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/h1;->D1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/y;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/y;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/decoder/d;)V

    const/16 p1, 0x401

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public synthetic U(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->n(Lcom/google/android/exoplayer2/v1$f;I)V

    return-void
.end method

.method public final V(Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/h1;->D1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/x;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/x;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/decoder/d;)V

    const/16 p1, 0x3f6

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final W(ILcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/source/s;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/z$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->C1(ILcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/google/android/exoplayer2/analytics/e0;

    invoke-direct {p2, p1, p3}, Lcom/google/android/exoplayer2/analytics/e0;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/s;)V

    const/16 p3, 0x3ed

    invoke-virtual {p0, p1, p3, p2}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final X()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/h1;->y1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/w;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/analytics/w;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;)V

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final Y(ILcom/google/android/exoplayer2/source/z$a;Ljava/lang/Exception;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/z$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->C1(ILcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/google/android/exoplayer2/analytics/l0;

    invoke-direct {p2, p1, p3}, Lcom/google/android/exoplayer2/analytics/l0;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/Exception;)V

    const/16 p3, 0x408

    invoke-virtual {p0, p1, p3, p2}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final Z(IJ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/h1;->D1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/g;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/g;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;IJ)V

    const/16 p1, 0x3ff

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/h1;->E1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/w0;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/w0;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;Z)V

    const/16 p1, 0x3f9

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final a0(ZI)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/h1;->y1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/z0;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/z0;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;ZI)V

    const/4 p1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final b(Lcom/google/android/exoplayer2/video/b0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/h1;->E1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/i0;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/i0;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/video/b0;)V

    const/16 p1, 0x404

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final b0(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 2
    .param p2    # Lcom/google/android/exoplayer2/decoder/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/h1;->E1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/o;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/o;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V

    const/16 p1, 0x3f2

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final c(Lcom/google/android/exoplayer2/t1;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/h1;->y1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/s;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/s;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/t1;)V

    const/16 p1, 0xd

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public synthetic c0(IIIF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/video/m;->c(Lcom/google/android/exoplayer2/video/n;IIIF)V

    return-void
.end method

.method public final d(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/h1;->E1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/k0;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/k0;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/Exception;)V

    const/16 p1, 0x3fa

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final d0(Ljava/lang/Object;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/h1;->E1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/n0;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/n0;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/Object;J)V

    const/16 p1, 0x403

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final e(Lcom/google/android/exoplayer2/v1$l;Lcom/google/android/exoplayer2/v1$l;I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/h1;->h:Z

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/h1;->d:Lcom/google/android/exoplayer2/analytics/h1$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/h1;->g:Lcom/google/android/exoplayer2/v1;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/v1;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/analytics/h1$a;->j(Lcom/google/android/exoplayer2/v1;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/h1;->y1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    const/16 v1, 0xc

    .line 4
    new-instance v2, Lcom/google/android/exoplayer2/analytics/j;

    invoke-direct {v2, v0, p3, p1, p2}, Lcom/google/android/exoplayer2/analytics/j;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/v1$l;Lcom/google/android/exoplayer2/v1$l;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public synthetic e0(Lcom/google/android/exoplayer2/s2;Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/w1;->u(Lcom/google/android/exoplayer2/v1$f;Lcom/google/android/exoplayer2/s2;Ljava/lang/Object;I)V

    return-void
.end method

.method public final f(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/h1;->y1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/f1;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/f1;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;I)V

    const/4 p1, 0x7

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final f0(Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/h1;->E1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/u;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/u;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/decoder/d;)V

    const/16 p1, 0x3fc

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final g(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/h1;->y1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/t0;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/t0;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/util/List;)V

    const/4 p1, 0x3

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final g0(ILcom/google/android/exoplayer2/source/z$a;)V
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/source/z$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->C1(ILcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/google/android/exoplayer2/analytics/a;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/analytics/a;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;)V

    const/16 v0, 0x407

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public synthetic h(Lcom/google/android/exoplayer2/v1$c;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->c(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/v1$c;)V

    return-void
.end method

.method public final h0(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/h1;->E1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/m0;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/m0;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/Exception;)V

    const/16 p1, 0x40d

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final i(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/h1;->y1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/e;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/e;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;I)V

    const/16 p1, 0x9

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public synthetic i0(Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/audio/j;->f(Lcom/google/android/exoplayer2/audio/u;Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public final j(Lcom/google/android/exoplayer2/s2;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/h1;->d:Lcom/google/android/exoplayer2/analytics/h1$a;

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/h1;->g:Lcom/google/android/exoplayer2/v1;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/v1;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/analytics/h1$a;->l(Lcom/google/android/exoplayer2/v1;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/h1;->y1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/analytics/d;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/d;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final j0(ILcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/z$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->C1(ILcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/google/android/exoplayer2/analytics/a0;

    invoke-direct {p2, p1, p3, p4}, Lcom/google/android/exoplayer2/analytics/a0;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V

    const/16 p3, 0x3e9

    invoke-virtual {p0, p1, p3, p2}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final k(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/h1;->E1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/c;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/c;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;I)V

    const/16 p1, 0x3f7

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final k0(ILcom/google/android/exoplayer2/source/z$a;I)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/z$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->C1(ILcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/google/android/exoplayer2/analytics/b;

    invoke-direct {p2, p1, p3}, Lcom/google/android/exoplayer2/analytics/b;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;I)V

    const/16 p3, 0x406

    invoke-virtual {p0, p1, p3, p2}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final l(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/h1;->y1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/g1;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/g1;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;I)V

    const/4 p1, 0x5

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final l0(ILcom/google/android/exoplayer2/source/z$a;)V
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/source/z$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->C1(ILcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/google/android/exoplayer2/analytics/s0;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/analytics/s0;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;)V

    const/16 v0, 0x40b

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public m(Lcom/google/android/exoplayer2/f1;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/h1;->y1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/r;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/r;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/f1;)V

    const/16 p1, 0xf

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final m0(IJJ)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/h1;->E1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v7

    .line 2
    new-instance v8, Lcom/google/android/exoplayer2/analytics/i;

    move-object v0, v8

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/analytics/i;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;IJJ)V

    const/16 p1, 0x3f4

    invoke-virtual {p0, v7, p1, v8}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final n(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/h1;->y1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/x0;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/x0;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;Z)V

    const/16 p1, 0xa

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final n0(ILcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;Ljava/io/IOException;Z)V
    .locals 6
    .param p2    # Lcom/google/android/exoplayer2/source/z$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->C1(ILcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/google/android/exoplayer2/analytics/d0;

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/analytics/d0;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;Ljava/io/IOException;Z)V

    const/16 p3, 0x3eb

    invoke-virtual {p0, p1, p3, p2}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final o(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/h1;->y1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/z;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/z;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    const/16 p1, 0x3ef

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final o0(JI)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/h1;->D1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/m;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/m;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;JI)V

    const/16 p1, 0x402

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public synthetic p(IZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/x1;->f(Lcom/google/android/exoplayer2/v1$h;IZ)V

    return-void
.end method

.method public final p0(ILcom/google/android/exoplayer2/source/z$a;)V
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/source/z$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->C1(ILcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/google/android/exoplayer2/analytics/l;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/analytics/l;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;)V

    const/16 v0, 0x409

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public synthetic q()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/x1;->s(Lcom/google/android/exoplayer2/v1$h;)V

    return-void
.end method

.method public synthetic r(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->d(Lcom/google/android/exoplayer2/v1$h;Ljava/util/List;)V

    return-void
.end method

.method public final s(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/m;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/h1;->y1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/g0;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/g0;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/m;)V

    const/4 p1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public t(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/h1;->E1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/f;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/f;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;II)V

    const/16 p1, 0x405

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final u(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->mediaPeriodId:Lcom/google/android/exoplayer2/source/x;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/source/z$a;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/source/z$a;-><init>(Lcom/google/android/exoplayer2/source/x;)V

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/analytics/h1;->A1(Lcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/h1;->y1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    :goto_0
    const/16 v1, 0xb

    .line 4
    new-instance v2, Lcom/google/android/exoplayer2/analytics/n;

    invoke-direct {v2, v0, p1}, Lcom/google/android/exoplayer2/analytics/n;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final v(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/h1;->y1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/u0;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/u0;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;Z)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final w(F)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/h1;->E1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/e1;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/e1;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;F)V

    const/16 p1, 0x3fb

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/h1;->E1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/p0;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/p0;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;)V

    const/16 p1, 0x400

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public x1(Lcom/google/android/exoplayer2/analytics/j1;)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/h1;->f:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/v;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final y(Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/h1;->E1()Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/analytics/v;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/v;-><init>(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/decoder/d;)V

    const/16 p1, 0x3f0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/h1;->P2(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method protected final y1()Lcom/google/android/exoplayer2/analytics/j1$b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/h1;->d:Lcom/google/android/exoplayer2/analytics/h1$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/analytics/h1$a;->d()Lcom/google/android/exoplayer2/source/z$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/analytics/h1;->A1(Lcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/analytics/j1$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic z(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/v1$g;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/x1;->g(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/v1$g;)V

    return-void
.end method

.method protected final z1(Lcom/google/android/exoplayer2/s2;ILcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/analytics/j1$b;
    .locals 17
    .param p3    # Lcom/google/android/exoplayer2/source/z$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "player"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object/from16 v6, p3

    .line 2
    :goto_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/h1;->a:Lcom/google/android/exoplayer2/util/d;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/util/d;->b()J

    move-result-wide v2

    .line 3
    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/h1;->g:Lcom/google/android/exoplayer2/v1;

    .line 4
    invoke-interface {v1}, Lcom/google/android/exoplayer2/v1;->A0()Lcom/google/android/exoplayer2/s2;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/s2;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/h1;->g:Lcom/google/android/exoplayer2/v1;

    .line 5
    invoke-interface {v1}, Lcom/google/android/exoplayer2/v1;->j0()I

    move-result v1

    if-ne v5, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-wide/16 v9, 0x0

    if-eqz v6, :cond_3

    .line 6
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/x;->c()Z

    move-result v11

    if-eqz v11, :cond_3

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/h1;->g:Lcom/google/android/exoplayer2/v1;

    .line 8
    invoke-interface {v1}, Lcom/google/android/exoplayer2/v1;->s0()I

    move-result v1

    iget v11, v6, Lcom/google/android/exoplayer2/source/x;->b:I

    if-ne v1, v11, :cond_2

    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/h1;->g:Lcom/google/android/exoplayer2/v1;

    .line 9
    invoke-interface {v1}, Lcom/google/android/exoplayer2/v1;->d1()I

    move-result v1

    iget v11, v6, Lcom/google/android/exoplayer2/source/x;->c:I

    if-ne v1, v11, :cond_2

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_6

    .line 10
    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/h1;->g:Lcom/google/android/exoplayer2/v1;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/v1;->getCurrentPosition()J

    move-result-wide v9

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_4

    .line 11
    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/h1;->g:Lcom/google/android/exoplayer2/v1;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/v1;->o1()J

    move-result-wide v7

    goto :goto_4

    .line 12
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/h1;->c:Lcom/google/android/exoplayer2/s2$d;

    invoke-virtual {v4, v5, v1}, Lcom/google/android/exoplayer2/s2;->r(ILcom/google/android/exoplayer2/s2$d;)Lcom/google/android/exoplayer2/s2$d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/s2$d;->d()J

    move-result-wide v9

    :cond_6
    :goto_3
    move-wide v7, v9

    .line 13
    :goto_4
    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/h1;->d:Lcom/google/android/exoplayer2/analytics/h1$a;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/analytics/h1$a;->d()Lcom/google/android/exoplayer2/source/z$a;

    move-result-object v11

    .line 14
    new-instance v16, Lcom/google/android/exoplayer2/analytics/j1$b;

    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/h1;->g:Lcom/google/android/exoplayer2/v1;

    .line 15
    invoke-interface {v1}, Lcom/google/android/exoplayer2/v1;->A0()Lcom/google/android/exoplayer2/s2;

    move-result-object v9

    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/h1;->g:Lcom/google/android/exoplayer2/v1;

    .line 16
    invoke-interface {v1}, Lcom/google/android/exoplayer2/v1;->j0()I

    move-result v10

    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/h1;->g:Lcom/google/android/exoplayer2/v1;

    .line 17
    invoke-interface {v1}, Lcom/google/android/exoplayer2/v1;->getCurrentPosition()J

    move-result-wide v12

    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/h1;->g:Lcom/google/android/exoplayer2/v1;

    .line 18
    invoke-interface {v1}, Lcom/google/android/exoplayer2/v1;->L()J

    move-result-wide v14

    move-object/from16 v1, v16

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v1 .. v15}, Lcom/google/android/exoplayer2/analytics/j1$b;-><init>(JLcom/google/android/exoplayer2/s2;ILcom/google/android/exoplayer2/source/z$a;JLcom/google/android/exoplayer2/s2;ILcom/google/android/exoplayer2/source/z$a;JJ)V

    return-object v16
.end method

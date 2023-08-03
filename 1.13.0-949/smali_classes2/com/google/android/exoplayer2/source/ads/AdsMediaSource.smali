.class public final Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;
.super Lcom/google/android/exoplayer2/source/e;
.source "AdsMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;,
        Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$b;,
        Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;,
        Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/source/e<",
        "Lcom/google/android/exoplayer2/source/z$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final v:Lcom/google/android/exoplayer2/source/z$a;


# instance fields
.field private final j:Lcom/google/android/exoplayer2/source/z;

.field private final k:Lcom/google/android/exoplayer2/source/j0;

.field private final l:Lcom/google/android/exoplayer2/source/ads/e;

.field private final m:Lcom/google/android/exoplayer2/ui/c;

.field private final n:Lcom/google/android/exoplayer2/upstream/o;

.field private final o:Ljava/lang/Object;

.field private final p:Landroid/os/Handler;

.field private final q:Lcom/google/android/exoplayer2/s2$b;

.field private r:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private s:Lcom/google/android/exoplayer2/s2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private t:Lcom/google/android/exoplayer2/source/ads/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private u:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/source/z$a;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/z$a;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->v:Lcom/google/android/exoplayer2/source/z$a;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/z;Lcom/google/android/exoplayer2/upstream/o;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/j0;Lcom/google/android/exoplayer2/source/ads/e;Lcom/google/android/exoplayer2/ui/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/e;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->j:Lcom/google/android/exoplayer2/source/z;

    .line 3
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->k:Lcom/google/android/exoplayer2/source/j0;

    .line 4
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->l:Lcom/google/android/exoplayer2/source/ads/e;

    .line 5
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->m:Lcom/google/android/exoplayer2/ui/c;

    .line 6
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->n:Lcom/google/android/exoplayer2/upstream/o;

    .line 7
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->o:Ljava/lang/Object;

    .line 8
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->p:Landroid/os/Handler;

    .line 9
    new-instance p1, Lcom/google/android/exoplayer2/s2$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/s2$b;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->q:Lcom/google/android/exoplayer2/s2$b;

    const/4 p1, 0x0

    new-array p1, p1, [[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    .line 10
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->u:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    .line 11
    invoke-interface {p4}, Lcom/google/android/exoplayer2/source/j0;->d()[I

    move-result-object p1

    invoke-interface {p5, p1}, Lcom/google/android/exoplayer2/source/ads/e;->f([I)V

    return-void
.end method

.method public static synthetic L(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->X(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;)V

    return-void
.end method

.method public static synthetic M(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->Y(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;)V

    return-void
.end method

.method static synthetic N(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/source/h0$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/a;->t(Lcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/source/h0$a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic O(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->b0(Lcom/google/android/exoplayer2/source/ads/c;)V

    return-void
.end method

.method static synthetic P(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->p:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic Q(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/source/h0$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/a;->t(Lcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/source/h0$a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic R(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lcom/google/android/exoplayer2/source/ads/e;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->l:Lcom/google/android/exoplayer2/source/ads/e;

    return-object p0
.end method

.method static synthetic S(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/z;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/e;->J(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/z;)V

    return-void
.end method

.method static synthetic T(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lcom/google/android/exoplayer2/s2$b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->q:Lcom/google/android/exoplayer2/s2$b;

    return-object p0
.end method

.method static synthetic U(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/e;->K(Ljava/lang/Object;)V

    return-void
.end method

.method private V()[[J
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->u:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    array-length v0, v0

    new-array v0, v0, [[J

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->u:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 3
    aget-object v3, v3, v2

    array-length v3, v3

    new-array v3, v3, [J

    aput-object v3, v0, v2

    const/4 v3, 0x0

    .line 4
    :goto_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->u:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    aget-object v5, v4, v2

    array-length v5, v5

    if-ge v3, v5, :cond_1

    .line 5
    aget-object v4, v4, v2

    aget-object v4, v4, v3

    .line 6
    aget-object v5, v0, v2

    if-nez v4, :cond_0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    :cond_0
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;->b()J

    move-result-wide v6

    :goto_2
    aput-wide v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private synthetic X(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->l:Lcom/google/android/exoplayer2/source/ads/e;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->n:Lcom/google/android/exoplayer2/upstream/o;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->o:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->m:Lcom/google/android/exoplayer2/ui/c;

    move-object v1, p0

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/ads/e;->c(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/upstream/o;Ljava/lang/Object;Lcom/google/android/exoplayer2/ui/c;Lcom/google/android/exoplayer2/source/ads/e$a;)V

    return-void
.end method

.method private synthetic Y(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->l:Lcom/google/android/exoplayer2/source/ads/e;

    invoke-interface {v0, p0, p1}, Lcom/google/android/exoplayer2/source/ads/e;->e(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/e$a;)V

    return-void
.end method

.method private Z()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->t:Lcom/google/android/exoplayer2/source/ads/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->u:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    array-length v3, v3

    if-ge v2, v3, :cond_4

    const/4 v3, 0x0

    .line 3
    :goto_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->u:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    aget-object v5, v4, v2

    array-length v5, v5

    if-ge v3, v5, :cond_3

    .line 4
    aget-object v4, v4, v2

    aget-object v4, v4, v3

    if-eqz v4, :cond_2

    .line 5
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;->d()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/ads/c;->d:[Lcom/google/android/exoplayer2/source/ads/c$a;

    aget-object v6, v5, v2

    if-eqz v6, :cond_2

    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/google/android/exoplayer2/source/ads/c$a;->b:[Landroid/net/Uri;

    array-length v6, v6

    if-ge v3, v6, :cond_2

    .line 6
    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/ads/c$a;->b:[Landroid/net/Uri;

    aget-object v5, v5, v3

    if-eqz v5, :cond_2

    .line 7
    new-instance v6, Lcom/google/android/exoplayer2/b1$c;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/b1$c;-><init>()V

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/b1$c;->F(Landroid/net/Uri;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object v6

    .line 8
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->j:Lcom/google/android/exoplayer2/source/z;

    .line 9
    invoke-interface {v7}, Lcom/google/android/exoplayer2/source/z;->e()Lcom/google/android/exoplayer2/b1;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/exoplayer2/b1;->b:Lcom/google/android/exoplayer2/b1$g;

    if-eqz v7, :cond_1

    .line 10
    iget-object v7, v7, Lcom/google/android/exoplayer2/b1$g;->c:Lcom/google/android/exoplayer2/b1$e;

    if-eqz v7, :cond_1

    .line 11
    iget-object v8, v7, Lcom/google/android/exoplayer2/b1$e;->a:Ljava/util/UUID;

    invoke-virtual {v6, v8}, Lcom/google/android/exoplayer2/b1$c;->t(Ljava/util/UUID;)Lcom/google/android/exoplayer2/b1$c;

    .line 12
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/b1$e;->a()[B

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/exoplayer2/b1$c;->l([B)Lcom/google/android/exoplayer2/b1$c;

    .line 13
    iget-object v8, v7, Lcom/google/android/exoplayer2/b1$e;->b:Landroid/net/Uri;

    invoke-virtual {v6, v8}, Lcom/google/android/exoplayer2/b1$c;->n(Landroid/net/Uri;)Lcom/google/android/exoplayer2/b1$c;

    .line 14
    iget-boolean v8, v7, Lcom/google/android/exoplayer2/b1$e;->f:Z

    invoke-virtual {v6, v8}, Lcom/google/android/exoplayer2/b1$c;->k(Z)Lcom/google/android/exoplayer2/b1$c;

    .line 15
    iget-object v8, v7, Lcom/google/android/exoplayer2/b1$e;->c:Ljava/util/Map;

    invoke-virtual {v6, v8}, Lcom/google/android/exoplayer2/b1$c;->m(Ljava/util/Map;)Lcom/google/android/exoplayer2/b1$c;

    .line 16
    iget-boolean v8, v7, Lcom/google/android/exoplayer2/b1$e;->d:Z

    invoke-virtual {v6, v8}, Lcom/google/android/exoplayer2/b1$c;->p(Z)Lcom/google/android/exoplayer2/b1$c;

    .line 17
    iget-boolean v8, v7, Lcom/google/android/exoplayer2/b1$e;->e:Z

    invoke-virtual {v6, v8}, Lcom/google/android/exoplayer2/b1$c;->q(Z)Lcom/google/android/exoplayer2/b1$c;

    .line 18
    iget-object v7, v7, Lcom/google/android/exoplayer2/b1$e;->g:Ljava/util/List;

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/b1$c;->s(Ljava/util/List;)Lcom/google/android/exoplayer2/b1$c;

    .line 19
    :cond_1
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->k:Lcom/google/android/exoplayer2/source/j0;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/b1$c;->a()Lcom/google/android/exoplayer2/b1;

    move-result-object v6

    invoke-interface {v7, v6}, Lcom/google/android/exoplayer2/source/j0;->c(Lcom/google/android/exoplayer2/b1;)Lcom/google/android/exoplayer2/source/z;

    move-result-object v6

    .line 20
    invoke-virtual {v4, v6, v5}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;->e(Lcom/google/android/exoplayer2/source/z;Landroid/net/Uri;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private a0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->s:Lcom/google/android/exoplayer2/s2;

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->t:Lcom/google/android/exoplayer2/source/ads/c;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 3
    iget v2, v1, Lcom/google/android/exoplayer2/source/ads/c;->b:I

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/a;->z(Lcom/google/android/exoplayer2/s2;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->V()[[J

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/ads/c;->i([[J)Lcom/google/android/exoplayer2/source/ads/c;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->t:Lcom/google/android/exoplayer2/source/ads/c;

    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/source/ads/k;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->t:Lcom/google/android/exoplayer2/source/ads/c;

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer2/source/ads/k;-><init>(Lcom/google/android/exoplayer2/s2;Lcom/google/android/exoplayer2/source/ads/c;)V

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/a;->z(Lcom/google/android/exoplayer2/s2;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private b0(Lcom/google/android/exoplayer2/source/ads/c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->t:Lcom/google/android/exoplayer2/source/ads/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget v0, p1, Lcom/google/android/exoplayer2/source/ads/c;->b:I

    new-array v0, v0, [[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->u:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    new-array v1, v1, [Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    .line 3
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget v2, p1, Lcom/google/android/exoplayer2/source/ads/c;->b:I

    iget v0, v0, Lcom/google/android/exoplayer2/source/ads/c;->b:I

    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 5
    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->t:Lcom/google/android/exoplayer2/source/ads/c;

    .line 6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->Z()V

    .line 7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->a0()V

    return-void
.end method


# virtual methods
.method protected A()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/e;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->r:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->r:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;->g()V

    .line 5
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->s:Lcom/google/android/exoplayer2/s2;

    .line 6
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->t:Lcom/google/android/exoplayer2/source/ads/c;

    const/4 v1, 0x0

    new-array v1, v1, [[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    .line 7
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->u:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    .line 8
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->p:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/exoplayer2/source/ads/g;

    invoke-direct {v2, p0, v0}, Lcom/google/android/exoplayer2/source/ads/g;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected bridge synthetic E(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/source/z$a;
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/z$a;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->W(Lcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/source/z$a;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic I(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/z;Lcom/google/android/exoplayer2/s2;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/z$a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->c0(Lcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/source/z;Lcom/google/android/exoplayer2/s2;)V

    return-void
.end method

.method protected W(Lcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/source/z$a;
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/x;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public a(Lcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/w;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->t:Lcom/google/android/exoplayer2/source/ads/c;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/ads/c;

    .line 2
    iget v0, v0, Lcom/google/android/exoplayer2/source/ads/c;->b:I

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/x;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget v0, p1, Lcom/google/android/exoplayer2/source/x;->b:I

    .line 4
    iget v1, p1, Lcom/google/android/exoplayer2/source/x;->c:I

    .line 5
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->u:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    aget-object v3, v2, v0

    array-length v3, v3

    if-gt v3, v1, :cond_0

    add-int/lit8 v3, v1, 0x1

    .line 6
    aget-object v4, v2, v0

    .line 7
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    aput-object v3, v2, v0

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->u:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    .line 9
    new-instance v2, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    invoke-direct {v2, p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/z$a;)V

    .line 10
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->u:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    aget-object v0, v3, v0

    aput-object v2, v0, v1

    .line 11
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->Z()V

    .line 12
    :cond_1
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;->a(Lcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/w;

    move-result-object p1

    return-object p1

    .line 13
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/source/q;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/q;-><init>(Lcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/upstream/b;J)V

    .line 14
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->j:Lcom/google/android/exoplayer2/source/z;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/q;->x(Lcom/google/android/exoplayer2/source/z;)V

    .line 15
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/q;->a(Lcom/google/android/exoplayer2/source/z$a;)V

    return-object v0
.end method

.method protected c0(Lcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/source/z;Lcom/google/android/exoplayer2/s2;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/x;->c()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget p2, p1, Lcom/google/android/exoplayer2/source/x;->b:I

    .line 3
    iget p1, p1, Lcom/google/android/exoplayer2/source/x;->c:I

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->u:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    aget-object p2, v0, p2

    aget-object p1, p2, p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    .line 5
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;->c(Lcom/google/android/exoplayer2/s2;)V

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/s2;->m()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 7
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->s:Lcom/google/android/exoplayer2/s2;

    .line 8
    :goto_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->a0()V

    return-void
.end method

.method public e()Lcom/google/android/exoplayer2/b1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->j:Lcom/google/android/exoplayer2/source/z;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/z;->e()Lcom/google/android/exoplayer2/b1;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->j:Lcom/google/android/exoplayer2/source/z;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/z;->f()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public g(Lcom/google/android/exoplayer2/source/w;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/source/q;

    .line 2
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/q;->a:Lcom/google/android/exoplayer2/source/z$a;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/x;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->u:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    iget v2, v0, Lcom/google/android/exoplayer2/source/x;->b:I

    aget-object v1, v1, v2

    iget v2, v0, Lcom/google/android/exoplayer2/source/x;->c:I

    aget-object v1, v1, v2

    .line 5
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    .line 6
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;->h(Lcom/google/android/exoplayer2/source/q;)V

    .line 7
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;->g()V

    .line 9
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->u:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;

    iget v1, v0, Lcom/google/android/exoplayer2/source/x;->b:I

    aget-object p1, p1, v1

    iget v0, v0, Lcom/google/android/exoplayer2/source/x;->c:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/q;->w()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected y(Lcom/google/android/exoplayer2/upstream/p0;)V
    .locals 2
    .param p1    # Lcom/google/android/exoplayer2/upstream/p0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/e;->y(Lcom/google/android/exoplayer2/upstream/p0;)V

    .line 2
    new-instance p1, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->r:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;

    .line 4
    sget-object v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->v:Lcom/google/android/exoplayer2/source/z$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->j:Lcom/google/android/exoplayer2/source/z;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/e;->J(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/z;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->p:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/source/ads/f;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/source/ads/f;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

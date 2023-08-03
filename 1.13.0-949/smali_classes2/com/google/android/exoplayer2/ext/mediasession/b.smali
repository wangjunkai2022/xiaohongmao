.class public final Lcom/google/android/exoplayer2/ext/mediasession/b;
.super Ljava/lang/Object;
.source "MediaSessionConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ext/mediasession/b$d;,
        Lcom/google/android/exoplayer2/ext/mediasession/b$f;,
        Lcom/google/android/exoplayer2/ext/mediasession/b$h;,
        Lcom/google/android/exoplayer2/ext/mediasession/b$e;,
        Lcom/google/android/exoplayer2/ext/mediasession/b$g;,
        Lcom/google/android/exoplayer2/ext/mediasession/b$b;,
        Lcom/google/android/exoplayer2/ext/mediasession/b$m;,
        Lcom/google/android/exoplayer2/ext/mediasession/b$k;,
        Lcom/google/android/exoplayer2/ext/mediasession/b$l;,
        Lcom/google/android/exoplayer2/ext/mediasession/b$j;,
        Lcom/google/android/exoplayer2/ext/mediasession/b$c;,
        Lcom/google/android/exoplayer2/ext/mediasession/b$i;
    }
.end annotation


# static fields
.field private static final A:I = 0x7

.field private static final B:Landroid/support/v4/media/MediaMetadataCompat;

.field public static final u:J = 0x400000L

.field public static final v:J = 0x64034fL

.field public static final w:J = 0x24034fL

.field public static final x:Ljava/lang/String; = "EXO_SPEED"

.field private static final y:J = 0x640207L

.field private static final z:I = 0x3


# instance fields
.field public final a:Landroid/support/v4/media/session/MediaSessionCompat;

.field private final b:Landroid/os/Looper;

.field private final c:Lcom/google/android/exoplayer2/ext/mediasession/b$d;

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/ext/mediasession/b$c;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/ext/mediasession/b$c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/exoplayer2/j;

.field private g:[Lcom/google/android/exoplayer2/ext/mediasession/b$e;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/ext/mediasession/b$e;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/google/android/exoplayer2/ext/mediasession/b$h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Lcom/google/android/exoplayer2/v1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:Lcom/google/android/exoplayer2/util/k;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/k<",
            "-",
            "Lcom/google/android/exoplayer2/ExoPlaybackException;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/util/Pair;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private n:Lcom/google/android/exoplayer2/ext/mediasession/b$j;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private o:Lcom/google/android/exoplayer2/ext/mediasession/b$l;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private p:Lcom/google/android/exoplayer2/ext/mediasession/b$k;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private q:Lcom/google/android/exoplayer2/ext/mediasession/b$m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private r:Lcom/google/android/exoplayer2/ext/mediasession/b$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private s:Lcom/google/android/exoplayer2/ext/mediasession/b$g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private t:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.mediasession"

    .line 1
    invoke-static {v0}, Lcom/google/android/exoplayer2/u0;->a(Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$b;

    invoke-direct {v0}, Landroid/support/v4/media/MediaMetadataCompat$b;-><init>()V

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat$b;->a()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/ext/mediasession/b;->B:Landroid/support/v4/media/MediaMetadataCompat;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->a:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 3
    invoke-static {}, Lcom/google/android/exoplayer2/util/z0;->X()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->b:Landroid/os/Looper;

    .line 4
    new-instance v1, Lcom/google/android/exoplayer2/ext/mediasession/b$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer2/ext/mediasession/b$d;-><init>(Lcom/google/android/exoplayer2/ext/mediasession/b;Lcom/google/android/exoplayer2/ext/mediasession/b$a;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->c:Lcom/google/android/exoplayer2/ext/mediasession/b$d;

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->d:Ljava/util/ArrayList;

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->e:Ljava/util/ArrayList;

    .line 7
    new-instance v3, Lcom/google/android/exoplayer2/k;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/k;-><init>()V

    iput-object v3, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->f:Lcom/google/android/exoplayer2/j;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/exoplayer2/ext/mediasession/b$e;

    .line 8
    iput-object v3, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->g:[Lcom/google/android/exoplayer2/ext/mediasession/b$e;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->h:Ljava/util/Map;

    .line 10
    new-instance v3, Lcom/google/android/exoplayer2/ext/mediasession/b$f;

    .line 11
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->f()Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/google/android/exoplayer2/ext/mediasession/b$f;-><init>(Landroid/support/v4/media/session/MediaControllerCompat;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->i:Lcom/google/android/exoplayer2/ext/mediasession/b$h;

    const-wide/32 v2, 0x24034f

    .line 12
    iput-wide v2, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->t:J

    const/4 v2, 0x3

    .line 13
    invoke-virtual {p1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->u(I)V

    .line 14
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->r(Landroid/support/v4/media/session/MediaSessionCompat$b;Landroid/os/Handler;)V

    return-void
.end method

.method private A()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "player",
            "ratingCallback"
        }
        result = true
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->j:Lcom/google/android/exoplayer2/v1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->q:Lcom/google/android/exoplayer2/ext/mediasession/b$m;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private B(J)Z
    .locals 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "playbackPreparer"
        }
        result = true
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->n:Lcom/google/android/exoplayer2/ext/mediasession/b$j;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b$j;->h()J

    move-result-wide v0

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private C(J)Z
    .locals 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "player",
            "queueNavigator"
        }
        result = true
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->j:Lcom/google/android/exoplayer2/v1;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->o:Lcom/google/android/exoplayer2/ext/mediasession/b$l;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/ext/mediasession/b$l;->r(Lcom/google/android/exoplayer2/v1;)J

    move-result-wide v0

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static D(IZ)I
    .locals 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x3

    :cond_2
    return v0

    :cond_3
    if-eqz p1, :cond_4

    const/4 v0, 0x6

    :cond_4
    return v0
.end method

.method private H(Lcom/google/android/exoplayer2/ext/mediasession/b$c;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/ext/mediasession/b$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private J(Lcom/google/android/exoplayer2/v1;IJ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->f:Lcom/google/android/exoplayer2/j;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/j;->c(Lcom/google/android/exoplayer2/v1;IJ)Z

    return-void
.end method

.method static synthetic a()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/ext/mediasession/b;->B:Landroid/support/v4/media/MediaMetadataCompat;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/ext/mediasession/b;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method private b0(Lcom/google/android/exoplayer2/ext/mediasession/b$c;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/ext/mediasession/b$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/ext/mediasession/b;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/ext/mediasession/b;J)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ext/mediasession/b;->B(J)Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/ext/mediasession/b;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->A()Z

    move-result p0

    return p0
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/ext/mediasession/b$m;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->q:Lcom/google/android/exoplayer2/ext/mediasession/b$m;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/ext/mediasession/b;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->y()Z

    move-result p0

    return p0
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/ext/mediasession/b$k;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->p:Lcom/google/android/exoplayer2/ext/mediasession/b$k;

    return-object p0
.end method

.method static synthetic i(Lcom/google/android/exoplayer2/ext/mediasession/b;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->z()Z

    move-result p0

    return p0
.end method

.method static synthetic j(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/ext/mediasession/b$b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->r:Lcom/google/android/exoplayer2/ext/mediasession/b$b;

    return-object p0
.end method

.method static synthetic k(Lcom/google/android/exoplayer2/ext/mediasession/b;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->w()Z

    move-result p0

    return p0
.end method

.method static synthetic l(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/ext/mediasession/b$l;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->o:Lcom/google/android/exoplayer2/ext/mediasession/b$l;

    return-object p0
.end method

.method static synthetic m(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/ext/mediasession/b$g;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->s:Lcom/google/android/exoplayer2/ext/mediasession/b$g;

    return-object p0
.end method

.method static synthetic n(Lcom/google/android/exoplayer2/ext/mediasession/b;J)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ext/mediasession/b;->x(J)Z

    move-result p0

    return p0
.end method

.method static synthetic o(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/v1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->j:Lcom/google/android/exoplayer2/v1;

    return-object p0
.end method

.method static synthetic p(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/ext/mediasession/b$j;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->n:Lcom/google/android/exoplayer2/ext/mediasession/b$j;

    return-object p0
.end method

.method static synthetic q(Lcom/google/android/exoplayer2/ext/mediasession/b;)Lcom/google/android/exoplayer2/j;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->f:Lcom/google/android/exoplayer2/j;

    return-object p0
.end method

.method static synthetic r(Lcom/google/android/exoplayer2/ext/mediasession/b;Lcom/google/android/exoplayer2/v1;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ext/mediasession/b;->J(Lcom/google/android/exoplayer2/v1;IJ)V

    return-void
.end method

.method static synthetic s(Lcom/google/android/exoplayer2/ext/mediasession/b;J)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ext/mediasession/b;->C(J)Z

    move-result p0

    return p0
.end method

.method static synthetic t(Lcom/google/android/exoplayer2/ext/mediasession/b;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->h:Ljava/util/Map;

    return-object p0
.end method

.method private u(Lcom/google/android/exoplayer2/v1;)J
    .locals 9

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->A0()Lcom/google/android/exoplayer2/s2;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->K()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->U()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 4
    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->f:Lcom/google/android/exoplayer2/j;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/j;->h()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    iget-object v4, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->f:Lcom/google/android/exoplayer2/j;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/j;->l()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 6
    :goto_1
    iget-object v5, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->q:Lcom/google/android/exoplayer2/ext/mediasession/b$m;

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 7
    :goto_2
    iget-object v6, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->r:Lcom/google/android/exoplayer2/ext/mediasession/b$b;

    if-eqz v6, :cond_3

    invoke-interface {v6, p1}, Lcom/google/android/exoplayer2/ext/mediasession/b$b;->d(Lcom/google/android/exoplayer2/v1;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v1, 0x1

    :cond_3
    move v8, v1

    move v1, v0

    move v0, v8

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_3
    const-wide/32 v6, 0x640207

    if-eqz v1, :cond_5

    const-wide/32 v6, 0x640307

    :cond_5
    if-eqz v4, :cond_6

    const-wide/16 v1, 0x40

    or-long/2addr v6, v1

    :cond_6
    if-eqz v3, :cond_7

    const-wide/16 v1, 0x8

    or-long/2addr v6, v1

    .line 8
    :cond_7
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->t:J

    and-long/2addr v1, v6

    .line 9
    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->o:Lcom/google/android/exoplayer2/ext/mediasession/b$l;

    if-eqz v3, :cond_8

    const-wide/16 v6, 0x1030

    .line 10
    invoke-interface {v3, p1}, Lcom/google/android/exoplayer2/ext/mediasession/b$l;->r(Lcom/google/android/exoplayer2/v1;)J

    move-result-wide v3

    and-long/2addr v3, v6

    or-long/2addr v1, v3

    :cond_8
    if-eqz v5, :cond_9

    const-wide/16 v3, 0x80

    or-long/2addr v1, v3

    :cond_9
    if-eqz v0, :cond_a

    const-wide/32 v3, 0x100000

    or-long/2addr v1, v3

    :cond_a
    return-wide v1
.end method

.method private v()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->n:Lcom/google/android/exoplayer2/ext/mediasession/b$j;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/32 v1, 0x3ec00

    .line 2
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ext/mediasession/b$j;->h()J

    move-result-wide v3

    and-long v0, v3, v1

    :goto_0
    return-wide v0
.end method

.method private w()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "player",
            "mediaButtonEventHandler"
        }
        result = true
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->j:Lcom/google/android/exoplayer2/v1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->s:Lcom/google/android/exoplayer2/ext/mediasession/b$g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private x(J)Z
    .locals 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "player"
        }
        result = true
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->j:Lcom/google/android/exoplayer2/v1;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->t:J

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private y()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "player",
            "queueEditor"
        }
        result = true
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->j:Lcom/google/android/exoplayer2/v1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->p:Lcom/google/android/exoplayer2/ext/mediasession/b$k;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private z()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "player",
            "captionCallback"
        }
        result = true
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->j:Lcom/google/android/exoplayer2/v1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->r:Lcom/google/android/exoplayer2/ext/mediasession/b$b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final E()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->i:Lcom/google/android/exoplayer2/ext/mediasession/b$h;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->j:Lcom/google/android/exoplayer2/v1;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ext/mediasession/b$h;->a(Lcom/google/android/exoplayer2/v1;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/ext/mediasession/b;->B:Landroid/support/v4/media/MediaMetadataCompat;

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->a:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->w(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void
.end method

.method public final F()V
    .locals 14

    .line 1
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$c;

    invoke-direct {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$c;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->j:Lcom/google/android/exoplayer2/v1;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->v()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/media/session/PlaybackStateCompat$c;->d(J)Landroid/support/v4/media/session/PlaybackStateCompat$c;

    move-result-object v5

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 5
    invoke-virtual/range {v5 .. v11}, Landroid/support/v4/media/session/PlaybackStateCompat$c;->k(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$c;

    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->a:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->D(I)V

    .line 7
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->a:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->F(I)V

    .line 8
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->a:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$c;->c()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->x(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void

    .line 9
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 10
    iget-object v4, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->g:[Lcom/google/android/exoplayer2/ext/mediasession/b$e;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 11
    invoke-interface {v7, v1}, Lcom/google/android/exoplayer2/ext/mediasession/b$e;->b(Lcom/google/android/exoplayer2/v1;)Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 12
    invoke-virtual {v8}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {v0, v8}, Landroid/support/v4/media/session/PlaybackStateCompat$c;->a(Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;)Landroid/support/v4/media/session/PlaybackStateCompat$c;

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 14
    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->h:Ljava/util/Map;

    .line 15
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 16
    invoke-interface {v1}, Lcom/google/android/exoplayer2/v1;->k0()Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v4, :cond_4

    .line 17
    iget-object v6, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->l:Landroid/util/Pair;

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v6, 0x1

    :goto_2
    if-eqz v6, :cond_5

    const/4 v6, 0x7

    const/4 v8, 0x7

    goto :goto_3

    .line 18
    :cond_5
    invoke-interface {v1}, Lcom/google/android/exoplayer2/v1;->c()I

    move-result v6

    invoke-interface {v1}, Lcom/google/android/exoplayer2/v1;->Q0()Z

    move-result v7

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/ext/mediasession/b;->D(IZ)I

    move-result v6

    move v8, v6

    .line 19
    :goto_3
    iget-object v6, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->l:Landroid/util/Pair;

    if-eqz v6, :cond_6

    .line 20
    iget-object v4, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v6, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->l:Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4, v6}, Landroid/support/v4/media/session/PlaybackStateCompat$c;->g(ILjava/lang/CharSequence;)Landroid/support/v4/media/session/PlaybackStateCompat$c;

    .line 21
    iget-object v4, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->m:Landroid/os/Bundle;

    if-eqz v4, :cond_7

    .line 22
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_4

    :cond_6
    if-eqz v4, :cond_7

    .line 23
    iget-object v6, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->k:Lcom/google/android/exoplayer2/util/k;

    if-eqz v6, :cond_7

    .line 24
    invoke-interface {v6, v4}, Lcom/google/android/exoplayer2/util/k;->a(Ljava/lang/Throwable;)Landroid/util/Pair;

    move-result-object v4

    .line 25
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v6, v4}, Landroid/support/v4/media/session/PlaybackStateCompat$c;->g(ILjava/lang/CharSequence;)Landroid/support/v4/media/session/PlaybackStateCompat$c;

    .line 26
    :cond_7
    :goto_4
    iget-object v4, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->o:Lcom/google/android/exoplayer2/ext/mediasession/b$l;

    if-eqz v4, :cond_8

    .line 27
    invoke-interface {v4, v1}, Lcom/google/android/exoplayer2/ext/mediasession/b$l;->e(Lcom/google/android/exoplayer2/v1;)J

    move-result-wide v6

    goto :goto_5

    :cond_8
    const-wide/16 v6, -0x1

    .line 28
    :goto_5
    invoke-interface {v1}, Lcom/google/android/exoplayer2/v1;->e()Lcom/google/android/exoplayer2/t1;

    move-result-object v4

    iget v4, v4, Lcom/google/android/exoplayer2/t1;->a:F

    const-string v9, "EXO_SPEED"

    .line 29
    invoke-virtual {v3, v9, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 30
    invoke-interface {v1}, Lcom/google/android/exoplayer2/v1;->isPlaying()Z

    move-result v9

    if-eqz v9, :cond_9

    move v11, v4

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    const/4 v11, 0x0

    .line 31
    :goto_6
    invoke-interface {v1}, Lcom/google/android/exoplayer2/v1;->N()Lcom/google/android/exoplayer2/b1;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 32
    iget-object v9, v4, Lcom/google/android/exoplayer2/b1;->a:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 33
    iget-object v4, v4, Lcom/google/android/exoplayer2/b1;->a:Ljava/lang/String;

    const-string v9, "androidx.media.PlaybackStateCompat.Extras.KEY_MEDIA_ID"

    invoke-virtual {v3, v9, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_a
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->v()J

    move-result-wide v9

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ext/mediasession/b;->u(Lcom/google/android/exoplayer2/v1;)J

    move-result-wide v12

    or-long/2addr v9, v12

    invoke-virtual {v0, v9, v10}, Landroid/support/v4/media/session/PlaybackStateCompat$c;->d(J)Landroid/support/v4/media/session/PlaybackStateCompat$c;

    move-result-object v4

    .line 35
    invoke-virtual {v4, v6, v7}, Landroid/support/v4/media/session/PlaybackStateCompat$c;->e(J)Landroid/support/v4/media/session/PlaybackStateCompat$c;

    move-result-object v4

    .line 36
    invoke-interface {v1}, Lcom/google/android/exoplayer2/v1;->s1()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/support/v4/media/session/PlaybackStateCompat$c;->f(J)Landroid/support/v4/media/session/PlaybackStateCompat$c;

    move-result-object v7

    .line 37
    invoke-interface {v1}, Lcom/google/android/exoplayer2/v1;->getCurrentPosition()J

    move-result-wide v9

    .line 38
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 39
    invoke-virtual/range {v7 .. v13}, Landroid/support/v4/media/session/PlaybackStateCompat$c;->k(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$c;

    move-result-object v4

    .line 40
    invoke-virtual {v4, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$c;->i(Landroid/os/Bundle;)Landroid/support/v4/media/session/PlaybackStateCompat$c;

    .line 41
    invoke-interface {v1}, Lcom/google/android/exoplayer2/v1;->k()I

    move-result v3

    .line 42
    iget-object v4, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->a:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v6, 0x2

    if-ne v3, v5, :cond_b

    const/4 v2, 0x1

    goto :goto_7

    :cond_b
    if-ne v3, v6, :cond_c

    const/4 v2, 0x2

    :cond_c
    :goto_7
    invoke-virtual {v4, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->D(I)V

    .line 43
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->a:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 44
    invoke-interface {v1}, Lcom/google/android/exoplayer2/v1;->H1()Z

    move-result v1

    .line 45
    invoke-virtual {v2, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->F(I)V

    .line 46
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->a:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$c;->c()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->x(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method

.method public final G()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->o:Lcom/google/android/exoplayer2/ext/mediasession/b$l;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->j:Lcom/google/android/exoplayer2/v1;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ext/mediasession/b$l;->l(Lcom/google/android/exoplayer2/v1;)V

    :cond_0
    return-void
.end method

.method public I(Lcom/google/android/exoplayer2/ext/mediasession/b$c;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/ext/mediasession/b$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public K(Lcom/google/android/exoplayer2/ext/mediasession/b$b;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/ext/mediasession/b$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->r:Lcom/google/android/exoplayer2/ext/mediasession/b$b;

    if-eq v0, p1, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->b0(Lcom/google/android/exoplayer2/ext/mediasession/b$c;)V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->r:Lcom/google/android/exoplayer2/ext/mediasession/b$b;

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/mediasession/b;->H(Lcom/google/android/exoplayer2/ext/mediasession/b$c;)V

    :cond_0
    return-void
.end method

.method public L(Lcom/google/android/exoplayer2/j;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->f:Lcom/google/android/exoplayer2/j;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->f:Lcom/google/android/exoplayer2/j;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->F()V

    :cond_0
    return-void
.end method

.method public varargs M([Lcom/google/android/exoplayer2/ext/mediasession/b$e;)V
    .locals 0
    .param p1    # [Lcom/google/android/exoplayer2/ext/mediasession/b$e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/google/android/exoplayer2/ext/mediasession/b$e;

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->g:[Lcom/google/android/exoplayer2/ext/mediasession/b$e;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->F()V

    return-void
.end method

.method public N(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->O(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public O(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->P(Ljava/lang/CharSequence;ILandroid/os/Bundle;)V

    return-void
.end method

.method public P(Ljava/lang/CharSequence;ILandroid/os/Bundle;)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v1, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->l:Landroid/util/Pair;

    if-nez p1, :cond_1

    move-object p3, v0

    .line 2
    :cond_1
    iput-object p3, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->m:Landroid/os/Bundle;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->F()V

    return-void
.end method

.method public Q(J)V
    .locals 3

    const-wide/32 v0, 0x64034f

    and-long/2addr p1, v0

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->t:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    .line 2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->t:J

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->F()V

    :cond_0
    return-void
.end method

.method public R(Lcom/google/android/exoplayer2/util/k;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/util/k;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/k<",
            "-",
            "Lcom/google/android/exoplayer2/ExoPlaybackException;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->k:Lcom/google/android/exoplayer2/util/k;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->k:Lcom/google/android/exoplayer2/util/k;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->F()V

    :cond_0
    return-void
.end method

.method public S(I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->f:Lcom/google/android/exoplayer2/j;

    instance-of v1, v0, Lcom/google/android/exoplayer2/k;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/google/android/exoplayer2/k;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/k;->q(J)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->F()V

    :cond_0
    return-void
.end method

.method public T(Lcom/google/android/exoplayer2/ext/mediasession/b$g;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/ext/mediasession/b$g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->s:Lcom/google/android/exoplayer2/ext/mediasession/b$g;

    return-void
.end method

.method public U(Lcom/google/android/exoplayer2/ext/mediasession/b$h;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/ext/mediasession/b$h;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->i:Lcom/google/android/exoplayer2/ext/mediasession/b$h;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->i:Lcom/google/android/exoplayer2/ext/mediasession/b$h;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->E()V

    :cond_0
    return-void
.end method

.method public V(Lcom/google/android/exoplayer2/ext/mediasession/b$j;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/ext/mediasession/b$j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->n:Lcom/google/android/exoplayer2/ext/mediasession/b$j;

    if-eq v0, p1, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->b0(Lcom/google/android/exoplayer2/ext/mediasession/b$c;)V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->n:Lcom/google/android/exoplayer2/ext/mediasession/b$j;

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/mediasession/b;->H(Lcom/google/android/exoplayer2/ext/mediasession/b$c;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->F()V

    :cond_0
    return-void
.end method

.method public W(Lcom/google/android/exoplayer2/v1;)V
    .locals 2
    .param p1    # Lcom/google/android/exoplayer2/v1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->B0()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->b:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->j:Lcom/google/android/exoplayer2/v1;

    if-eqz v0, :cond_2

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->c:Lcom/google/android/exoplayer2/ext/mediasession/b$d;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/v1;->W(Lcom/google/android/exoplayer2/v1$h;)V

    .line 4
    :cond_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->j:Lcom/google/android/exoplayer2/v1;

    if-eqz p1, :cond_3

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->c:Lcom/google/android/exoplayer2/ext/mediasession/b$d;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/v1;->p1(Lcom/google/android/exoplayer2/v1$h;)V

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->F()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->E()V

    return-void
.end method

.method public X(Lcom/google/android/exoplayer2/ext/mediasession/b$k;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/ext/mediasession/b$k;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->p:Lcom/google/android/exoplayer2/ext/mediasession/b$k;

    if-eq v0, p1, :cond_1

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->b0(Lcom/google/android/exoplayer2/ext/mediasession/b$c;)V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->p:Lcom/google/android/exoplayer2/ext/mediasession/b$k;

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/mediasession/b;->H(Lcom/google/android/exoplayer2/ext/mediasession/b$c;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->a:Landroid/support/v4/media/session/MediaSessionCompat;

    if-nez p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    :goto_0
    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->u(I)V

    :cond_1
    return-void
.end method

.method public Y(Lcom/google/android/exoplayer2/ext/mediasession/b$l;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/ext/mediasession/b$l;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->o:Lcom/google/android/exoplayer2/ext/mediasession/b$l;

    if-eq v0, p1, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->b0(Lcom/google/android/exoplayer2/ext/mediasession/b$c;)V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->o:Lcom/google/android/exoplayer2/ext/mediasession/b$l;

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/mediasession/b;->H(Lcom/google/android/exoplayer2/ext/mediasession/b$c;)V

    :cond_0
    return-void
.end method

.method public Z(Lcom/google/android/exoplayer2/ext/mediasession/b$m;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/ext/mediasession/b$m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->q:Lcom/google/android/exoplayer2/ext/mediasession/b$m;

    if-eq v0, p1, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->b0(Lcom/google/android/exoplayer2/ext/mediasession/b$c;)V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->q:Lcom/google/android/exoplayer2/ext/mediasession/b$m;

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/mediasession/b;->H(Lcom/google/android/exoplayer2/ext/mediasession/b$c;)V

    :cond_0
    return-void
.end method

.method public a0(I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->f:Lcom/google/android/exoplayer2/j;

    instance-of v1, v0, Lcom/google/android/exoplayer2/k;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/google/android/exoplayer2/k;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/k;->r(J)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/mediasession/b;->F()V

    :cond_0
    return-void
.end method

.method public c0(Lcom/google/android/exoplayer2/ext/mediasession/b$c;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/ext/mediasession/b$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

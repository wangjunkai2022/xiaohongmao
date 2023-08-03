.class public final Lcom/google/android/exoplayer2/offline/DownloadHelper;
.super Ljava/lang/Object;
.source "DownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/offline/DownloadHelper$e;,
        Lcom/google/android/exoplayer2/offline/DownloadHelper$d;,
        Lcom/google/android/exoplayer2/offline/DownloadHelper$f;,
        Lcom/google/android/exoplayer2/offline/DownloadHelper$LiveContentUnsupportedException;,
        Lcom/google/android/exoplayer2/offline/DownloadHelper$c;
    }
.end annotation


# static fields
.field public static final o:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

.field public static final p:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final q:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final a:Lcom/google/android/exoplayer2/b1$g;

.field private final b:Lcom/google/android/exoplayer2/source/z;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final c:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

.field private final d:[Lcom/google/android/exoplayer2/g2;

.field private final e:Landroid/util/SparseIntArray;

.field private final f:Landroid/os/Handler;

.field private final g:Lcom/google/android/exoplayer2/s2$d;

.field private h:Z

.field private i:Lcom/google/android/exoplayer2/offline/DownloadHelper$c;

.field private j:Lcom/google/android/exoplayer2/offline/DownloadHelper$f;

.field private k:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private l:[Lcom/google/android/exoplayer2/trackselection/i$a;

.field private m:[[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/trackselection/g;",
            ">;"
        }
    .end annotation
.end field

.field private n:[[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/trackselection/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->C(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->l()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->o:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 3
    sput-object v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->p:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 4
    sput-object v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->q:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/b1;Lcom/google/android/exoplayer2/source/z;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;[Lcom/google/android/exoplayer2/g2;)V
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/source/z;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/android/exoplayer2/b1;->b:Lcom/google/android/exoplayer2/b1$g;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/b1$g;

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->a:Lcom/google/android/exoplayer2/b1$g;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->b:Lcom/google/android/exoplayer2/source/z;

    .line 4
    new-instance p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    new-instance p2, Lcom/google/android/exoplayer2/offline/DownloadHelper$d$a;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/offline/DownloadHelper$d$a;-><init>(Lcom/google/android/exoplayer2/offline/DownloadHelper$a;)V

    invoke-direct {p1, p3, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/g$b;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->c:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 5
    iput-object p4, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->d:[Lcom/google/android/exoplayer2/g2;

    .line 6
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->e:Landroid/util/SparseIntArray;

    .line 7
    sget-object p2, Lcom/google/android/exoplayer2/offline/j;->a:Lcom/google/android/exoplayer2/offline/j;

    new-instance p3, Lcom/google/android/exoplayer2/offline/DownloadHelper$e;

    invoke-direct {p3, v0}, Lcom/google/android/exoplayer2/offline/DownloadHelper$e;-><init>(Lcom/google/android/exoplayer2/offline/DownloadHelper$a;)V

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/o;->b(Lcom/google/android/exoplayer2/trackselection/o$a;Lcom/google/android/exoplayer2/upstream/e;)V

    .line 8
    invoke-static {}, Lcom/google/android/exoplayer2/util/z0;->B()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->f:Landroid/os/Handler;

    .line 9
    new-instance p1, Lcom/google/android/exoplayer2/s2$d;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/s2$d;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->g:Lcom/google/android/exoplayer2/s2$d;

    return-void
.end method

.method public static A(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/offline/DownloadHelper;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/b1$c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/b1$c;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/b1$c;->F(Landroid/net/Uri;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/b1$c;->j(Ljava/lang/String;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/b1$c;->a()Lcom/google/android/exoplayer2/b1;

    move-result-object p1

    .line 3
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->v(Landroid/content/Context;Lcom/google/android/exoplayer2/b1;)Lcom/google/android/exoplayer2/offline/DownloadHelper;

    move-result-object p0

    return-object p0
.end method

.method public static B(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/i2;)Lcom/google/android/exoplayer2/offline/DownloadHelper;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->E(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, p2, p3, v0, p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->D(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/offline/DownloadHelper;

    move-result-object p0

    return-object p0
.end method

.method public static C(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/i2;)Lcom/google/android/exoplayer2/offline/DownloadHelper;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->o:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->D(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/offline/DownloadHelper;

    move-result-object p0

    return-object p0
.end method

.method public static D(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/offline/DownloadHelper;
    .locals 1
    .param p3    # Lcom/google/android/exoplayer2/drm/u;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/b1$c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/b1$c;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/b1$c;->F(Landroid/net/Uri;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object p0

    const-string v0, "application/vnd.ms-sstr+xml"

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/b1$c;->B(Ljava/lang/String;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/b1$c;->a()Lcom/google/android/exoplayer2/b1;

    move-result-object p0

    .line 3
    invoke-static {p0, p4, p2, p1, p3}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->y(Lcom/google/android/exoplayer2/b1;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/drm/u;)Lcom/google/android/exoplayer2/offline/DownloadHelper;

    move-result-object p0

    return-object p0
.end method

.method public static E(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getDefaults(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    move-result-object p0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->C(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->l()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p0

    return-object p0
.end method

.method public static K(Lcom/google/android/exoplayer2/i2;)[Lcom/google/android/exoplayer2/g2;
    .locals 6

    .line 1
    invoke-static {}, Lcom/google/android/exoplayer2/util/z0;->B()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/offline/DownloadHelper$a;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/offline/DownloadHelper$a;-><init>()V

    new-instance v3, Lcom/google/android/exoplayer2/offline/DownloadHelper$b;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/offline/DownloadHelper$b;-><init>()V

    sget-object v4, Lcom/google/android/exoplayer2/offline/i;->a:Lcom/google/android/exoplayer2/offline/i;

    sget-object v5, Lcom/google/android/exoplayer2/offline/h;->a:Lcom/google/android/exoplayer2/offline/h;

    move-object v0, p0

    .line 2
    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/i2;->a(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/z;Lcom/google/android/exoplayer2/audio/u;Lcom/google/android/exoplayer2/text/j;Lcom/google/android/exoplayer2/metadata/e;)[Lcom/google/android/exoplayer2/e2;

    move-result-object p0

    .line 3
    array-length v0, p0

    new-array v0, v0, [Lcom/google/android/exoplayer2/g2;

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 5
    aget-object v2, p0, v1

    invoke-interface {v2}, Lcom/google/android/exoplayer2/e2;->n()Lcom/google/android/exoplayer2/g2;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static N(Lcom/google/android/exoplayer2/b1$g;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/b1$g;->a:Landroid/net/Uri;

    iget-object p0, p0, Lcom/google/android/exoplayer2/b1$g;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/z0;->z0(Landroid/net/Uri;Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic O(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method private static synthetic P(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    return-void
.end method

.method private static synthetic Q()V
    .locals 0

    return-void
.end method

.method private synthetic R(Ljava/io/IOException;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->i:Lcom/google/android/exoplayer2/offline/DownloadHelper$c;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/offline/DownloadHelper$c;

    invoke-interface {v0, p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper$c;->b(Lcom/google/android/exoplayer2/offline/DownloadHelper;Ljava/io/IOException;)V

    return-void
.end method

.method private synthetic S()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->i:Lcom/google/android/exoplayer2/offline/DownloadHelper$c;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/offline/DownloadHelper$c;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper$c;->a(Lcom/google/android/exoplayer2/offline/DownloadHelper;)V

    return-void
.end method

.method private synthetic T(Lcom/google/android/exoplayer2/offline/DownloadHelper$c;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper$c;->a(Lcom/google/android/exoplayer2/offline/DownloadHelper;)V

    return-void
.end method

.method private U(Ljava/io/IOException;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->f:Landroid/os/Handler;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/offline/m;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/offline/m;-><init>(Lcom/google/android/exoplayer2/offline/DownloadHelper;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private V()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->j:Lcom/google/android/exoplayer2/offline/DownloadHelper$f;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->j:Lcom/google/android/exoplayer2/offline/DownloadHelper$f;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadHelper$f;->i:[Lcom/google/android/exoplayer2/source/w;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->j:Lcom/google/android/exoplayer2/offline/DownloadHelper$f;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadHelper$f;->h:Lcom/google/android/exoplayer2/s2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->j:Lcom/google/android/exoplayer2/offline/DownloadHelper$f;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadHelper$f;->i:[Lcom/google/android/exoplayer2/source/w;

    array-length v0, v0

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->d:[Lcom/google/android/exoplayer2/g2;

    array-length v1, v1

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v5, 0x0

    aput v0, v3, v5

    .line 6
    const-class v6, Ljava/util/List;

    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/util/List;

    iput-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->m:[[Ljava/util/List;

    new-array v2, v2, [I

    aput v1, v2, v4

    aput v0, v2, v5

    .line 7
    const-class v3, Ljava/util/List;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/util/List;

    iput-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->n:[[Ljava/util/List;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_0

    .line 8
    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->m:[[Ljava/util/List;

    aget-object v4, v4, v2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    aput-object v6, v4, v3

    .line 9
    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->n:[[Ljava/util/List;

    aget-object v4, v4, v2

    iget-object v6, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->m:[[Ljava/util/List;

    aget-object v6, v6, v2

    aget-object v6, v6, v3

    .line 10
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    aput-object v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_1
    new-array v1, v0, [Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iput-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->k:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 12
    new-array v1, v0, [Lcom/google/android/exoplayer2/trackselection/i$a;

    iput-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->l:[Lcom/google/android/exoplayer2/trackselection/i$a;

    :goto_2
    if-ge v5, v0, :cond_2

    .line 13
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->k:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->j:Lcom/google/android/exoplayer2/offline/DownloadHelper$f;

    iget-object v2, v2, Lcom/google/android/exoplayer2/offline/DownloadHelper$f;->i:[Lcom/google/android/exoplayer2/source/w;

    aget-object v2, v2, v5

    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/w;->u()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v2

    aput-object v2, v1, v5

    .line 14
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->Z(I)Lcom/google/android/exoplayer2/trackselection/p;

    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->c:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/p;->d:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/trackselection/i;->d(Ljava/lang/Object;)V

    .line 16
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->l:[Lcom/google/android/exoplayer2/trackselection/i$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->c:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/trackselection/i;->g()Lcom/google/android/exoplayer2/trackselection/i$a;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/trackselection/i$a;

    aput-object v2, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 17
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->a0()V

    .line 18
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->f:Landroid/os/Handler;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/offline/k;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/offline/k;-><init>(Lcom/google/android/exoplayer2/offline/DownloadHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private Z(I)Lcom/google/android/exoplayer2/trackselection/p;
    .locals 10
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackGroupArrays",
            "trackSelectionsByPeriodAndRenderer",
            "mediaPreparer",
            "mediaPreparer.timeline"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->c:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->d:[Lcom/google/android/exoplayer2/g2;

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->k:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v2, v2, p1

    new-instance v3, Lcom/google/android/exoplayer2/source/z$a;

    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->j:Lcom/google/android/exoplayer2/offline/DownloadHelper$f;

    iget-object v4, v4, Lcom/google/android/exoplayer2/offline/DownloadHelper$f;->h:Lcom/google/android/exoplayer2/s2;

    .line 2
    invoke-virtual {v4, p1}, Lcom/google/android/exoplayer2/s2;->q(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/source/z$a;-><init>(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->j:Lcom/google/android/exoplayer2/offline/DownloadHelper$f;

    iget-object v4, v4, Lcom/google/android/exoplayer2/offline/DownloadHelper$f;->h:Lcom/google/android/exoplayer2/s2;

    .line 3
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/trackselection/i;->e([Lcom/google/android/exoplayer2/g2;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/s2;)Lcom/google/android/exoplayer2/trackselection/p;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_0
    iget v3, v0, Lcom/google/android/exoplayer2/trackselection/p;->a:I

    if-ge v2, v3, :cond_7

    .line 5
    iget-object v3, v0, Lcom/google/android/exoplayer2/trackselection/p;->c:[Lcom/google/android/exoplayer2/trackselection/g;

    aget-object v3, v3, v2

    if-nez v3, :cond_0

    goto/16 :goto_6

    .line 6
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->m:[[Ljava/util/List;

    aget-object v4, v4, p1

    aget-object v4, v4, v2

    const/4 v5, 0x0

    .line 7
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 8
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/trackselection/g;

    .line 9
    invoke-interface {v6}, Lcom/google/android/exoplayer2/trackselection/l;->l()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v7

    invoke-interface {v3}, Lcom/google/android/exoplayer2/trackselection/l;->l()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v8

    if-ne v7, v8, :cond_4

    .line 10
    iget-object v7, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->clear()V

    const/4 v7, 0x0

    .line 11
    :goto_2
    invoke-interface {v6}, Lcom/google/android/exoplayer2/trackselection/l;->length()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 12
    iget-object v8, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->e:Landroid/util/SparseIntArray;

    invoke-interface {v6, v7}, Lcom/google/android/exoplayer2/trackselection/l;->g(I)I

    move-result v9

    invoke-virtual {v8, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    .line 13
    :goto_3
    invoke-interface {v3}, Lcom/google/android/exoplayer2/trackselection/l;->length()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 14
    iget-object v8, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->e:Landroid/util/SparseIntArray;

    invoke-interface {v3, v7}, Lcom/google/android/exoplayer2/trackselection/l;->g(I)I

    move-result v9

    invoke-virtual {v8, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 15
    :cond_2
    iget-object v7, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    new-array v7, v7, [I

    const/4 v8, 0x0

    .line 16
    :goto_4
    iget-object v9, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 17
    iget-object v9, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 18
    :cond_3
    new-instance v8, Lcom/google/android/exoplayer2/offline/DownloadHelper$d;

    .line 19
    invoke-interface {v6}, Lcom/google/android/exoplayer2/trackselection/l;->l()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v6

    invoke-direct {v8, v6, v7}, Lcom/google/android/exoplayer2/offline/DownloadHelper$d;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    .line 20
    invoke-interface {v4, v5, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_5
    if-nez v5, :cond_6

    .line 21
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    return-object v0

    :catch_0
    move-exception p1

    .line 22
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->P(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method private a0()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackGroupArrays",
            "mappedTrackInfos",
            "trackSelectionsByPeriodAndRenderer",
            "immutableTrackSelectionsByPeriodAndRenderer",
            "mediaPreparer",
            "mediaPreparer.timeline",
            "mediaPreparer.mediaPeriods"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->h:Z

    return-void
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/offline/DownloadHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->S()V

    return-void
.end method

.method public static synthetic c(Lcom/google/android/exoplayer2/offline/DownloadHelper;Ljava/io/IOException;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->R(Ljava/io/IOException;)V

    return-void
.end method

.method public static synthetic d()V
    .locals 0

    invoke-static {}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->Q()V

    return-void
.end method

.method public static synthetic e(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->O(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic f(Lcom/google/android/exoplayer2/offline/DownloadHelper;Lcom/google/android/exoplayer2/offline/DownloadHelper$c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->T(Lcom/google/android/exoplayer2/offline/DownloadHelper$c;)V

    return-void
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/offline/DownloadHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->V()V

    return-void
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/offline/DownloadHelper;Ljava/io/IOException;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->U(Ljava/io/IOException;)V

    return-void
.end method

.method private m()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "trackGroupArrays",
            "mappedTrackInfos",
            "trackSelectionsByPeriodAndRenderer",
            "immutableTrackSelectionsByPeriodAndRenderer",
            "mediaPreparer",
            "mediaPreparer.timeline",
            "mediaPreparer.mediaPeriods"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->h:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    return-void
.end method

.method public static o(Lcom/google/android/exoplayer2/offline/DownloadRequest;Lcom/google/android/exoplayer2/upstream/m$a;)Lcom/google/android/exoplayer2/source/z;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->p(Lcom/google/android/exoplayer2/offline/DownloadRequest;Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/drm/u;)Lcom/google/android/exoplayer2/source/z;

    move-result-object p0

    return-object p0
.end method

.method public static p(Lcom/google/android/exoplayer2/offline/DownloadRequest;Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/drm/u;)Lcom/google/android/exoplayer2/source/z;
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/drm/u;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/DownloadRequest;->toMediaItem()Lcom/google/android/exoplayer2/b1;

    move-result-object p0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->q(Lcom/google/android/exoplayer2/b1;Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/drm/u;)Lcom/google/android/exoplayer2/source/z;

    move-result-object p0

    return-object p0
.end method

.method private static q(Lcom/google/android/exoplayer2/b1;Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/drm/u;)Lcom/google/android/exoplayer2/source/z;
    .locals 2
    .param p2    # Lcom/google/android/exoplayer2/drm/u;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/source/k;

    sget-object v1, Lcom/google/android/exoplayer2/extractor/q;->a:Lcom/google/android/exoplayer2/extractor/q;

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplayer2/source/k;-><init>(Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/extractor/q;)V

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/k;->p(Lcom/google/android/exoplayer2/drm/u;)Lcom/google/android/exoplayer2/source/k;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/source/k;->c(Lcom/google/android/exoplayer2/b1;)Lcom/google/android/exoplayer2/source/z;

    move-result-object p0

    return-object p0
.end method

.method public static r(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/i2;)Lcom/google/android/exoplayer2/offline/DownloadHelper;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->E(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, p2, p3, v0, p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->s(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/offline/DownloadHelper;

    move-result-object p0

    return-object p0
.end method

.method public static s(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/offline/DownloadHelper;
    .locals 1
    .param p3    # Lcom/google/android/exoplayer2/drm/u;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/b1$c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/b1$c;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/b1$c;->F(Landroid/net/Uri;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object p0

    const-string v0, "application/dash+xml"

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/b1$c;->B(Ljava/lang/String;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/b1$c;->a()Lcom/google/android/exoplayer2/b1;

    move-result-object p0

    .line 3
    invoke-static {p0, p4, p2, p1, p3}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->y(Lcom/google/android/exoplayer2/b1;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/drm/u;)Lcom/google/android/exoplayer2/offline/DownloadHelper;

    move-result-object p0

    return-object p0
.end method

.method public static t(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/i2;)Lcom/google/android/exoplayer2/offline/DownloadHelper;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->E(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, p2, p3, v0, p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->u(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/offline/DownloadHelper;

    move-result-object p0

    return-object p0
.end method

.method public static u(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/offline/DownloadHelper;
    .locals 1
    .param p3    # Lcom/google/android/exoplayer2/drm/u;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/b1$c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/b1$c;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/b1$c;->F(Landroid/net/Uri;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object p0

    const-string v0, "application/x-mpegURL"

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/b1$c;->B(Ljava/lang/String;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/b1$c;->a()Lcom/google/android/exoplayer2/b1;

    move-result-object p0

    .line 3
    invoke-static {p0, p4, p2, p1, p3}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->y(Lcom/google/android/exoplayer2/b1;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/drm/u;)Lcom/google/android/exoplayer2/offline/DownloadHelper;

    move-result-object p0

    return-object p0
.end method

.method public static v(Landroid/content/Context;Lcom/google/android/exoplayer2/b1;)Lcom/google/android/exoplayer2/offline/DownloadHelper;
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/google/android/exoplayer2/b1;->b:Lcom/google/android/exoplayer2/b1$g;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/b1$g;

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->N(Lcom/google/android/exoplayer2/b1$g;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 2
    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->E(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p0

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, p0, v0, v0, v0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->y(Lcom/google/android/exoplayer2/b1;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/drm/u;)Lcom/google/android/exoplayer2/offline/DownloadHelper;

    move-result-object p0

    return-object p0
.end method

.method public static w(Landroid/content/Context;Lcom/google/android/exoplayer2/b1;Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/upstream/m$a;)Lcom/google/android/exoplayer2/offline/DownloadHelper;
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/i2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/exoplayer2/upstream/m$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->E(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, p0, p2, p3, v0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->y(Lcom/google/android/exoplayer2/b1;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/drm/u;)Lcom/google/android/exoplayer2/offline/DownloadHelper;

    move-result-object p0

    return-object p0
.end method

.method public static x(Lcom/google/android/exoplayer2/b1;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/upstream/m$a;)Lcom/google/android/exoplayer2/offline/DownloadHelper;
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/i2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/exoplayer2/upstream/m$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->y(Lcom/google/android/exoplayer2/b1;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/drm/u;)Lcom/google/android/exoplayer2/offline/DownloadHelper;

    move-result-object p0

    return-object p0
.end method

.method public static y(Lcom/google/android/exoplayer2/b1;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/drm/u;)Lcom/google/android/exoplayer2/offline/DownloadHelper;
    .locals 3
    .param p2    # Lcom/google/android/exoplayer2/i2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/exoplayer2/upstream/m$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/exoplayer2/drm/u;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/b1;->b:Lcom/google/android/exoplayer2/b1$g;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/b1$g;

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->N(Lcom/google/android/exoplayer2/b1$g;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 2
    :goto_1
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 3
    new-instance v2, Lcom/google/android/exoplayer2/offline/DownloadHelper;

    if-eqz v0, :cond_2

    const/4 p3, 0x0

    goto :goto_2

    .line 4
    :cond_2
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/upstream/m$a;

    .line 5
    invoke-static {p0, p3, p4}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->q(Lcom/google/android/exoplayer2/b1;Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/drm/u;)Lcom/google/android/exoplayer2/source/z;

    move-result-object p3

    :goto_2
    if-eqz p2, :cond_3

    .line 6
    invoke-static {p2}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->K(Lcom/google/android/exoplayer2/i2;)[Lcom/google/android/exoplayer2/g2;

    move-result-object p2

    goto :goto_3

    :cond_3
    new-array p2, v1, [Lcom/google/android/exoplayer2/g2;

    .line 7
    :goto_3
    invoke-direct {v2, p0, p3, p1, p2}, Lcom/google/android/exoplayer2/offline/DownloadHelper;-><init>(Lcom/google/android/exoplayer2/b1;Lcom/google/android/exoplayer2/source/z;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;[Lcom/google/android/exoplayer2/g2;)V

    return-object v2
.end method

.method public static z(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/exoplayer2/offline/DownloadHelper;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/exoplayer2/b1$c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/b1$c;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/b1$c;->F(Landroid/net/Uri;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/b1$c;->a()Lcom/google/android/exoplayer2/b1;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->v(Landroid/content/Context;Lcom/google/android/exoplayer2/b1;)Lcom/google/android/exoplayer2/offline/DownloadHelper;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public F(Ljava/lang/String;[B)Lcom/google/android/exoplayer2/offline/DownloadRequest;
    .locals 7
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/offline/DownloadRequest$b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->a:Lcom/google/android/exoplayer2/b1$g;

    iget-object v1, v1, Lcom/google/android/exoplayer2/b1$g;->a:Landroid/net/Uri;

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplayer2/offline/DownloadRequest$b;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->a:Lcom/google/android/exoplayer2/b1$g;

    iget-object p1, p1, Lcom/google/android/exoplayer2/b1$g;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/offline/DownloadRequest$b;->e(Ljava/lang/String;)Lcom/google/android/exoplayer2/offline/DownloadRequest$b;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->a:Lcom/google/android/exoplayer2/b1$g;

    iget-object v0, v0, Lcom/google/android/exoplayer2/b1$g;->c:Lcom/google/android/exoplayer2/b1$e;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b1$e;->a()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/offline/DownloadRequest$b;->d([B)Lcom/google/android/exoplayer2/offline/DownloadRequest$b;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->a:Lcom/google/android/exoplayer2/b1$g;

    iget-object v0, v0, Lcom/google/android/exoplayer2/b1$g;->f:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/offline/DownloadRequest$b;->b(Ljava/lang/String;)Lcom/google/android/exoplayer2/offline/DownloadRequest$b;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/offline/DownloadRequest$b;->c([B)Lcom/google/android/exoplayer2/offline/DownloadRequest$b;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->b:Lcom/google/android/exoplayer2/source/z;

    if-nez p2, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/offline/DownloadRequest$b;->a()Lcom/google/android/exoplayer2/offline/DownloadRequest;

    move-result-object p1

    return-object p1

    .line 10
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->m()V

    .line 11
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->m:[[Ljava/util/List;

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    .line 14
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 15
    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->m:[[Ljava/util/List;

    aget-object v4, v4, v3

    array-length v4, v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_2

    .line 16
    iget-object v6, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->m:[[Ljava/util/List;

    aget-object v6, v6, v3

    aget-object v6, v6, v5

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 17
    :cond_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->j:Lcom/google/android/exoplayer2/offline/DownloadHelper$f;

    iget-object v4, v4, Lcom/google/android/exoplayer2/offline/DownloadHelper$f;->i:[Lcom/google/android/exoplayer2/source/w;

    aget-object v4, v4, v3

    invoke-interface {v4, v0}, Lcom/google/android/exoplayer2/source/w;->j(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 18
    :cond_3
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/offline/DownloadRequest$b;->f(Ljava/util/List;)Lcom/google/android/exoplayer2/offline/DownloadRequest$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/offline/DownloadRequest$b;->a()Lcom/google/android/exoplayer2/offline/DownloadRequest;

    move-result-object p1

    return-object p1
.end method

.method public G([B)Lcom/google/android/exoplayer2/offline/DownloadRequest;
    .locals 1
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->a:Lcom/google/android/exoplayer2/b1$g;

    iget-object v0, v0, Lcom/google/android/exoplayer2/b1$g;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->F(Ljava/lang/String;[B)Lcom/google/android/exoplayer2/offline/DownloadRequest;

    move-result-object p1

    return-object p1
.end method

.method public H()Ljava/lang/Object;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->b:Lcom/google/android/exoplayer2/source/z;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->m()V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->j:Lcom/google/android/exoplayer2/offline/DownloadHelper$f;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadHelper$f;->h:Lcom/google/android/exoplayer2/s2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2;->u()I

    move-result v0

    if-lez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->j:Lcom/google/android/exoplayer2/offline/DownloadHelper$f;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadHelper$f;->h:Lcom/google/android/exoplayer2/s2;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->g:Lcom/google/android/exoplayer2/s2$d;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/s2;->r(ILcom/google/android/exoplayer2/s2$d;)Lcom/google/android/exoplayer2/s2$d;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/exoplayer2/s2$d;->d:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public I(I)Lcom/google/android/exoplayer2/trackselection/i$a;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->m()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->l:[Lcom/google/android/exoplayer2/trackselection/i$a;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public J()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->b:Lcom/google/android/exoplayer2/source/z;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->m()V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->k:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    array-length v0, v0

    return v0
.end method

.method public L(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->m()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->k:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public M(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/trackselection/g;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->m()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->n:[[Ljava/util/List;

    aget-object p1, v0, p1

    aget-object p1, p1, p2

    return-object p1
.end method

.method public W(Lcom/google/android/exoplayer2/offline/DownloadHelper$c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->i:Lcom/google/android/exoplayer2/offline/DownloadHelper$c;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->i:Lcom/google/android/exoplayer2/offline/DownloadHelper$c;

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->b:Lcom/google/android/exoplayer2/source/z;

    if-eqz v0, :cond_1

    .line 4
    new-instance p1, Lcom/google/android/exoplayer2/offline/DownloadHelper$f;

    invoke-direct {p1, v0, p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper$f;-><init>(Lcom/google/android/exoplayer2/source/z;Lcom/google/android/exoplayer2/offline/DownloadHelper;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->j:Lcom/google/android/exoplayer2/offline/DownloadHelper$f;

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->f:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/offline/l;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/offline/l;-><init>(Lcom/google/android/exoplayer2/offline/DownloadHelper;Lcom/google/android/exoplayer2/offline/DownloadHelper$c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method public X()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->j:Lcom/google/android/exoplayer2/offline/DownloadHelper$f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/DownloadHelper$f;->e()V

    :cond_0
    return-void
.end method

.method public Y(ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->n(I)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->k(ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    return-void
.end method

.method public varargs i([Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->m()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->l:[Lcom/google/android/exoplayer2/trackselection/i$a;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 3
    sget-object v2, Lcom/google/android/exoplayer2/offline/DownloadHelper;->o:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->l:[Lcom/google/android/exoplayer2/trackselection/i$a;

    aget-object v3, v3, v1

    .line 6
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/trackselection/i$a;->c()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    .line 7
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/trackselection/i$a;->f(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 8
    invoke-virtual {v2, v5, v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->Z(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 9
    :cond_1
    array-length v3, p1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_2

    aget-object v5, p1, v4

    .line 10
    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->O(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    .line 11
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->l()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->k(ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public varargs j(Z[Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->m()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->l:[Lcom/google/android/exoplayer2/trackselection/i$a;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 3
    sget-object v2, Lcom/google/android/exoplayer2/offline/DownloadHelper;->o:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->l:[Lcom/google/android/exoplayer2/trackselection/i$a;

    aget-object v3, v3, v1

    .line 6
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/trackselection/i$a;->c()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    .line 7
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/trackselection/i$a;->f(I)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    const/4 v6, 0x1

    .line 8
    invoke-virtual {v2, v5, v6}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->Z(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->a0(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    .line 10
    array-length v3, p2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_2

    aget-object v5, p2, v4

    .line 11
    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->T(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    .line 12
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->l()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->k(ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public k(ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->m()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->c:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->M(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->Z(I)Lcom/google/android/exoplayer2/trackselection/p;

    return-void
.end method

.method public l(IILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->m()V

    .line 2
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->l:[Lcom/google/android/exoplayer2/trackselection/i$a;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/trackselection/i$a;->c()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-eq v1, p2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 4
    :goto_1
    invoke-virtual {p3, v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->Z(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->l()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->k(ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    goto :goto_3

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->l:[Lcom/google/android/exoplayer2/trackselection/i$a;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Lcom/google/android/exoplayer2/trackselection/i$a;->g(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    .line 8
    :goto_2
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 9
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    invoke-virtual {p3, p2, v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->b0(ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    .line 10
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->l()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->k(ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method public n(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->m()V

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->d:[Lcom/google/android/exoplayer2/g2;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->m:[[Ljava/util/List;

    aget-object v1, v1, p1

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/util/List;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

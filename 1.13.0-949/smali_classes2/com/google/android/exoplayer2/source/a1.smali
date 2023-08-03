.class public final Lcom/google/android/exoplayer2/source/a1;
.super Lcom/google/android/exoplayer2/source/a;
.source "SilenceMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/a1$d;,
        Lcom/google/android/exoplayer2/source/a1$c;,
        Lcom/google/android/exoplayer2/source/a1$b;
    }
.end annotation


# static fields
.field public static final i:Ljava/lang/String; = "SilenceMediaSource"

.field private static final j:I = 0xac44

.field private static final k:I = 0x2

.field private static final l:I = 0x2

.field private static final m:Lcom/google/android/exoplayer2/Format;

.field private static final n:Lcom/google/android/exoplayer2/b1;

.field private static final o:[B


# instance fields
.field private final g:J

.field private final h:Lcom/google/android/exoplayer2/b1;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/Format$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$b;-><init>()V

    const-string v1, "audio/raw"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v0

    const/4 v1, 0x2

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$b;->H(I)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v0

    const v2, 0xac44

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/Format$b;->f0(I)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$b;->Y(I)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$b;->E()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/a1;->m:Lcom/google/android/exoplayer2/Format;

    .line 7
    new-instance v2, Lcom/google/android/exoplayer2/b1$c;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/b1$c;-><init>()V

    const-string v3, "SilenceMediaSource"

    .line 8
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/b1$c;->z(Ljava/lang/String;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object v2

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 9
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/b1$c;->F(Landroid/net/Uri;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 10
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/b1$c;->B(Ljava/lang/String;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b1$c;->a()Lcom/google/android/exoplayer2/b1;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/a1;->n:Lcom/google/android/exoplayer2/b1;

    .line 12
    invoke-static {v1, v1}, Lcom/google/android/exoplayer2/util/z0;->k0(II)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/exoplayer2/source/a1;->o:[B

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/exoplayer2/source/a1;->n:Lcom/google/android/exoplayer2/b1;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/source/a1;-><init>(JLcom/google/android/exoplayer2/b1;)V

    return-void
.end method

.method private constructor <init>(JLcom/google/android/exoplayer2/b1;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/a;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 5
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/a1;->g:J

    .line 6
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/a1;->h:Lcom/google/android/exoplayer2/b1;

    return-void
.end method

.method synthetic constructor <init>(JLcom/google/android/exoplayer2/b1;Lcom/google/android/exoplayer2/source/a1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/a1;-><init>(JLcom/google/android/exoplayer2/b1;)V

    return-void
.end method

.method static synthetic B()Lcom/google/android/exoplayer2/b1;
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/source/a1;->n:Lcom/google/android/exoplayer2/b1;

    return-object v0
.end method

.method static synthetic C()Lcom/google/android/exoplayer2/Format;
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/source/a1;->m:Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method

.method static synthetic D(J)J
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/a1;->G(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic E(J)J
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/a1;->H(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic F()[B
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/source/a1;->o:[B

    return-object v0
.end method

.method private static G(J)J
    .locals 2

    const-wide/32 v0, 0xac44

    mul-long p0, p0, v0

    const-wide/32 v0, 0xf4240

    .line 1
    div-long/2addr p0, v0

    const/4 v0, 0x2

    .line 2
    invoke-static {v0, v0}, Lcom/google/android/exoplayer2/util/z0;->k0(II)I

    move-result v0

    int-to-long v0, v0

    mul-long v0, v0, p0

    return-wide v0
.end method

.method private static H(J)J
    .locals 2

    const/4 v0, 0x2

    .line 1
    invoke-static {v0, v0}, Lcom/google/android/exoplayer2/util/z0;->k0(II)I

    move-result v0

    int-to-long v0, v0

    div-long/2addr p0, v0

    const-wide/32 v0, 0xf4240

    mul-long p0, p0, v0

    const-wide/32 v0, 0xac44

    .line 2
    div-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method protected A()V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/w;
    .locals 0

    new-instance p1, Lcom/google/android/exoplayer2/source/a1$c;

    iget-wide p2, p0, Lcom/google/android/exoplayer2/source/a1;->g:J

    invoke-direct {p1, p2, p3}, Lcom/google/android/exoplayer2/source/a1$c;-><init>(J)V

    return-object p1
.end method

.method public e()Lcom/google/android/exoplayer2/b1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a1;->h:Lcom/google/android/exoplayer2/b1;

    return-object v0
.end method

.method public f()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a1;->h:Lcom/google/android/exoplayer2/b1;

    iget-object v0, v0, Lcom/google/android/exoplayer2/b1;->b:Lcom/google/android/exoplayer2/b1$g;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/b1$g;

    iget-object v0, v0, Lcom/google/android/exoplayer2/b1$g;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public g(Lcom/google/android/exoplayer2/source/w;)V
    .locals 0

    return-void
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method protected y(Lcom/google/android/exoplayer2/upstream/p0;)V
    .locals 8
    .param p1    # Lcom/google/android/exoplayer2/upstream/p0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance p1, Lcom/google/android/exoplayer2/source/b1;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/a1;->g:J

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/a1;->h:Lcom/google/android/exoplayer2/b1;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/b1;-><init>(JZZZLjava/lang/Object;Lcom/google/android/exoplayer2/b1;)V

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/a;->z(Lcom/google/android/exoplayer2/s2;)V

    return-void
.end method

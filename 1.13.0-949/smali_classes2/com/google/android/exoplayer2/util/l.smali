.class public Lcom/google/android/exoplayer2/util/l;
.super Ljava/lang/Object;
.source "EventLogger.java"

# interfaces
.implements Lcom/google/android/exoplayer2/analytics/j1;


# static fields
.field private static final h0:Ljava/lang/String; = "EventLogger"

.field private static final i0:I = 0x3

.field private static final j0:Ljava/text/NumberFormat;


# instance fields
.field private final c0:Lcom/google/android/exoplayer2/trackselection/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final d0:Ljava/lang/String;

.field private final e0:Lcom/google/android/exoplayer2/s2$d;

.field private final f0:Lcom/google/android/exoplayer2/s2$b;

.field private final g0:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/util/l;->j0:Ljava/text/NumberFormat;

    const/4 v1, 0x2

    .line 2
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 3
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/trackselection/i;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/trackselection/i;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "EventLogger"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/util/l;-><init>(Lcom/google/android/exoplayer2/trackselection/i;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/trackselection/i;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/trackselection/i;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/l;->c0:Lcom/google/android/exoplayer2/trackselection/i;

    .line 4
    iput-object p2, p0, Lcom/google/android/exoplayer2/util/l;->d0:Ljava/lang/String;

    .line 5
    new-instance p1, Lcom/google/android/exoplayer2/s2$d;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/s2$d;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/l;->e0:Lcom/google/android/exoplayer2/s2$d;

    .line 6
    new-instance p1, Lcom/google/android/exoplayer2/s2$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/s2$b;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/l;->f0:Lcom/google/android/exoplayer2/s2$b;

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/util/l;->g0:J

    return-void
.end method

.method private static A0(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "?"

    return-object p0

    :cond_0
    const-string p0, "ENDED"

    return-object p0

    :cond_1
    const-string p0, "READY"

    return-object p0

    :cond_2
    const-string p0, "BUFFERING"

    return-object p0

    :cond_3
    const-string p0, "IDLE"

    return-object p0
.end method

.method private static B0(J)Ljava/lang/String;
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const-string p0, "?"

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/util/l;->j0:Ljava/text/NumberFormat;

    long-to-float p0, p0

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p0, p1

    float-to-double p0, p0

    invoke-virtual {v0, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static C0(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-string p0, "?"

    return-object p0

    :cond_0
    const-string p0, "SOURCE_UPDATE"

    return-object p0

    :cond_1
    const-string p0, "PLAYLIST_CHANGED"

    return-object p0
.end method

.method private static D0(Lcom/google/android/exoplayer2/trackselection/l;Lcom/google/android/exoplayer2/source/TrackGroup;I)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/google/android/exoplayer2/trackselection/l;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Lcom/google/android/exoplayer2/trackselection/l;->l()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 2
    invoke-interface {p0, p2}, Lcom/google/android/exoplayer2/trackselection/l;->k(I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 3
    :goto_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/l;->E0(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static E0(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "[X]"

    goto :goto_0

    :cond_0
    const-string p0, "[ ]"

    :goto_0
    return-object p0
.end method

.method private F0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/android/exoplayer2/util/l;->o0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/l;->H0(Ljava/lang/String;)V

    return-void
.end method

.method private G0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/util/l;->o0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/l;->H0(Ljava/lang/String;)V

    return-void
.end method

.method private I0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p4    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/util/l;->o0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/l;->K0(Ljava/lang/String;)V

    return-void
.end method

.method private J0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p3    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/exoplayer2/util/l;->o0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/l;->K0(Ljava/lang/String;)V

    return-void
.end method

.method private L0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "internalError"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/exoplayer2/util/l;->I0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private M0(Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->H0(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a0(II)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    const-string p0, "N/A"

    return-object p0

    :cond_0
    if-eqz p1, :cond_3

    const/16 p0, 0x8

    if-eq p1, p0, :cond_2

    const/16 p0, 0x10

    if-ne p1, p0, :cond_1

    const-string p0, "YES"

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    const-string p0, "YES_NOT_SEAMLESS"

    return-object p0

    :cond_3
    const-string p0, "NO"

    return-object p0
.end method

.method private static b0(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "?"

    return-object p0

    :cond_0
    const-string p0, "INTERNAL"

    return-object p0

    :cond_1
    const-string p0, "REMOVE"

    return-object p0

    :cond_2
    const-string p0, "SKIP"

    return-object p0

    :cond_3
    const-string p0, "SEEK_ADJUSTMENT"

    return-object p0

    :cond_4
    const-string p0, "SEEK"

    return-object p0

    :cond_5
    const-string p0, "AUTO_TRANSITION"

    return-object p0
.end method

.method private o0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/l;->v0(Lcom/google/android/exoplayer2/analytics/j1$b;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ["

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    :cond_0
    invoke-static {p4}, Lcom/google/android/exoplayer2/util/w;->h(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "\n"

    const-string p4, "\n  "

    invoke-virtual {p2, p3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private v0(Lcom/google/android/exoplayer2/analytics/j1$b;)Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p1, Lcom/google/android/exoplayer2/analytics/j1$b;->c:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "window="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lcom/google/android/exoplayer2/analytics/j1$b;->d:Lcom/google/android/exoplayer2/source/z$a;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/exoplayer2/analytics/j1$b;->b:Lcom/google/android/exoplayer2/s2;

    iget-object v2, p1, Lcom/google/android/exoplayer2/analytics/j1$b;->d:Lcom/google/android/exoplayer2/source/z$a;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/x;->a:Ljava/lang/Object;

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/s2;->f(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", period="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p1, Lcom/google/android/exoplayer2/analytics/j1$b;->d:Lcom/google/android/exoplayer2/source/z$a;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/x;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/exoplayer2/analytics/j1$b;->d:Lcom/google/android/exoplayer2/source/z$a;

    iget v1, v1, Lcom/google/android/exoplayer2/source/x;->b:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", adGroup="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/exoplayer2/analytics/j1$b;->d:Lcom/google/android/exoplayer2/source/z$a;

    iget v1, v1, Lcom/google/android/exoplayer2/source/x;->c:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ad="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    :cond_0
    iget-wide v1, p1, Lcom/google/android/exoplayer2/analytics/j1$b;->a:J

    iget-wide v3, p0, Lcom/google/android/exoplayer2/util/l;->g0:J

    sub-long/2addr v1, v3

    .line 9
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/l;->B0(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lcom/google/android/exoplayer2/analytics/j1$b;->e:J

    .line 10
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/l;->B0(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x17

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "eventTime="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mediaPos="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static w0(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "?"

    return-object p0

    :cond_0
    const-string p0, "PLAYLIST_CHANGED"

    return-object p0

    :cond_1
    const-string p0, "SEEK"

    return-object p0

    :cond_2
    const-string p0, "AUTO"

    return-object p0

    :cond_3
    const-string p0, "REPEAT"

    return-object p0
.end method

.method private static x0(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "?"

    return-object p0

    :cond_0
    const-string p0, "END_OF_MEDIA_ITEM"

    return-object p0

    :cond_1
    const-string p0, "REMOTE"

    return-object p0

    :cond_2
    const-string p0, "AUDIO_BECOMING_NOISY"

    return-object p0

    :cond_3
    const-string p0, "AUDIO_FOCUS_LOSS"

    return-object p0

    :cond_4
    const-string p0, "USER_REQUEST"

    return-object p0
.end method

.method private static y0(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-string p0, "?"

    return-object p0

    :cond_0
    const-string p0, "TRANSIENT_AUDIO_FOCUS_LOSS"

    return-object p0

    :cond_1
    const-string p0, "NONE"

    return-object p0
.end method

.method private static z0(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "?"

    return-object p0

    :cond_0
    const-string p0, "ALL"

    return-object p0

    :cond_1
    const-string p0, "ONE"

    return-object p0

    :cond_2
    const-string p0, "OFF"

    return-object p0
.end method


# virtual methods
.method public A(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 0
    .param p3    # Lcom/google/android/exoplayer2/decoder/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p2}, Lcom/google/android/exoplayer2/Format;->toLogString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "videoInputFormat"

    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/exoplayer2/util/l;->G0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic B(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/i1;->g0(Lcom/google/android/exoplayer2/analytics/j1;Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/Exception;)V

    return-void
.end method

.method public C(Lcom/google/android/exoplayer2/analytics/j1$b;I)V
    .locals 9

    .line 1
    iget-object v0, p1, Lcom/google/android/exoplayer2/analytics/j1$b;->b:Lcom/google/android/exoplayer2/s2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2;->m()I

    move-result v0

    .line 2
    iget-object v1, p1, Lcom/google/android/exoplayer2/analytics/j1$b;->b:Lcom/google/android/exoplayer2/s2;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/s2;->u()I

    move-result v1

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/l;->v0(Lcom/google/android/exoplayer2/analytics/j1$b;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/l;->C0(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x45

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "timeline ["

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", periodCount="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", windowCount="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/l;->H0(Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    .line 6
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    const-string v5, "]"

    if-ge v2, v4, :cond_0

    .line 7
    iget-object v3, p1, Lcom/google/android/exoplayer2/analytics/j1$b;->b:Lcom/google/android/exoplayer2/s2;

    iget-object v4, p0, Lcom/google/android/exoplayer2/util/l;->f0:Lcom/google/android/exoplayer2/s2$b;

    invoke-virtual {v3, v2, v4}, Lcom/google/android/exoplayer2/s2;->j(ILcom/google/android/exoplayer2/s2$b;)Lcom/google/android/exoplayer2/s2$b;

    .line 8
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/l;->f0:Lcom/google/android/exoplayer2/s2$b;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/s2$b;->l()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/l;->B0(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xb

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "  period ["

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/l;->H0(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "  ..."

    if-le v0, v3, :cond_1

    .line 9
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/l;->H0(Ljava/lang/String;)V

    .line 10
    :cond_1
    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 11
    iget-object v0, p1, Lcom/google/android/exoplayer2/analytics/j1$b;->b:Lcom/google/android/exoplayer2/s2;

    iget-object v4, p0, Lcom/google/android/exoplayer2/util/l;->e0:Lcom/google/android/exoplayer2/s2$d;

    invoke-virtual {v0, p2, v4}, Lcom/google/android/exoplayer2/s2;->r(ILcom/google/android/exoplayer2/s2$d;)Lcom/google/android/exoplayer2/s2$d;

    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/l;->e0:Lcom/google/android/exoplayer2/s2$d;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2$d;->f()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/util/l;->B0(J)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/exoplayer2/util/l;->e0:Lcom/google/android/exoplayer2/s2$d;

    iget-boolean v6, v4, Lcom/google/android/exoplayer2/s2$d;->h:Z

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/s2$d;->i:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x2a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "  window ["

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", seekable="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", dynamic="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/l;->H0(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    if-le v1, v3, :cond_3

    .line 15
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/l;->H0(Ljava/lang/String;)V

    .line 16
    :cond_3
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/l;->H0(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic D(Lcom/google/android/exoplayer2/analytics/j1$b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/i1;->Y(Lcom/google/android/exoplayer2/analytics/j1;Lcom/google/android/exoplayer2/analytics/j1$b;)V

    return-void
.end method

.method public E(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/b1;I)V
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/b1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/l;->v0(Lcom/google/android/exoplayer2/analytics/j1$b;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/l;->w0(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x15

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "mediaItem ["

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", reason="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/l;->H0(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic F(Lcom/google/android/exoplayer2/analytics/j1$b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/i1;->w(Lcom/google/android/exoplayer2/analytics/j1;Lcom/google/android/exoplayer2/analytics/j1$b;)V

    return-void
.end method

.method public G(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 0

    const-string p2, "videoDisabled"

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/util/l;->F0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;)V

    return-void
.end method

.method public H(Lcom/google/android/exoplayer2/analytics/j1$b;)V
    .locals 1

    const-string v0, "drmKeysRemoved"

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/util/l;->F0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;)V

    return-void
.end method

.method protected H0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/l;->d0:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/w;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public I(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 1

    const-string v0, "playerFailed"

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/util/l;->J0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public J(Lcom/google/android/exoplayer2/analytics/j1$b;IJJ)V
    .locals 0

    return-void
.end method

.method public synthetic K(Lcom/google/android/exoplayer2/analytics/j1$b;IIIF)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplayer2/analytics/i1;->p0(Lcom/google/android/exoplayer2/analytics/j1;Lcom/google/android/exoplayer2/analytics/j1$b;IIIF)V

    return-void
.end method

.method protected K0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/l;->d0:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/w;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic L(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/Format;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/i1;->r(Lcom/google/android/exoplayer2/analytics/j1;Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public synthetic M(Lcom/google/android/exoplayer2/analytics/j1$b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/i1;->X(Lcom/google/android/exoplayer2/analytics/j1;Lcom/google/android/exoplayer2/analytics/j1$b;)V

    return-void
.end method

.method public N(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V
    .locals 0

    return-void
.end method

.method public synthetic O(Lcom/google/android/exoplayer2/analytics/j1$b;ILjava/lang/String;J)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplayer2/analytics/i1;->q(Lcom/google/android/exoplayer2/analytics/j1;Lcom/google/android/exoplayer2/analytics/j1$b;ILjava/lang/String;J)V

    return-void
.end method

.method public synthetic P(Lcom/google/android/exoplayer2/analytics/j1$b;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/i1;->T(Lcom/google/android/exoplayer2/analytics/j1;Lcom/google/android/exoplayer2/analytics/j1$b;I)V

    return-void
.end method

.method public Q(Lcom/google/android/exoplayer2/analytics/j1$b;)V
    .locals 1

    const-string v0, "drmSessionReleased"

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/util/l;->F0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;)V

    return-void
.end method

.method public R(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/t1;)V
    .locals 1

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/t1;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "playbackParameters"

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/util/l;->G0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public S(Lcom/google/android/exoplayer2/analytics/j1$b;IJJ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x37

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "audioTrackUnderrun"

    const/4 p4, 0x0

    invoke-direct {p0, p1, p3, p2, p4}, Lcom/google/android/exoplayer2/util/l;->I0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public T(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 0

    const-string p2, "audioDisabled"

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/util/l;->F0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;)V

    return-void
.end method

.method public U(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 0

    const-string p2, "videoEnabled"

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/util/l;->F0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic V(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;JJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplayer2/analytics/i1;->d(Lcom/google/android/exoplayer2/analytics/j1;Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;JJ)V

    return-void
.end method

.method public W(Lcom/google/android/exoplayer2/analytics/j1$b;I)V
    .locals 1

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/l;->z0(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "repeatMode"

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/util/l;->G0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public X(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/audio/e;)V
    .locals 5

    iget v0, p2, Lcom/google/android/exoplayer2/audio/e;->a:I

    iget v1, p2, Lcom/google/android/exoplayer2/audio/e;->b:I

    iget v2, p2, Lcom/google/android/exoplayer2/audio/e;->c:I

    iget p2, p2, Lcom/google/android/exoplayer2/audio/e;->d:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2f

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "audioAttributes"

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/util/l;->G0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic Y(Lcom/google/android/exoplayer2/analytics/j1$b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/i1;->R(Lcom/google/android/exoplayer2/analytics/j1;Lcom/google/android/exoplayer2/analytics/j1$b;)V

    return-void
.end method

.method public Z(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/video/b0;)V
    .locals 3

    iget v0, p2, Lcom/google/android/exoplayer2/video/b0;->a:I

    iget p2, p2, Lcom/google/android/exoplayer2/video/b0;->b:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "videoSize"

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/util/l;->G0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;)V
    .locals 1

    const-string v0, "videoDecoderReleased"

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/util/l;->G0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic b(Lcom/google/android/exoplayer2/analytics/j1$b;JI)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/i1;->m0(Lcom/google/android/exoplayer2/analytics/j1;Lcom/google/android/exoplayer2/analytics/j1$b;JI)V

    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/analytics/j1$b;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "drmSessionAcquired"

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/util/l;->G0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic c0(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/i1;->h(Lcom/google/android/exoplayer2/analytics/j1;Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public d(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "drmSessionManagerError"

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/util/l;->L0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public d0(Lcom/google/android/exoplayer2/analytics/j1$b;)V
    .locals 1

    const-string v0, "drmKeysLoaded"

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/util/l;->F0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;)V

    return-void
.end method

.method public e(Lcom/google/android/exoplayer2/analytics/j1$b;)V
    .locals 1

    const-string v0, "drmKeysRestored"

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/util/l;->F0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;)V

    return-void
.end method

.method public e0(Lcom/google/android/exoplayer2/analytics/j1$b;F)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    const-string v0, "volume"

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/util/l;->G0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f(Lcom/google/android/exoplayer2/analytics/j1$b;I)V
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/l;->y0(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "playbackSuppressionReason"

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/util/l;->G0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f0(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V
    .locals 0

    return-void
.end method

.method public synthetic g(Lcom/google/android/exoplayer2/analytics/j1$b;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/i1;->I(Lcom/google/android/exoplayer2/analytics/j1;Lcom/google/android/exoplayer2/analytics/j1$b;Z)V

    return-void
.end method

.method public g0(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/m;)V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/exoplayer2/util/l;->c0:Lcom/google/android/exoplayer2/trackselection/i;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/i;->g()Lcom/google/android/exoplayer2/trackselection/i$a;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    const-string v1, "tracks"

    const-string v2, "[]"

    move-object/from16 v3, p1

    .line 2
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/exoplayer2/util/l;->G0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    move-object/from16 v3, p1

    const-string v2, "tracks ["

    .line 3
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/util/l;->v0(Lcom/google/android/exoplayer2/analytics/j1$b;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/l;->H0(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/i$a;->c()I

    move-result v2

    const/4 v4, 0x0

    :goto_2
    const-string v5, ", supported="

    const-string v6, ", "

    const-string v7, " Track:"

    const-string v8, "    Group:"

    const-string v9, "  ]"

    const-string v10, "      "

    const-string v11, "    ]"

    const-string v12, " ["

    if-ge v4, v2, :cond_8

    .line 5
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/trackselection/i$a;->g(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v13

    move-object/from16 v14, p3

    .line 6
    invoke-virtual {v14, v4}, Lcom/google/android/exoplayer2/trackselection/m;->a(I)Lcom/google/android/exoplayer2/trackselection/l;

    move-result-object v15

    .line 7
    iget v3, v13, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    move/from16 p2, v2

    const-string v2, "  "

    if-nez v3, :cond_3

    .line 8
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/trackselection/i$a;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " []"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/l;->H0(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 9
    :cond_3
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/trackselection/i$a;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v14, v16, 0x4

    move-object/from16 v16, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/l;->H0(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 10
    :goto_3
    iget v3, v13, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v2, v3, :cond_5

    .line 11
    invoke-virtual {v13, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    .line 12
    iget v9, v3, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    move-object/from16 v17, v13

    const/4 v14, 0x0

    .line 13
    invoke-virtual {v1, v4, v2, v14}, Lcom/google/android/exoplayer2/trackselection/i$a;->a(IIZ)I

    move-result v13

    .line 14
    invoke-static {v9, v13}, Lcom/google/android/exoplayer2/util/l;->a0(II)Ljava/lang/String;

    move-result-object v9

    .line 15
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x2c

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", adaptive_supported="

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/l;->H0(Ljava/lang/String;)V

    const/4 v14, 0x0

    .line 16
    :goto_4
    iget v9, v3, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v14, v9, :cond_4

    .line 17
    invoke-static {v15, v3, v14}, Lcom/google/android/exoplayer2/util/l;->D0(Lcom/google/android/exoplayer2/trackselection/l;Lcom/google/android/exoplayer2/source/TrackGroup;I)Ljava/lang/String;

    move-result-object v9

    .line 18
    invoke-virtual {v1, v4, v2, v14}, Lcom/google/android/exoplayer2/trackselection/i$a;->h(III)I

    move-result v13

    .line 19
    invoke-static {v13}, Lcom/google/android/exoplayer2/i;->b(I)Ljava/lang/String;

    move-result-object v13

    .line 20
    invoke-virtual {v3, v14}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v18

    move-object/from16 v19, v3

    invoke-static/range {v18 .. v18}, Lcom/google/android/exoplayer2/Format;->toLogString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, 0x26

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v18, v18, v20

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    move-object/from16 v21, v12

    add-int v12, v18, v20

    move-object/from16 v18, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 21
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/l;->H0(Ljava/lang/String;)V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, v18

    move-object/from16 v3, v19

    move-object/from16 v12, v21

    goto :goto_4

    :cond_4
    move-object/from16 v18, v8

    move-object/from16 v21, v12

    .line 22
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/util/l;->H0(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v13, v17

    goto/16 :goto_3

    :cond_5
    if-eqz v15, :cond_7

    const/4 v14, 0x0

    .line 23
    :goto_5
    invoke-interface {v15}, Lcom/google/android/exoplayer2/trackselection/l;->length()I

    move-result v2

    if-ge v14, v2, :cond_7

    .line 24
    invoke-interface {v15, v14}, Lcom/google/android/exoplayer2/trackselection/l;->f(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz v2, :cond_6

    const-string v3, "    Metadata ["

    .line 25
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/l;->H0(Ljava/lang/String;)V

    .line 26
    invoke-direct {v0, v2, v10}, Lcom/google/android/exoplayer2/util/l;->M0(Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/util/l;->H0(Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_7
    :goto_6
    move-object/from16 v2, v16

    .line 28
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/l;->H0(Ljava/lang/String;)V

    :goto_7
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, p2

    goto/16 :goto_2

    :cond_8
    move-object/from16 v18, v8

    move-object v2, v9

    move-object/from16 v21, v12

    .line 29
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/i$a;->j()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    .line 30
    iget v3, v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-lez v3, :cond_b

    const-string v3, "  Unmapped ["

    .line 31
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/l;->H0(Ljava/lang/String;)V

    const/4 v14, 0x0

    .line 32
    :goto_8
    iget v3, v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v14, v3, :cond_a

    const/16 v3, 0x17

    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v3, v18

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v8, v21

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/l;->H0(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v1, v14}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    const/4 v9, 0x0

    .line 35
    :goto_9
    iget v12, v4, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v9, v12, :cond_9

    const/4 v12, 0x0

    .line 36
    invoke-static {v12}, Lcom/google/android/exoplayer2/util/l;->E0(Z)Ljava/lang/String;

    move-result-object v13

    .line 37
    invoke-static {v12}, Lcom/google/android/exoplayer2/i;->b(I)Ljava/lang/String;

    move-result-object v15

    .line 38
    invoke-virtual {v4, v9}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer2/Format;->toLogString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, 0x26

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v16, v16, v17

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move-object/from16 p2, v1

    add-int v1, v16, v17

    move-object/from16 v18, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/l;->H0(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p2

    move-object/from16 v3, v18

    goto :goto_9

    :cond_9
    move-object/from16 p2, v1

    move-object/from16 v18, v3

    .line 40
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/util/l;->H0(Ljava/lang/String;)V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v21, v8

    goto/16 :goto_8

    .line 41
    :cond_a
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/l;->H0(Ljava/lang/String;)V

    :cond_b
    const-string v1, "]"

    .line 42
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/l;->H0(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic h(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/f1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/i1;->K(Lcom/google/android/exoplayer2/analytics/j1;Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/f1;)V

    return-void
.end method

.method public h0(Lcom/google/android/exoplayer2/analytics/j1$b;Z)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    const-string v0, "isPlaying"

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/util/l;->G0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public i(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 0

    const-string p2, "audioEnabled"

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/util/l;->F0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic i0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/i1;->b(Lcom/google/android/exoplayer2/analytics/j1;Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/Exception;)V

    return-void
.end method

.method public j(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;Ljava/io/IOException;Z)V
    .locals 0

    const-string p2, "loadError"

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/exoplayer2/util/l;->L0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public j0(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/s;)V
    .locals 1

    iget-object p2, p2, Lcom/google/android/exoplayer2/source/s;->c:Lcom/google/android/exoplayer2/Format;

    invoke-static {p2}, Lcom/google/android/exoplayer2/Format;->toLogString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "downstreamFormat"

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/util/l;->G0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic k(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/decoder/d;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/i1;->p(Lcom/google/android/exoplayer2/analytics/j1;Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/decoder/d;)V

    return-void
.end method

.method public k0(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V
    .locals 0

    return-void
.end method

.method public l(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;J)V
    .locals 0

    const-string p3, "audioDecoderInitialized"

    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/exoplayer2/util/l;->G0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public l0(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/s;)V
    .locals 1

    iget-object p2, p2, Lcom/google/android/exoplayer2/source/s;->c:Lcom/google/android/exoplayer2/Format;

    invoke-static {p2}, Lcom/google/android/exoplayer2/Format;->toLogString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "upstreamDiscarded"

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/util/l;->G0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public m(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/l;->v0(Lcom/google/android/exoplayer2/analytics/j1$b;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "metadata ["

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/l;->H0(Ljava/lang/String;)V

    const-string p1, "  "

    .line 2
    invoke-direct {p0, p2, p1}, Lcom/google/android/exoplayer2/util/l;->M0(Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/lang/String;)V

    const-string p1, "]"

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/l;->H0(Ljava/lang/String;)V

    return-void
.end method

.method public m0(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/v1$l;Lcom/google/android/exoplayer2/v1$l;I)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reason="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p4}, Lcom/google/android/exoplayer2/util/l;->b0(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", PositionInfo:old ["

    .line 4
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "window="

    .line 5
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/google/android/exoplayer2/v1$l;->b:I

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", period="

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/google/android/exoplayer2/v1$l;->d:I

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pos="

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p2, Lcom/google/android/exoplayer2/v1$l;->e:J

    .line 10
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    iget v3, p2, Lcom/google/android/exoplayer2/v1$l;->g:I

    const-string v4, ", ad="

    const-string v5, ", adGroup="

    const-string v6, ", contentPos="

    const/4 v7, -0x1

    if-eq v3, v7, :cond_0

    .line 12
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p2, Lcom/google/android/exoplayer2/v1$l;->f:J

    .line 13
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/google/android/exoplayer2/v1$l;->g:I

    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/google/android/exoplayer2/v1$l;->h:I

    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const-string p2, "], PositionInfo:new ["

    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p3, Lcom/google/android/exoplayer2/v1$l;->b:I

    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p3, Lcom/google/android/exoplayer2/v1$l;->d:I

    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p3, Lcom/google/android/exoplayer2/v1$l;->e:J

    .line 24
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    iget p2, p3, Lcom/google/android/exoplayer2/v1$l;->g:I

    if-eq p2, v7, :cond_1

    .line 26
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p3, Lcom/google/android/exoplayer2/v1$l;->f:J

    .line 27
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p3, Lcom/google/android/exoplayer2/v1$l;->g:I

    .line 29
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p3, Lcom/google/android/exoplayer2/v1$l;->h:I

    .line 31
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    const-string p2, "]"

    .line 32
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "positionDiscontinuity"

    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/exoplayer2/util/l;->G0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic n(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/analytics/j1$c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/i1;->B(Lcom/google/android/exoplayer2/analytics/j1;Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/analytics/j1$c;)V

    return-void
.end method

.method public n0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;)V
    .locals 1

    const-string v0, "audioDecoderReleased"

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/util/l;->G0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic o(Lcom/google/android/exoplayer2/analytics/j1$b;ZI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/i1;->S(Lcom/google/android/exoplayer2/analytics/j1;Lcom/google/android/exoplayer2/analytics/j1$b;ZI)V

    return-void
.end method

.method public p(Lcom/google/android/exoplayer2/analytics/j1$b;I)V
    .locals 1

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/l;->A0(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "state"

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/util/l;->G0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public p0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;J)V
    .locals 0

    const-string p3, "videoDecoderInitialized"

    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/exoplayer2/util/l;->G0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public q(Lcom/google/android/exoplayer2/analytics/j1$b;I)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "audioSessionId"

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/util/l;->G0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public q0(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 0
    .param p3    # Lcom/google/android/exoplayer2/decoder/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p2}, Lcom/google/android/exoplayer2/Format;->toLogString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "audioInputFormat"

    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/exoplayer2/util/l;->G0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic r(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/i1;->n0(Lcom/google/android/exoplayer2/analytics/j1;Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public r0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/Object;J)V
    .locals 0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "renderedFirstFrame"

    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/exoplayer2/util/l;->G0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic s(Lcom/google/android/exoplayer2/analytics/j1$b;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/i1;->j(Lcom/google/android/exoplayer2/analytics/j1;Lcom/google/android/exoplayer2/analytics/j1$b;J)V

    return-void
.end method

.method public synthetic s0(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/decoder/d;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/i1;->o(Lcom/google/android/exoplayer2/analytics/j1;Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/decoder/d;)V

    return-void
.end method

.method public t(Lcom/google/android/exoplayer2/analytics/j1$b;II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "surfaceSize"

    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/exoplayer2/util/l;->G0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public t0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/analytics/j1$b;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/l;->v0(Lcom/google/android/exoplayer2/analytics/j1$b;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "staticMetadata ["

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/l;->H0(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x18

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "  Metadata:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->H0(Ljava/lang/String;)V

    const-string v1, "    "

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/util/l;->M0(Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/lang/String;)V

    const-string v0, "  ]"

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/l;->H0(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    const-string p1, "]"

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/l;->H0(Ljava/lang/String;)V

    return-void
.end method

.method public u(Lcom/google/android/exoplayer2/analytics/j1$b;Z)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    const-string v0, "shuffleModeEnabled"

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/util/l;->G0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public u0(Lcom/google/android/exoplayer2/analytics/j1$b;Z)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    const-string v0, "loading"

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/util/l;->G0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public v(Lcom/google/android/exoplayer2/analytics/j1$b;IJ)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "droppedFrames"

    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/exoplayer2/util/l;->G0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic w(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/i1;->l(Lcom/google/android/exoplayer2/analytics/j1;Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/Exception;)V

    return-void
.end method

.method public x(Lcom/google/android/exoplayer2/analytics/j1$b;Z)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    const-string v0, "skipSilenceEnabled"

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/util/l;->G0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public y(Lcom/google/android/exoplayer2/analytics/j1$b;ZI)V
    .locals 2

    .line 1
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/l;->x0(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "playWhenReady"

    .line 2
    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/exoplayer2/util/l;->G0(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic z(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;JJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplayer2/analytics/i1;->i0(Lcom/google/android/exoplayer2/analytics/j1;Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/String;JJ)V

    return-void
.end method

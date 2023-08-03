.class public abstract Lcom/google/android/exoplayer2/ext/mediasession/f;
.super Ljava/lang/Object;
.source "TimelineQueueNavigator.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ext/mediasession/b$l;


# static fields
.field public static final g:I = 0xa


# instance fields
.field private final c:Landroid/support/v4/media/session/MediaSessionCompat;

.field private final d:Lcom/google/android/exoplayer2/s2$d;

.field private final e:I

.field private f:J


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ext/mediasession/f;-><init>(Landroid/support/v4/media/session/MediaSessionCompat;I)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/f;->c:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 5
    iput p2, p0, Lcom/google/android/exoplayer2/ext/mediasession/f;->e:I

    const-wide/16 p1, -0x1

    .line 6
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/f;->f:J

    .line 7
    new-instance p1, Lcom/google/android/exoplayer2/s2$d;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/s2$d;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/f;->d:Lcom/google/android/exoplayer2/s2$d;

    return-void
.end method

.method private v(Lcom/google/android/exoplayer2/v1;)V
    .locals 14

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->A0()Lcom/google/android/exoplayer2/s2;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/f;->c:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->A(Ljava/util/List;)V

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/f;->f:J

    return-void

    .line 5
    :cond_0
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 6
    iget v2, p0, Lcom/google/android/exoplayer2/ext/mediasession/f;->e:I

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2;->u()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 7
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->j0()I

    move-result v3

    .line 8
    new-instance v4, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    .line 9
    invoke-virtual {p0, p1, v3}, Lcom/google/android/exoplayer2/ext/mediasession/f;->u(Lcom/google/android/exoplayer2/v1;I)Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v5

    int-to-long v6, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;J)V

    .line 10
    invoke-virtual {v1, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->H1()Z

    move-result v4

    move v5, v3

    :cond_1
    :goto_0
    const/4 v8, -0x1

    if-ne v3, v8, :cond_2

    if-eq v5, v8, :cond_4

    .line 12
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v9

    if-ge v9, v2, :cond_4

    const/4 v9, 0x0

    if-eq v5, v8, :cond_3

    .line 13
    invoke-virtual {v0, v5, v9, v4}, Lcom/google/android/exoplayer2/s2;->i(IIZ)I

    move-result v5

    if-eq v5, v8, :cond_3

    .line 14
    new-instance v10, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    .line 15
    invoke-virtual {p0, p1, v5}, Lcom/google/android/exoplayer2/ext/mediasession/f;->u(Lcom/google/android/exoplayer2/v1;I)Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v11

    int-to-long v12, v5

    invoke-direct {v10, v11, v12, v13}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;J)V

    .line 16
    invoke-virtual {v1, v10}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eq v3, v8, :cond_1

    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v10

    if-ge v10, v2, :cond_1

    .line 18
    invoke-virtual {v0, v3, v9, v4}, Lcom/google/android/exoplayer2/s2;->p(IIZ)I

    move-result v3

    if-eq v3, v8, :cond_1

    .line 19
    new-instance v8, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    .line 20
    invoke-virtual {p0, p1, v3}, Lcom/google/android/exoplayer2/ext/mediasession/f;->u(Lcom/google/android/exoplayer2/v1;I)Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v9

    int-to-long v10, v3

    invoke-direct {v8, v9, v10, v11}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;J)V

    .line 21
    invoke-virtual {v1, v8}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 22
    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/f;->c:Landroid/support/v4/media/session/MediaSessionCompat;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->A(Ljava/util/List;)V

    .line 23
    iput-wide v6, p0, Lcom/google/android/exoplayer2/ext/mediasession/f;->f:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/v1;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/f;->f:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->A0()Lcom/google/android/exoplayer2/s2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2;->u()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/f;->e:I

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->A0()Lcom/google/android/exoplayer2/s2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->j0()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/f;->f:J

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/mediasession/f;->v(Lcom/google/android/exoplayer2/v1;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/j;J)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->A0()Lcom/google/android/exoplayer2/s2;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->K()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    long-to-int p4, p3

    if-ltz p4, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2;->u()I

    move-result p3

    if-ge p4, p3, :cond_1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    invoke-interface {p2, p1, p4, v0, v1}, Lcom/google/android/exoplayer2/j;->c(Lcom/google/android/exoplayer2/v1;IJ)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final e(Lcom/google/android/exoplayer2/v1;)J
    .locals 2
    .param p1    # Lcom/google/android/exoplayer2/v1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/f;->f:J

    return-wide v0
.end method

.method public final l(Lcom/google/android/exoplayer2/v1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/mediasession/f;->v(Lcom/google/android/exoplayer2/v1;)V

    return-void
.end method

.method public o(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/j;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)Z
    .locals 0
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/os/ResultReceiver;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public p(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/j;)V
    .locals 0

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/j;->k(Lcom/google/android/exoplayer2/v1;)Z

    return-void
.end method

.method public q(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/j;)V
    .locals 0

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/j;->j(Lcom/google/android/exoplayer2/v1;)Z

    return-void
.end method

.method public r(Lcom/google/android/exoplayer2/v1;)J
    .locals 5

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->A0()Lcom/google/android/exoplayer2/s2;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->K()Z

    move-result v1

    if-nez v1, :cond_6

    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->j0()I

    move-result v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/mediasession/f;->d:Lcom/google/android/exoplayer2/s2$d;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/exoplayer2/s2;->r(ILcom/google/android/exoplayer2/s2$d;)Lcom/google/android/exoplayer2/s2$d;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2;->u()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x4

    .line 5
    invoke-interface {p1, v3}, Lcom/google/android/exoplayer2/v1;->t0(I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/mediasession/f;->d:Lcom/google/android/exoplayer2/s2$d;

    .line 6
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/s2$d;->j()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x6

    .line 7
    invoke-interface {p1, v3}, Lcom/google/android/exoplayer2/v1;->t0(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    .line 8
    :goto_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/ext/mediasession/f;->d:Lcom/google/android/exoplayer2/s2$d;

    .line 9
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/s2$d;->j()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/android/exoplayer2/ext/mediasession/f;->d:Lcom/google/android/exoplayer2/s2$d;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/s2$d;->i:Z

    if-nez v4, :cond_4

    :cond_3
    const/4 v4, 0x5

    .line 10
    invoke-interface {p1, v4}, Lcom/google/android/exoplayer2/v1;->t0(I)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const/4 v2, 0x1

    :cond_5
    move p1, v2

    move v2, v0

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    const/4 v3, 0x0

    :goto_3
    const-wide/16 v0, 0x0

    if-eqz v2, :cond_7

    const-wide/16 v0, 0x1000

    :cond_7
    if-eqz v3, :cond_8

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    :cond_8
    if-eqz p1, :cond_9

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    :cond_9
    return-wide v0
.end method

.method public abstract u(Lcom/google/android/exoplayer2/v1;I)Landroid/support/v4/media/MediaDescriptionCompat;
.end method

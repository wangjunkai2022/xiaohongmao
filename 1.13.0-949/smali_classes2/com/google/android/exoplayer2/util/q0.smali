.class public final Lcom/google/android/exoplayer2/util/q0;
.super Ljava/lang/Object;
.source "StandaloneMediaClock.java"

# interfaces
.implements Lcom/google/android/exoplayer2/util/y;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/d;

.field private b:Z

.field private c:J

.field private d:J

.field private e:Lcom/google/android/exoplayer2/t1;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/util/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/q0;->a:Lcom/google/android/exoplayer2/util/d;

    .line 3
    sget-object p1, Lcom/google/android/exoplayer2/t1;->d:Lcom/google/android/exoplayer2/t1;

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/q0;->e:Lcom/google/android/exoplayer2/t1;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/util/q0;->c:J

    .line 2
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/util/q0;->b:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/util/q0;->a:Lcom/google/android/exoplayer2/util/d;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/d;->b()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/util/q0;->d:J

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/q0;->b:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/q0;->a:Lcom/google/android/exoplayer2/util/d;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/d;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/util/q0;->d:J

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/q0;->b:Z

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/q0;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/q0;->o()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/util/q0;->a(J)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/q0;->b:Z

    :cond_0
    return-void
.end method

.method public e()Lcom/google/android/exoplayer2/t1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/q0;->e:Lcom/google/android/exoplayer2/t1;

    return-object v0
.end method

.method public g(Lcom/google/android/exoplayer2/t1;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/q0;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/q0;->o()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/util/q0;->a(J)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/q0;->e:Lcom/google/android/exoplayer2/t1;

    return-void
.end method

.method public o()J
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/q0;->c:J

    .line 2
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/util/q0;->b:Z

    if-eqz v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/q0;->a:Lcom/google/android/exoplayer2/util/d;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/util/d;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/util/q0;->d:J

    sub-long/2addr v2, v4

    .line 4
    iget-object v4, p0, Lcom/google/android/exoplayer2/util/q0;->e:Lcom/google/android/exoplayer2/t1;

    iget v5, v4, Lcom/google/android/exoplayer2/t1;->a:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 5
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/i;->c(J)J

    move-result-wide v2

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v4, v2, v3}, Lcom/google/android/exoplayer2/t1;->b(J)J

    move-result-wide v2

    :goto_0
    add-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

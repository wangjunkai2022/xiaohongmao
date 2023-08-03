.class public final synthetic Lcom/google/android/exoplayer2/analytics/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/util/v$a;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/analytics/j1$b;

.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/j1$b;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/i;->a:Lcom/google/android/exoplayer2/analytics/j1$b;

    iput p2, p0, Lcom/google/android/exoplayer2/analytics/i;->b:I

    iput-wide p3, p0, Lcom/google/android/exoplayer2/analytics/i;->c:J

    iput-wide p5, p0, Lcom/google/android/exoplayer2/analytics/i;->d:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/i;->a:Lcom/google/android/exoplayer2/analytics/j1$b;

    iget v1, p0, Lcom/google/android/exoplayer2/analytics/i;->b:I

    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/i;->c:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/analytics/i;->d:J

    move-object v6, p1

    check-cast v6, Lcom/google/android/exoplayer2/analytics/j1;

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/analytics/h1;->q1(Lcom/google/android/exoplayer2/analytics/j1$b;IJJLcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

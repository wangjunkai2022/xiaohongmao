.class public final synthetic Lcom/google/android/exoplayer2/analytics/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/util/v$a;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/analytics/j1$b;

.field public final synthetic b:I

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/j1$b;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/g;->a:Lcom/google/android/exoplayer2/analytics/j1$b;

    iput p2, p0, Lcom/google/android/exoplayer2/analytics/g;->b:I

    iput-wide p3, p0, Lcom/google/android/exoplayer2/analytics/g;->c:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/g;->a:Lcom/google/android/exoplayer2/analytics/j1$b;

    iget v1, p0, Lcom/google/android/exoplayer2/analytics/g;->b:I

    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/g;->c:J

    check-cast p1, Lcom/google/android/exoplayer2/analytics/j1;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/exoplayer2/analytics/h1;->S0(Lcom/google/android/exoplayer2/analytics/j1$b;IJLcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

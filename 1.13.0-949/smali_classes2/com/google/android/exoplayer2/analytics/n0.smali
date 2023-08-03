.class public final synthetic Lcom/google/android/exoplayer2/analytics/n0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/util/v$a;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/analytics/j1$b;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/Object;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/n0;->a:Lcom/google/android/exoplayer2/analytics/j1$b;

    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/n0;->b:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/google/android/exoplayer2/analytics/n0;->c:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/n0;->a:Lcom/google/android/exoplayer2/analytics/j1$b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/n0;->b:Ljava/lang/Object;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/n0;->c:J

    check-cast p1, Lcom/google/android/exoplayer2/analytics/j1;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/exoplayer2/analytics/h1;->c1(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/Object;JLcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

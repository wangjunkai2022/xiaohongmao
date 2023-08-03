.class public final synthetic Lcom/google/android/exoplayer2/analytics/a1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/util/v$b;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/analytics/h1;

.field public final synthetic b:Lcom/google/android/exoplayer2/v1;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/h1;Lcom/google/android/exoplayer2/v1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/a1;->a:Lcom/google/android/exoplayer2/analytics/h1;

    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/a1;->b:Lcom/google/android/exoplayer2/v1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/google/android/exoplayer2/util/m;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/a1;->a:Lcom/google/android/exoplayer2/analytics/h1;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/a1;->b:Lcom/google/android/exoplayer2/v1;

    check-cast p1, Lcom/google/android/exoplayer2/analytics/j1;

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/analytics/h1;->v0(Lcom/google/android/exoplayer2/analytics/h1;Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/analytics/j1;Lcom/google/android/exoplayer2/util/m;)V

    return-void
.end method

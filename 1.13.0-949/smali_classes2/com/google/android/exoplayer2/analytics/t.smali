.class public final synthetic Lcom/google/android/exoplayer2/analytics/t;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/util/v$a;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/analytics/j1$b;

.field public final synthetic b:Lcom/google/android/exoplayer2/audio/e;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/audio/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/t;->a:Lcom/google/android/exoplayer2/analytics/j1$b;

    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/t;->b:Lcom/google/android/exoplayer2/audio/e;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/t;->a:Lcom/google/android/exoplayer2/analytics/j1$b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/t;->b:Lcom/google/android/exoplayer2/audio/e;

    check-cast p1, Lcom/google/android/exoplayer2/analytics/j1;

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/analytics/h1;->v1(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/audio/e;Lcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

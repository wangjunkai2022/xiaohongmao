.class public final synthetic Lcom/google/android/exoplayer2/analytics/b0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/util/v$a;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/analytics/j1$b;

.field public final synthetic b:Lcom/google/android/exoplayer2/source/o;

.field public final synthetic c:Lcom/google/android/exoplayer2/source/s;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/b0;->a:Lcom/google/android/exoplayer2/analytics/j1$b;

    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/b0;->b:Lcom/google/android/exoplayer2/source/o;

    iput-object p3, p0, Lcom/google/android/exoplayer2/analytics/b0;->c:Lcom/google/android/exoplayer2/source/s;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/b0;->a:Lcom/google/android/exoplayer2/analytics/j1$b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/b0;->b:Lcom/google/android/exoplayer2/source/o;

    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/b0;->c:Lcom/google/android/exoplayer2/source/s;

    check-cast p1, Lcom/google/android/exoplayer2/analytics/j1;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/analytics/h1;->M0(Lcom/google/android/exoplayer2/analytics/j1$b;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;Lcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

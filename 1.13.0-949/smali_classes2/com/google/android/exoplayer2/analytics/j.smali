.class public final synthetic Lcom/google/android/exoplayer2/analytics/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/util/v$a;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/analytics/j1$b;

.field public final synthetic b:I

.field public final synthetic c:Lcom/google/android/exoplayer2/v1$l;

.field public final synthetic d:Lcom/google/android/exoplayer2/v1$l;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/v1$l;Lcom/google/android/exoplayer2/v1$l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/j;->a:Lcom/google/android/exoplayer2/analytics/j1$b;

    iput p2, p0, Lcom/google/android/exoplayer2/analytics/j;->b:I

    iput-object p3, p0, Lcom/google/android/exoplayer2/analytics/j;->c:Lcom/google/android/exoplayer2/v1$l;

    iput-object p4, p0, Lcom/google/android/exoplayer2/analytics/j;->d:Lcom/google/android/exoplayer2/v1$l;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/j;->a:Lcom/google/android/exoplayer2/analytics/j1$b;

    iget v1, p0, Lcom/google/android/exoplayer2/analytics/j;->b:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/j;->c:Lcom/google/android/exoplayer2/v1$l;

    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/j;->d:Lcom/google/android/exoplayer2/v1$l;

    check-cast p1, Lcom/google/android/exoplayer2/analytics/j1;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/exoplayer2/analytics/h1;->Y0(Lcom/google/android/exoplayer2/analytics/j1$b;ILcom/google/android/exoplayer2/v1$l;Lcom/google/android/exoplayer2/v1$l;Lcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.class public final synthetic Lcom/google/android/exoplayer2/analytics/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/util/v$a;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/analytics/j1$b;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/j1$b;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/f;->a:Lcom/google/android/exoplayer2/analytics/j1$b;

    iput p2, p0, Lcom/google/android/exoplayer2/analytics/f;->b:I

    iput p3, p0, Lcom/google/android/exoplayer2/analytics/f;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/f;->a:Lcom/google/android/exoplayer2/analytics/j1$b;

    iget v1, p0, Lcom/google/android/exoplayer2/analytics/f;->b:I

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/f;->c:I

    check-cast p1, Lcom/google/android/exoplayer2/analytics/j1;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/analytics/h1;->B0(Lcom/google/android/exoplayer2/analytics/j1$b;IILcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

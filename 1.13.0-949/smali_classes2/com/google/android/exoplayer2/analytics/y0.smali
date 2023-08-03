.class public final synthetic Lcom/google/android/exoplayer2/analytics/y0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/util/v$a;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/analytics/j1$b;

.field public final synthetic b:Z

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/j1$b;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/y0;->a:Lcom/google/android/exoplayer2/analytics/j1$b;

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/analytics/y0;->b:Z

    iput p3, p0, Lcom/google/android/exoplayer2/analytics/y0;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/y0;->a:Lcom/google/android/exoplayer2/analytics/j1$b;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/y0;->b:Z

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/y0;->c:I

    check-cast p1, Lcom/google/android/exoplayer2/analytics/j1;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/analytics/h1;->q0(Lcom/google/android/exoplayer2/analytics/j1$b;ZILcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

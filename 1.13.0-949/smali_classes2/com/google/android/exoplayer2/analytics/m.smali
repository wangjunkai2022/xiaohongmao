.class public final synthetic Lcom/google/android/exoplayer2/analytics/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/util/v$a;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/analytics/j1$b;

.field public final synthetic b:J

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/j1$b;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/m;->a:Lcom/google/android/exoplayer2/analytics/j1$b;

    iput-wide p2, p0, Lcom/google/android/exoplayer2/analytics/m;->b:J

    iput p4, p0, Lcom/google/android/exoplayer2/analytics/m;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/m;->a:Lcom/google/android/exoplayer2/analytics/j1$b;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/analytics/m;->b:J

    iget v3, p0, Lcom/google/android/exoplayer2/analytics/m;->c:I

    check-cast p1, Lcom/google/android/exoplayer2/analytics/j1;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/exoplayer2/analytics/h1;->o1(Lcom/google/android/exoplayer2/analytics/j1$b;JILcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

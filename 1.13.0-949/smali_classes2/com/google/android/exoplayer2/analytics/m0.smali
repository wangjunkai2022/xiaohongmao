.class public final synthetic Lcom/google/android/exoplayer2/analytics/m0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/util/v$a;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/analytics/j1$b;

.field public final synthetic b:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/m0;->a:Lcom/google/android/exoplayer2/analytics/j1$b;

    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/m0;->b:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/m0;->a:Lcom/google/android/exoplayer2/analytics/j1$b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/m0;->b:Ljava/lang/Exception;

    check-cast p1, Lcom/google/android/exoplayer2/analytics/j1;

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/analytics/h1;->p1(Lcom/google/android/exoplayer2/analytics/j1$b;Ljava/lang/Exception;Lcom/google/android/exoplayer2/analytics/j1;)V

    return-void
.end method

.class Lcom/google/android/exoplayer2/t0$a;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Lcom/google/android/exoplayer2/e2$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/t0;->q(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/t0;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/t0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/t0$a;->a:Lcom/google/android/exoplayer2/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/t0$a;->a:Lcom/google/android/exoplayer2/t0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/t0;->j(Lcom/google/android/exoplayer2/t0;)Lcom/google/android/exoplayer2/util/q;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/q;->l(I)Z

    return-void
.end method

.method public b(J)V
    .locals 3

    const-wide/16 v0, 0x7d0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/t0$a;->a:Lcom/google/android/exoplayer2/t0;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/t0;->h(Lcom/google/android/exoplayer2/t0;Z)Z

    :cond_0
    return-void
.end method

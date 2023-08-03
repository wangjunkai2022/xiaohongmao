.class public final Lcom/google/android/exoplayer2/source/a1$b;
.super Ljava/lang/Object;
.source "SilenceMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:J

.field private b:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/exoplayer2/source/a1;
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/a1$b;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/source/a1;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/a1$b;->a:J

    invoke-static {}, Lcom/google/android/exoplayer2/source/a1;->B()Lcom/google/android/exoplayer2/b1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/b1;->b()Lcom/google/android/exoplayer2/b1$c;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/a1$b;->b:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/b1$c;->E(Ljava/lang/Object;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/b1$c;->a()Lcom/google/android/exoplayer2/b1;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/source/a1;-><init>(JLcom/google/android/exoplayer2/b1;Lcom/google/android/exoplayer2/source/a1$a;)V

    return-object v0
.end method

.method public b(J)Lcom/google/android/exoplayer2/source/a1$b;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/a1$b;->a:J

    return-object p0
.end method

.method public c(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/a1$b;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/a1$b;->b:Ljava/lang/Object;

    return-object p0
.end method

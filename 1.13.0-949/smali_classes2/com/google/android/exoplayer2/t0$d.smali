.class final Lcom/google/android/exoplayer2/t0$d;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/t0$d;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/z1;

.field public b:I

.field public c:J

.field public d:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/z1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/t0$d;->a:Lcom/google/android/exoplayer2/z1;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/t0$d;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/t0$d;->d:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p1, Lcom/google/android/exoplayer2/t0$d;->d:Ljava/lang/Object;

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eq v3, v4, :cond_3

    if-eqz v0, :cond_2

    const/4 v1, -0x1

    :cond_2
    return v1

    :cond_3
    if-nez v0, :cond_4

    return v2

    .line 2
    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer2/t0$d;->b:I

    iget v1, p1, Lcom/google/android/exoplayer2/t0$d;->b:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_5

    return v0

    .line 3
    :cond_5
    iget-wide v0, p0, Lcom/google/android/exoplayer2/t0$d;->c:J

    iget-wide v2, p1, Lcom/google/android/exoplayer2/t0$d;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/util/z0;->r(JJ)I

    move-result p1

    return p1
.end method

.method public b(IJLjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/t0$d;->b:I

    .line 2
    iput-wide p2, p0, Lcom/google/android/exoplayer2/t0$d;->c:J

    .line 3
    iput-object p4, p0, Lcom/google/android/exoplayer2/t0$d;->d:Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/t0$d;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/t0$d;->a(Lcom/google/android/exoplayer2/t0$d;)I

    move-result p1

    return p1
.end method

.class public final Lcom/google/android/exoplayer2/analytics/n1$c;
.super Ljava/lang/Object;
.source "PlaybackStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/analytics/n1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/analytics/j1$b;

.field public final b:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/analytics/j1$b;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/n1$c;->a:Lcom/google/android/exoplayer2/analytics/j1$b;

    .line 3
    iput p2, p0, Lcom/google/android/exoplayer2/analytics/n1$c;->b:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v1, Lcom/google/android/exoplayer2/analytics/n1$c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/analytics/n1$c;

    .line 3
    iget v1, p0, Lcom/google/android/exoplayer2/analytics/n1$c;->b:I

    iget v2, p1, Lcom/google/android/exoplayer2/analytics/n1$c;->b:I

    if-eq v1, v2, :cond_2

    return v0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/n1$c;->a:Lcom/google/android/exoplayer2/analytics/j1$b;

    iget-object p1, p1, Lcom/google/android/exoplayer2/analytics/n1$c;->a:Lcom/google/android/exoplayer2/analytics/j1$b;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/analytics/j1$b;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/n1$c;->a:Lcom/google/android/exoplayer2/analytics/j1$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/analytics/j1$b;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Lcom/google/android/exoplayer2/analytics/n1$c;->b:I

    add-int/2addr v0, v1

    return v0
.end method

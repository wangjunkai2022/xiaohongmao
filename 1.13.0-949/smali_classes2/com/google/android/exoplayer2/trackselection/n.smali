.class public final Lcom/google/android/exoplayer2/trackselection/n;
.super Ljava/lang/Object;
.source "TrackSelectionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/n$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([Lcom/google/android/exoplayer2/trackselection/g$a;Lcom/google/android/exoplayer2/trackselection/n$a;)[Lcom/google/android/exoplayer2/trackselection/g;
    .locals 8

    .line 1
    array-length v0, p0

    new-array v0, v0, [Lcom/google/android/exoplayer2/trackselection/g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_2

    .line 3
    aget-object v4, p0, v2

    const/4 v5, 0x1

    if-nez v4, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v6, v4, Lcom/google/android/exoplayer2/trackselection/g$a;->b:[I

    array-length v7, v6

    if-le v7, v5, :cond_1

    if-nez v3, :cond_1

    .line 5
    invoke-interface {p1, v4}, Lcom/google/android/exoplayer2/trackselection/n$a;->a(Lcom/google/android/exoplayer2/trackselection/g$a;)Lcom/google/android/exoplayer2/trackselection/g;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v3, 0x1

    goto :goto_1

    .line 6
    :cond_1
    new-instance v5, Lcom/google/android/exoplayer2/trackselection/h;

    iget-object v7, v4, Lcom/google/android/exoplayer2/trackselection/g$a;->a:Lcom/google/android/exoplayer2/source/TrackGroup;

    aget v6, v6, v1

    iget v4, v4, Lcom/google/android/exoplayer2/trackselection/g$a;->c:I

    invoke-direct {v5, v7, v6, v4}, Lcom/google/android/exoplayer2/trackselection/h;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;II)V

    aput-object v5, v0, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static b(Lcom/google/android/exoplayer2/trackselection/m;I)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/m;->a:I

    if-ge v1, v2, :cond_3

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/m;->a(I)Lcom/google/android/exoplayer2/trackselection/l;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_1
    invoke-interface {v2}, Lcom/google/android/exoplayer2/trackselection/l;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 4
    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/trackselection/l;->f(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a0;->l(Ljava/lang/String;)I

    move-result v4

    if-ne v4, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public static c(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;ILcom/google/android/exoplayer2/source/TrackGroupArray;ZLcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 0
    .param p4    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->o(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p1, p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->Z(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    move-result-object p0

    if-eqz p4, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->b0(ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->l()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p0

    return-object p0
.end method

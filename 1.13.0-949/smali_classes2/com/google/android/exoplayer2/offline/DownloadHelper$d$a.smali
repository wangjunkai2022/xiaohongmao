.class final Lcom/google/android/exoplayer2/offline/DownloadHelper$d$a;
.super Ljava/lang/Object;
.source "DownloadHelper.java"

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/DownloadHelper$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadHelper$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper$d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Lcom/google/android/exoplayer2/trackselection/g$a;Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/s2;)[Lcom/google/android/exoplayer2/trackselection/g;
    .locals 2

    .line 1
    array-length p2, p1

    new-array p2, p2, [Lcom/google/android/exoplayer2/trackselection/g;

    const/4 p3, 0x0

    .line 2
    :goto_0
    array-length p4, p1

    if-ge p3, p4, :cond_1

    .line 3
    aget-object p4, p1, p3

    if-nez p4, :cond_0

    const/4 p4, 0x0

    goto :goto_1

    .line 4
    :cond_0
    new-instance p4, Lcom/google/android/exoplayer2/offline/DownloadHelper$d;

    aget-object v0, p1, p3

    iget-object v0, v0, Lcom/google/android/exoplayer2/trackselection/g$a;->a:Lcom/google/android/exoplayer2/source/TrackGroup;

    aget-object v1, p1, p3

    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/g$a;->b:[I

    invoke-direct {p4, v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadHelper$d;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    :goto_1
    aput-object p4, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

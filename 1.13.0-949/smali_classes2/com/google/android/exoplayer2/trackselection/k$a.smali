.class public final Lcom/google/android/exoplayer2/trackselection/k$a;
.super Ljava/lang/Object;
.source "RandomTrackSelection.java"

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/k$a;->a:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/Random;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/k$a;->a:Ljava/util/Random;

    return-void
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/trackselection/k$a;Lcom/google/android/exoplayer2/trackselection/g$a;)Lcom/google/android/exoplayer2/trackselection/g;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/k$a;->c(Lcom/google/android/exoplayer2/trackselection/g$a;)Lcom/google/android/exoplayer2/trackselection/g;

    move-result-object p0

    return-object p0
.end method

.method private synthetic c(Lcom/google/android/exoplayer2/trackselection/g$a;)Lcom/google/android/exoplayer2/trackselection/g;
    .locals 4

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/k;

    iget-object v1, p1, Lcom/google/android/exoplayer2/trackselection/g$a;->a:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v2, p1, Lcom/google/android/exoplayer2/trackselection/g$a;->b:[I

    iget p1, p1, Lcom/google/android/exoplayer2/trackselection/g$a;->c:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/trackselection/k$a;->a:Ljava/util/Random;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/android/exoplayer2/trackselection/k;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[IILjava/util/Random;)V

    return-object v0
.end method


# virtual methods
.method public a([Lcom/google/android/exoplayer2/trackselection/g$a;Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/s2;)[Lcom/google/android/exoplayer2/trackselection/g;
    .locals 0

    new-instance p2, Lcom/google/android/exoplayer2/trackselection/j;

    invoke-direct {p2, p0}, Lcom/google/android/exoplayer2/trackselection/j;-><init>(Lcom/google/android/exoplayer2/trackselection/k$a;)V

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/trackselection/n;->a([Lcom/google/android/exoplayer2/trackselection/g$a;Lcom/google/android/exoplayer2/trackselection/n$a;)[Lcom/google/android/exoplayer2/trackselection/g;

    move-result-object p1

    return-object p1
.end method

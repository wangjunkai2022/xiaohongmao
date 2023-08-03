.class public Lcom/google/android/exoplayer2/offline/e0$c;
.super Ljava/lang/Object;
.source "SegmentDownloader.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/offline/e0$c;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Lcom/google/android/exoplayer2/upstream/o;


# direct methods
.method public constructor <init>(JLcom/google/android/exoplayer2/upstream/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/offline/e0$c;->a:J

    .line 3
    iput-object p3, p0, Lcom/google/android/exoplayer2/offline/e0$c;->b:Lcom/google/android/exoplayer2/upstream/o;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/offline/e0$c;)I
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/offline/e0$c;->a:J

    iget-wide v2, p1, Lcom/google/android/exoplayer2/offline/e0$c;->a:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/util/z0;->r(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/offline/e0$c;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/offline/e0$c;->a(Lcom/google/android/exoplayer2/offline/e0$c;)I

    move-result p1

    return p1
.end method

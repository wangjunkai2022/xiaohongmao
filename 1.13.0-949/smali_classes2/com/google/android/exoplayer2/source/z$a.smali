.class public final Lcom/google/android/exoplayer2/source/z$a;
.super Lcom/google/android/exoplayer2/source/x;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/x;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/x;-><init>(Lcom/google/android/exoplayer2/source/x;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/x;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;IIJ)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/x;-><init>(Ljava/lang/Object;IIJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;J)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/x;-><init>(Ljava/lang/Object;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JI)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/x;-><init>(Ljava/lang/Object;JI)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/x;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/z$a;->d(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/z$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(J)Lcom/google/android/exoplayer2/source/x;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/z$a;->e(J)Lcom/google/android/exoplayer2/source/z$a;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/z$a;
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/source/z$a;

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/x;->a(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/x;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/z$a;-><init>(Lcom/google/android/exoplayer2/source/x;)V

    return-object v0
.end method

.method public e(J)Lcom/google/android/exoplayer2/source/z$a;
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/source/z$a;

    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/source/x;->b(J)Lcom/google/android/exoplayer2/source/x;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/z$a;-><init>(Lcom/google/android/exoplayer2/source/x;)V

    return-object v0
.end method

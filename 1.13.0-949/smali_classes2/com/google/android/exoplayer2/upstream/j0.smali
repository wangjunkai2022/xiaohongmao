.class public final Lcom/google/android/exoplayer2/upstream/j0;
.super Ljava/lang/Object;
.source "PriorityDataSourceFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/m$a;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/m$a;

.field private final b:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/util/PriorityTaskManager;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/j0;->a:Lcom/google/android/exoplayer2/upstream/m$a;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/j0;->b:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 4
    iput p3, p0, Lcom/google/android/exoplayer2/upstream/j0;->c:I

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/android/exoplayer2/upstream/m;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/j0;->d()Lcom/google/android/exoplayer2/upstream/i0;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/google/android/exoplayer2/upstream/i0;
    .locals 4

    new-instance v0, Lcom/google/android/exoplayer2/upstream/i0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/j0;->a:Lcom/google/android/exoplayer2/upstream/m$a;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/m$a;->a()Lcom/google/android/exoplayer2/upstream/m;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/j0;->b:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    iget v3, p0, Lcom/google/android/exoplayer2/upstream/j0;->c:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/upstream/i0;-><init>(Lcom/google/android/exoplayer2/upstream/m;Lcom/google/android/exoplayer2/util/PriorityTaskManager;I)V

    return-object v0
.end method

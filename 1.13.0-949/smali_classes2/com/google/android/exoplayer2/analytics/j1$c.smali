.class public final Lcom/google/android/exoplayer2/analytics/j1$c;
.super Ljava/lang/Object;
.source "AnalyticsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/analytics/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/m;

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/analytics/j1$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/util/m;Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/m;",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/analytics/j1$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/j1$c;->a:Lcom/google/android/exoplayer2/util/m;

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/m;->d()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/m;->d()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/m;->c(I)I

    move-result v2

    .line 6
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/analytics/j1$b;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/analytics/j1$b;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/j1$c;->b:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/j1$c;->a:Lcom/google/android/exoplayer2/util/m;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/m;->a(I)Z

    move-result p1

    return p1
.end method

.method public varargs b([I)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/j1$c;->a:Lcom/google/android/exoplayer2/util/m;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/m;->b([I)Z

    move-result p1

    return p1
.end method

.method public c(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/j1$c;->a:Lcom/google/android/exoplayer2/util/m;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/m;->c(I)I

    move-result p1

    return p1
.end method

.method public d(I)Lcom/google/android/exoplayer2/analytics/j1$b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/j1$c;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/analytics/j1$b;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/analytics/j1$b;

    return-object p1
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/j1$c;->a:Lcom/google/android/exoplayer2/util/m;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/m;->d()I

    move-result v0

    return v0
.end method

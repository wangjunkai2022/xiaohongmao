.class public Lmaster/flame/danmaku/danmaku/model/android/f;
.super Ljava/lang/Object;
.source "DrawingCache.java"

# interfaces
.implements Lmaster/flame/danmaku/danmaku/model/o;
.implements Lmaster/flame/danmaku/danmaku/model/objectpool/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmaster/flame/danmaku/danmaku/model/o<",
        "Lmaster/flame/danmaku/danmaku/model/android/g;",
        ">;",
        "Lmaster/flame/danmaku/danmaku/model/objectpool/c<",
        "Lmaster/flame/danmaku/danmaku/model/android/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lmaster/flame/danmaku/danmaku/model/android/g;

.field private b:I

.field private c:Lmaster/flame/danmaku/danmaku/model/android/f;

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->b:I

    .line 3
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->e:I

    .line 4
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/g;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/g;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->a:Lmaster/flame/danmaku/danmaku/model/android/g;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->d:Z

    return-void
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->a:Lmaster/flame/danmaku/danmaku/model/android/g;

    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/android/g;->f:I

    return v0
.end method

.method public bridge synthetic c()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/android/f;->m()Lmaster/flame/danmaku/danmaku/model/android/f;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->d:Z

    return v0
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->a:Lmaster/flame/danmaku/danmaku/model/android/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/g;->f()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->b:I

    .line 4
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->e:I

    return-void
.end method

.method public declared-synchronized e()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g(IIIZI)V
    .locals 6

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->a:Lmaster/flame/danmaku/danmaku/model/android/g;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 2
    invoke-virtual/range {v0 .. v5}, Lmaster/flame/danmaku/danmaku/model/android/g;->a(IIIZI)V

    .line 3
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->a:Lmaster/flame/danmaku/danmaku/model/android/g;

    iget-object p1, p1, Lmaster/flame/danmaku/danmaku/model/android/g;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result p1

    iget-object p2, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->a:Lmaster/flame/danmaku/danmaku/model/android/g;

    iget-object p2, p2, Lmaster/flame/danmaku/danmaku/model/android/g;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    mul-int p1, p1, p2

    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->b:I

    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/android/f;->l()Lmaster/flame/danmaku/danmaku/model/android/g;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->a:Lmaster/flame/danmaku/danmaku/model/android/g;

    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/android/g;->e:I

    return v0
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->a:Lmaster/flame/danmaku/danmaku/model/android/g;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/g;->c()V

    return-void
.end method

.method public bridge synthetic j(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lmaster/flame/danmaku/danmaku/model/android/f;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/f;->n(Lmaster/flame/danmaku/danmaku/model/android/f;)V

    return-void
.end method

.method public declared-synchronized k()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public l()Lmaster/flame/danmaku/danmaku/model/android/g;
    .locals 2

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->a:Lmaster/flame/danmaku/danmaku/model/android/g;

    .line 2
    iget-object v1, v0, Lmaster/flame/danmaku/danmaku/model/android/g;->b:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public m()Lmaster/flame/danmaku/danmaku/model/android/f;
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->c:Lmaster/flame/danmaku/danmaku/model/android/f;

    return-object v0
.end method

.method public n(Lmaster/flame/danmaku/danmaku/model/android/f;)V
    .locals 0

    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->c:Lmaster/flame/danmaku/danmaku/model/android/f;

    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/f;->b:I

    return v0
.end method

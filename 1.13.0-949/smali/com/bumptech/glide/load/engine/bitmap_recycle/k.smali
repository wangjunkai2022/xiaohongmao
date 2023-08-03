.class public Lcom/bumptech/glide/load/engine/bitmap_recycle/k;
.super Ljava/lang/Object;
.source "LruBitmapPool.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/bitmap_recycle/k$b;,
        Lcom/bumptech/glide/load/engine/bitmap_recycle/k$c;,
        Lcom/bumptech/glide/load/engine/bitmap_recycle/k$a;
    }
.end annotation


# static fields
.field private static final k:Ljava/lang/String; = "LruBitmapPool"

.field private static final l:Landroid/graphics/Bitmap$Config;


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/bitmap_recycle/l;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/Bitmap$Config;",
            ">;"
        }
    .end annotation
.end field

.field private final c:J

.field private final d:Lcom/bumptech/glide/load/engine/bitmap_recycle/k$a;

.field private e:J

.field private f:J

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->l:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 7
    invoke-static {}, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->o()Lcom/bumptech/glide/load/engine/bitmap_recycle/l;

    move-result-object v0

    invoke-static {}, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->n()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;-><init>(JLcom/bumptech/glide/load/engine/bitmap_recycle/l;Ljava/util/Set;)V

    return-void
.end method

.method constructor <init>(JLcom/bumptech/glide/load/engine/bitmap_recycle/l;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/l;",
            "Ljava/util/Set<",
            "Landroid/graphics/Bitmap$Config;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->c:J

    .line 3
    iput-wide p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->e:J

    .line 4
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/l;

    .line 5
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->b:Ljava/util/Set;

    .line 6
    new-instance p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/k$b;

    invoke-direct {p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/k$b;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/k$a;

    return-void
.end method

.method public constructor <init>(JLjava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set<",
            "Landroid/graphics/Bitmap$Config;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-static {}, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->o()Lcom/bumptech/glide/load/engine/bitmap_recycle/l;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;-><init>(JLcom/bumptech/glide/load/engine/bitmap_recycle/l;Ljava/util/Set;)V

    return-void
.end method

.method private static g(Landroid/graphics/Bitmap$Config;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq p0, v0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create a mutable Bitmap with config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static h(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 0
    .param p2    # Landroid/graphics/Bitmap$Config;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->l:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private i()V
    .locals 2

    const-string v0, "LruBitmapPool"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->j()V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", misses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", puts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", evictions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", maxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LruBitmapPool"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private k()V
    .locals 2

    iget-wide v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->e:J

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->u(J)V

    return-void
.end method

.method private static n()Ljava/util/Set;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/graphics/Bitmap$Config;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    .line 3
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 4
    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static o()Lcom/bumptech/glide/load/engine/bitmap_recycle/l;
    .locals 1

    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/o;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/o;-><init>()V

    return-object v0
.end method

.method private declared-synchronized p(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 5
    .param p3    # Landroid/graphics/Bitmap$Config;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->g(Landroid/graphics/Bitmap$Config;)V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/l;

    if-eqz p3, :cond_0

    move-object v1, p3

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->l:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-interface {v0, p1, p2, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/l;->e(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v1, "LruBitmapPool"

    const/4 v2, 0x3

    .line 3
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "LruBitmapPool"

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing bitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/l;

    invoke-interface {v3, p1, p2, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/l;->b(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_1
    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->h:I

    goto :goto_1

    .line 6
    :cond_2
    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->g:I

    .line 7
    iget-wide v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->f:J

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/l;

    invoke-interface {v3, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/l;->c(Landroid/graphics/Bitmap;)I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->f:J

    .line 8
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/k$a;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/k$a;->a(Landroid/graphics/Bitmap;)V

    .line 9
    invoke-static {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->t(Landroid/graphics/Bitmap;)V

    :goto_1
    const-string v1, "LruBitmapPool"

    const/4 v2, 0x2

    .line 10
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "LruBitmapPool"

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get bitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/l;

    invoke-interface {v3, p1, p2, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/l;->b(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_3
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static r(Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    return-void
.end method

.method private static t(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 2
    invoke-static {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->r(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private declared-synchronized u(J)V
    .locals 5

    monitor-enter p0

    .line 1
    :goto_0
    :try_start_0
    iget-wide v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->f:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_3

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/l;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/l;->removeLast()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "LruBitmapPool"

    const/4 p2, 0x5

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "LruBitmapPool"

    const-string p2, "Size mismatch, resetting"

    .line 4
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->j()V

    :cond_0
    const-wide/16 p1, 0x0

    .line 6
    iput-wide p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/k$a;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/k$a;->a(Landroid/graphics/Bitmap;)V

    .line 9
    iget-wide v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->f:J

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/l;

    invoke-interface {v3, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/l;->c(Landroid/graphics/Bitmap;)I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->f:J

    .line 10
    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->j:I

    const-string v1, "LruBitmapPool"

    const/4 v2, 0x3

    .line 11
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "LruBitmapPool"

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Evicting bitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/l;

    invoke-interface {v3, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/l;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_2
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->i()V

    .line 14
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 15
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public a(I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const-string v0, "LruBitmapPool"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trimMemory, level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x28

    if-ge p1, v0, :cond_3

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/16 v2, 0x14

    if-lt v0, v1, :cond_1

    if-lt p1, v2, :cond_1

    goto :goto_0

    :cond_1
    if-ge p1, v2, :cond_2

    const/16 v0, 0xf

    if-ne p1, v0, :cond_4

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->getMaxSize()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->u(J)V

    goto :goto_1

    .line 5
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->b()V

    :cond_4
    :goto_1
    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "LruBitmapPool"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "clearMemory"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v0, 0x0

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->u(J)V

    return-void
.end method

.method public declared-synchronized c(F)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->c:J

    long-to-float v0, v0

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->e:J

    .line 2
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Landroid/graphics/Bitmap;)V
    .locals 6

    monitor-enter p0

    if-eqz p1, :cond_5

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/l;

    .line 3
    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/l;->c(Landroid/graphics/Bitmap;)I

    move-result v0

    int-to-long v2, v0

    iget-wide v4, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->e:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->b:Ljava/util/Set;

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/l;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/l;->c(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 6
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/l;

    invoke-interface {v2, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/l;->d(Landroid/graphics/Bitmap;)V

    .line 7
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/k$a;

    invoke-interface {v2, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/k$a;->b(Landroid/graphics/Bitmap;)V

    .line 8
    iget v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->i:I

    .line 9
    iget-wide v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->f:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->f:J

    const-string v0, "LruBitmapPool"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "LruBitmapPool"

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Put bitmap in pool="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/l;

    invoke-interface {v2, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/l;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->i()V

    .line 13
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    return-void

    :cond_2
    :goto_0
    :try_start_1
    const-string v0, "LruBitmapPool"

    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "LruBitmapPool"

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reject bitmap from pool, bitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/l;

    .line 17
    invoke-interface {v2, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/l;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", is mutable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", is allowed config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->b:Ljava/util/Set;

    .line 19
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    monitor-exit p0

    return-void

    .line 23
    :cond_4
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot pool recycled bitmap"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 24
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Bitmap must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public e(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->p(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->h(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public f(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->p(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->h(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMaxSize()J
    .locals 2

    iget-wide v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->e:J

    return-wide v0
.end method

.method public l()J
    .locals 2

    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->j:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public m()J
    .locals 2

    iget-wide v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->f:J

    return-wide v0
.end method

.method public q()J
    .locals 2

    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->g:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public s()J
    .locals 2

    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->h:I

    int-to-long v0, v0

    return-wide v0
.end method

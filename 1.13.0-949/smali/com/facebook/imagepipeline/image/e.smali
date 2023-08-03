.class public Lcom/facebook/imagepipeline/image/e;
.super Ljava/lang/Object;
.source "EncodedImage.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation build Ls7/b;
.end annotation


# static fields
.field public static final m:I = -0x1

.field public static final n:I = -0x1

.field public static final o:I = -0x1

.field public static final p:I = -0x1

.field public static final q:I = 0x1

.field private static r:Z


# instance fields
.field private final a:Lcom/facebook/common/references/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final b:Lcom/facebook/common/internal/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/m<",
            "Ljava/io/FileInputStream;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private c:Lcom/facebook/imageformat/c;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Lcom/facebook/imagepipeline/common/a;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private k:Landroid/graphics/ColorSpace;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private l:Z


# direct methods
.method public constructor <init>(Lcom/facebook/common/internal/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputStreamSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/m<",
            "Ljava/io/FileInputStream;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lcom/facebook/imageformat/c;->c:Lcom/facebook/imageformat/c;

    iput-object v0, p0, Lcom/facebook/imagepipeline/image/e;->c:Lcom/facebook/imageformat/c;

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/facebook/imagepipeline/image/e;->d:I

    const/4 v1, 0x0

    .line 15
    iput v1, p0, Lcom/facebook/imagepipeline/image/e;->e:I

    .line 16
    iput v0, p0, Lcom/facebook/imagepipeline/image/e;->f:I

    .line 17
    iput v0, p0, Lcom/facebook/imagepipeline/image/e;->g:I

    const/4 v1, 0x1

    .line 18
    iput v1, p0, Lcom/facebook/imagepipeline/image/e;->h:I

    .line 19
    iput v0, p0, Lcom/facebook/imagepipeline/image/e;->i:I

    .line 20
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/facebook/imagepipeline/image/e;->a:Lcom/facebook/common/references/a;

    .line 22
    iput-object p1, p0, Lcom/facebook/imagepipeline/image/e;->b:Lcom/facebook/common/internal/m;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/common/internal/m;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputStreamSupplier",
            "streamSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/m<",
            "Ljava/io/FileInputStream;",
            ">;I)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/image/e;-><init>(Lcom/facebook/common/internal/m;)V

    .line 24
    iput p2, p0, Lcom/facebook/imagepipeline/image/e;->i:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/common/references/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pooledByteBufferRef"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/facebook/imageformat/c;->c:Lcom/facebook/imageformat/c;

    iput-object v0, p0, Lcom/facebook/imagepipeline/image/e;->c:Lcom/facebook/imageformat/c;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/facebook/imagepipeline/image/e;->d:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/facebook/imagepipeline/image/e;->e:I

    .line 5
    iput v0, p0, Lcom/facebook/imagepipeline/image/e;->f:I

    .line 6
    iput v0, p0, Lcom/facebook/imagepipeline/image/e;->g:I

    const/4 v1, 0x1

    .line 7
    iput v1, p0, Lcom/facebook/imagepipeline/image/e;->h:I

    .line 8
    iput v0, p0, Lcom/facebook/imagepipeline/image/e;->i:I

    .line 9
    invoke-static {p1}, Lcom/facebook/common/references/a;->A(Lcom/facebook/common/references/a;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/j;->d(Ljava/lang/Boolean;)V

    .line 10
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->b()Lcom/facebook/common/references/a;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/image/e;->a:Lcom/facebook/common/references/a;

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/facebook/imagepipeline/image/e;->b:Lcom/facebook/common/internal/m;

    return-void
.end method

.method private L()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/e;->A()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/imageformat/d;->d(Ljava/io/InputStream;)Lcom/facebook/imageformat/c;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lcom/facebook/imagepipeline/image/e;->c:Lcom/facebook/imageformat/c;

    .line 3
    invoke-static {v0}, Lcom/facebook/imageformat/b;->c(Lcom/facebook/imageformat/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/facebook/imagepipeline/image/e;->l0()Landroid/util/Pair;

    move-result-object v1

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/facebook/imagepipeline/image/e;->h0()Lcom/facebook/imageutils/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imageutils/b;->b()Landroid/util/Pair;

    move-result-object v1

    .line 6
    :goto_0
    sget-object v2, Lcom/facebook/imageformat/b;->a:Lcom/facebook/imageformat/c;

    const/4 v3, -0x1

    if-ne v0, v2, :cond_1

    iget v2, p0, Lcom/facebook/imagepipeline/image/e;->d:I

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/e;->A()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/imageutils/c;->b(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/image/e;->e:I

    .line 8
    invoke-static {v0}, Lcom/facebook/imageutils/c;->a(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/image/e;->d:I

    goto :goto_1

    .line 9
    :cond_1
    sget-object v1, Lcom/facebook/imageformat/b;->k:Lcom/facebook/imageformat/c;

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/facebook/imagepipeline/image/e;->d:I

    if-ne v0, v3, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/e;->A()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/imageutils/HeifExifUtil;->a(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/image/e;->e:I

    .line 11
    invoke-static {v0}, Lcom/facebook/imageutils/c;->a(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/image/e;->d:I

    goto :goto_1

    .line 12
    :cond_2
    iget v0, p0, Lcom/facebook/imagepipeline/image/e;->d:I

    if-ne v0, v3, :cond_3

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/facebook/imagepipeline/image/e;->d:I

    :cond_3
    :goto_1
    return-void
.end method

.method public static W(Lcom/facebook/imagepipeline/image/e;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encodedImage"
        }
    .end annotation

    iget v0, p0, Lcom/facebook/imagepipeline/image/e;->d:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/facebook/imagepipeline/image/e;->f:I

    if-ltz v0, :cond_0

    iget p0, p0, Lcom/facebook/imagepipeline/image/e;->g:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Lcom/facebook/imagepipeline/image/e;)Lcom/facebook/imagepipeline/image/e;
    .locals 0
    .param p0    # Lcom/facebook/imagepipeline/image/e;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encodedImage"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/e;->a()Lcom/facebook/imagepipeline/image/e;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static b0(Lcom/facebook/imagepipeline/image/e;)Z
    .locals 0
    .param p0    # Lcom/facebook/imagepipeline/image/e;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encodedImage"
        }
    .end annotation

    .annotation build Lv1/d;
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/e;->X()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(Lcom/facebook/imagepipeline/image/e;)V
    .locals 0
    .param p0    # Lcom/facebook/imagepipeline/image/e;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encodedImage"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/e;->close()V

    :cond_0
    return-void
.end method

.method private g0()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/image/e;->f:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/facebook/imagepipeline/image/e;->g:I

    if-gez v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/e;->d0()V

    :cond_1
    return-void
.end method

.method private h0()Lcom/facebook/imageutils/b;
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/e;->A()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-static {v0}, Lcom/facebook/imageutils/a;->d(Ljava/io/InputStream;)Lcom/facebook/imageutils/b;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/facebook/imageutils/b;->a()Landroid/graphics/ColorSpace;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/imagepipeline/image/e;->k:Landroid/graphics/ColorSpace;

    .line 4
    invoke-virtual {v1}, Lcom/facebook/imageutils/b;->b()Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/facebook/imagepipeline/image/e;->f:I

    .line 6
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/facebook/imagepipeline/image/e;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    .line 7
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 8
    :catch_1
    :cond_2
    throw v1
.end method

.method private l0()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/e;->A()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/imageutils/f;->g(Ljava/io/InputStream;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/facebook/imagepipeline/image/e;->f:I

    .line 3
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/facebook/imagepipeline/image/e;->g:I

    :cond_0
    return-object v0
.end method

.method public static u0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useCachedMetadata"
        }
    .end annotation

    sput-boolean p0, Lcom/facebook/imagepipeline/image/e;->r:Z

    return-void
.end method


# virtual methods
.method public A()Ljava/io/InputStream;
    .locals 3
    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/e;->b:Lcom/facebook/common/internal/m;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/facebook/common/internal/m;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/e;->a:Lcom/facebook/common/references/a;

    .line 4
    invoke-static {v0}, Lcom/facebook/common/references/a;->h(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    :try_start_0
    new-instance v1, Lcom/facebook/common/memory/h;

    invoke-virtual {v0}, Lcom/facebook/common/references/a;->q()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/common/memory/PooledByteBuffer;

    invoke-direct {v1, v2}, Lcom/facebook/common/memory/h;-><init>(Lcom/facebook/common/memory/PooledByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {v0}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V

    .line 7
    throw v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public D()Ljava/io/InputStream;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/e;->A()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public E()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/image/e;->g0()V

    .line 2
    iget v0, p0, Lcom/facebook/imagepipeline/image/e;->d:I

    return v0
.end method

.method public G()I
    .locals 1

    iget v0, p0, Lcom/facebook/imagepipeline/image/e;->h:I

    return v0
.end method

.method public H()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/e;->a:Lcom/facebook/common/references/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/common/references/a;->q()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/e;->a:Lcom/facebook/common/references/a;

    invoke-virtual {v0}, Lcom/facebook/common/references/a;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/memory/PooledByteBuffer;

    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBuffer;->size()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget v0, p0, Lcom/facebook/imagepipeline/image/e;->i:I

    return v0
.end method

.method public declared-synchronized I()Lcom/facebook/common/references/SharedReference;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/SharedReference<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/e;->a:Lcom/facebook/common/references/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/facebook/common/references/a;->r()Lcom/facebook/common/references/SharedReference;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public J()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/image/e;->g0()V

    .line 2
    iget v0, p0, Lcom/facebook/imagepipeline/image/e;->f:I

    return v0
.end method

.method protected K()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/image/e;->l:Z

    return v0
.end method

.method public M(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "length"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/e;->c:Lcom/facebook/imageformat/c;

    sget-object v1, Lcom/facebook/imageformat/b;->a:Lcom/facebook/imageformat/c;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/facebook/imageformat/b;->l:Lcom/facebook/imageformat/c;

    if-eq v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/e;->b:Lcom/facebook/common/internal/m;

    if-eqz v0, :cond_1

    return v2

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/e;->a:Lcom/facebook/common/references/a;

    invoke-static {v0}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/e;->a:Lcom/facebook/common/references/a;

    invoke-virtual {v0}, Lcom/facebook/common/references/a;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/memory/PooledByteBuffer;

    add-int/lit8 v1, p1, -0x2

    .line 5
    invoke-interface {v0, v1}, Lcom/facebook/common/memory/PooledByteBuffer;->j(I)B

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    sub-int/2addr p1, v2

    .line 6
    invoke-interface {v0, p1}, Lcom/facebook/common/memory/PooledByteBuffer;->j(I)B

    move-result p1

    const/16 v0, -0x27

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public declared-synchronized X()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/e;->a:Lcom/facebook/common/references/a;

    invoke-static {v0}, Lcom/facebook/common/references/a;->A(Lcom/facebook/common/references/a;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/imagepipeline/image/e;->b:Lcom/facebook/common/internal/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()Lcom/facebook/imagepipeline/image/e;
    .locals 3
    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/e;->b:Lcom/facebook/common/internal/m;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/facebook/imagepipeline/image/e;

    iget v2, p0, Lcom/facebook/imagepipeline/image/e;->i:I

    invoke-direct {v1, v0, v2}, Lcom/facebook/imagepipeline/image/e;-><init>(Lcom/facebook/common/internal/m;I)V

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/e;->a:Lcom/facebook/common/references/a;

    .line 4
    invoke-static {v0}, Lcom/facebook/common/references/a;->h(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 5
    :cond_1
    :try_start_0
    new-instance v1, Lcom/facebook/imagepipeline/image/e;

    invoke-direct {v1, v0}, Lcom/facebook/imagepipeline/image/e;-><init>(Lcom/facebook/common/references/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    invoke-static {v0}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V

    :goto_1
    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1, p0}, Lcom/facebook/imagepipeline/image/e;->h(Lcom/facebook/imagepipeline/image/e;)V

    :cond_2
    return-object v1

    :catchall_0
    move-exception v1

    .line 8
    invoke-static {v0}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V

    .line 9
    throw v1
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/image/e;->a:Lcom/facebook/common/references/a;

    invoke-static {v0}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V

    return-void
.end method

.method public d0()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/facebook/imagepipeline/image/e;->r:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/facebook/imagepipeline/image/e;->L()V

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/image/e;->l:Z

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/image/e;->L()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/image/e;->l:Z

    return-void
.end method

.method public h(Lcom/facebook/imagepipeline/image/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encodedImage"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->y()Lcom/facebook/imageformat/c;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/image/e;->c:Lcom/facebook/imageformat/c;

    .line 2
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->J()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/image/e;->f:I

    .line 3
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->s()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/image/e;->g:I

    .line 4
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->E()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/image/e;->d:I

    .line 5
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->q()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/image/e;->e:I

    .line 6
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->G()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/image/e;->h:I

    .line 7
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->H()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/image/e;->i:I

    .line 8
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->k()Lcom/facebook/imagepipeline/common/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/image/e;->j:Lcom/facebook/imagepipeline/common/a;

    .line 9
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->p()Landroid/graphics/ColorSpace;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/image/e;->k:Landroid/graphics/ColorSpace;

    .line 10
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->K()Z

    move-result p1

    iput-boolean p1, p0, Lcom/facebook/imagepipeline/image/e;->l:Z

    return-void
.end method

.method public i()Lcom/facebook/common/references/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/image/e;->a:Lcom/facebook/common/references/a;

    invoke-static {v0}, Lcom/facebook/common/references/a;->h(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/facebook/imagepipeline/common/a;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/image/e;->j:Lcom/facebook/imagepipeline/common/a;

    return-object v0
.end method

.method public n0(Lcom/facebook/imagepipeline/common/a;)V
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/common/a;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytesRange"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/image/e;->j:Lcom/facebook/imagepipeline/common/a;

    return-void
.end method

.method public o0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exifOrientation"
        }
    .end annotation

    iput p1, p0, Lcom/facebook/imagepipeline/image/e;->e:I

    return-void
.end method

.method public p()Landroid/graphics/ColorSpace;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/image/e;->g0()V

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/e;->k:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public p0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    iput p1, p0, Lcom/facebook/imagepipeline/image/e;->g:I

    return-void
.end method

.method public q()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/image/e;->g0()V

    .line 2
    iget v0, p0, Lcom/facebook/imagepipeline/image/e;->e:I

    return v0
.end method

.method public q0(Lcom/facebook/imageformat/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageFormat"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/image/e;->c:Lcom/facebook/imageformat/c;

    return-void
.end method

.method public r(I)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "length"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/e;->i()Lcom/facebook/common/references/a;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/e;->H()I

    move-result v2

    .line 3
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 4
    new-array v2, p1, [B

    .line 5
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/common/references/a;->q()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/common/memory/PooledByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/facebook/common/references/a;->close()V

    return-object v1

    :cond_1
    const/4 v1, 0x0

    .line 7
    :try_start_1
    invoke-interface {v3, v1, v2, v1, p1}, Lcom/facebook/common/memory/PooledByteBuffer;->f(I[BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    invoke-virtual {v0}, Lcom/facebook/common/references/a;->close()V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, p1, 0x2

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_2

    .line 10
    aget-byte v4, v2, v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 11
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v5, v1

    const-string v4, "%02X"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 13
    invoke-virtual {v0}, Lcom/facebook/common/references/a;->close()V

    .line 14
    throw p1
.end method

.method public r0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotationAngle"
        }
    .end annotation

    iput p1, p0, Lcom/facebook/imagepipeline/image/e;->d:I

    return-void
.end method

.method public s()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/image/e;->g0()V

    .line 2
    iget v0, p0, Lcom/facebook/imagepipeline/image/e;->g:I

    return v0
.end method

.method public s0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sampleSize"
        }
    .end annotation

    iput p1, p0, Lcom/facebook/imagepipeline/image/e;->h:I

    return-void
.end method

.method public t0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streamSize"
        }
    .end annotation

    iput p1, p0, Lcom/facebook/imagepipeline/image/e;->i:I

    return-void
.end method

.method public v0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    iput p1, p0, Lcom/facebook/imagepipeline/image/e;->f:I

    return-void
.end method

.method public y()Lcom/facebook/imageformat/c;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/image/e;->g0()V

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/e;->c:Lcom/facebook/imageformat/c;

    return-object v0
.end method

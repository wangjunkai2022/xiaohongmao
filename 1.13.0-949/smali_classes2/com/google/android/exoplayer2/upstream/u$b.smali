.class public final Lcom/google/android/exoplayer2/upstream/u$b;
.super Ljava/lang/Object;
.source "DefaultHttpDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/HttpDataSource$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

.field private b:Lcom/google/android/exoplayer2/upstream/p0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Lcom/google/common/base/b0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/b0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/u$b;->a:Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

    const/16 v0, 0x1f40

    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/upstream/u$b;->e:I

    .line 4
    iput v0, p0, Lcom/google/android/exoplayer2/upstream/u$b;->f:I

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/android/exoplayer2/upstream/HttpDataSource;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/u$b;->d()Lcom/google/android/exoplayer2/upstream/u;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Lcom/google/android/exoplayer2/upstream/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/u$b;->d()Lcom/google/android/exoplayer2/upstream/u;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/u$b;->a:Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

    return-object v0
.end method

.method public bridge synthetic c(Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/u$b;->h(Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/u$b;

    move-result-object p1

    return-object p1
.end method

.method public d()Lcom/google/android/exoplayer2/upstream/u;
    .locals 9

    .line 1
    new-instance v8, Lcom/google/android/exoplayer2/upstream/u;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/u$b;->d:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/upstream/u$b;->e:I

    iget v3, p0, Lcom/google/android/exoplayer2/upstream/u$b;->f:I

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/upstream/u$b;->g:Z

    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/u$b;->a:Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/u$b;->c:Lcom/google/common/base/b0;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/u;-><init>(Ljava/lang/String;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$c;Lcom/google/common/base/b0;Lcom/google/android/exoplayer2/upstream/u$a;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/u$b;->b:Lcom/google/android/exoplayer2/upstream/p0;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v8, v0}, Lcom/google/android/exoplayer2/upstream/f;->e(Lcom/google/android/exoplayer2/upstream/p0;)V

    :cond_0
    return-object v8
.end method

.method public e(Z)Lcom/google/android/exoplayer2/upstream/u$b;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/u$b;->g:Z

    return-object p0
.end method

.method public f(I)Lcom/google/android/exoplayer2/upstream/u$b;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/upstream/u$b;->e:I

    return-object p0
.end method

.method public g(Lcom/google/common/base/b0;)Lcom/google/android/exoplayer2/upstream/u$b;
    .locals 0
    .param p1    # Lcom/google/common/base/b0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/b0<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/upstream/u$b;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/u$b;->c:Lcom/google/common/base/b0;

    return-object p0
.end method

.method public final h(Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/u$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/upstream/u$b;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/u$b;->a:Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;->b(Ljava/util/Map;)V

    return-object p0
.end method

.method public i(I)Lcom/google/android/exoplayer2/upstream/u$b;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/upstream/u$b;->f:I

    return-object p0
.end method

.method public j(Lcom/google/android/exoplayer2/upstream/p0;)Lcom/google/android/exoplayer2/upstream/u$b;
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/upstream/p0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/u$b;->b:Lcom/google/android/exoplayer2/upstream/p0;

    return-object p0
.end method

.method public k(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/u$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/u$b;->d:Ljava/lang/String;

    return-object p0
.end method

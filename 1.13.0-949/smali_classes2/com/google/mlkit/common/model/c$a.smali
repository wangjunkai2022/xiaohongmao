.class public Lcom/google/mlkit/common/model/c$a;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/common/model/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mlkit/common/model/c$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/mlkit/common/model/c$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/mlkit/common/model/c$a;->c:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/mlkit/common/model/c$a;->d:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/google/mlkit/common/model/c;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/common/model/c$a;->a:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/google/mlkit/common/model/c$a;->b:Ljava/lang/String;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/mlkit/common/model/c$a;->c:Landroid/net/Uri;

    if-eqz v3, :cond_3

    :cond_0
    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/google/mlkit/common/model/c$a;->b:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/mlkit/common/model/c$a;->c:Landroid/net/Uri;

    if-eqz v3, :cond_3

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/mlkit/common/model/c$a;->b:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/mlkit/common/model/c$a;->c:Landroid/net/Uri;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    const-string v0, "Set one of filePath, assetFilePath and URI."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/u;->b(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/mlkit/common/model/c;

    iget-object v3, p0, Lcom/google/mlkit/common/model/c$a;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/mlkit/common/model/c$a;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/mlkit/common/model/c$a;->c:Landroid/net/Uri;

    iget-boolean v6, p0, Lcom/google/mlkit/common/model/c$a;->d:Z

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/mlkit/common/model/c;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZLcom/google/mlkit/common/model/i;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/google/mlkit/common/model/c$a;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "Model Source file path can not be empty"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/u;->h(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/mlkit/common/model/c$a;->b:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/mlkit/common/model/c$a;->c:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/mlkit/common/model/c$a;->d:Z

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v0, "A local model source is from absolute file path, asset file path or URI, you can only set one of them."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/u;->b(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/mlkit/common/model/c$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/google/mlkit/common/model/c$a;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "Manifest file path can not be empty"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/u;->h(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/mlkit/common/model/c$a;->b:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/mlkit/common/model/c$a;->c:Landroid/net/Uri;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/mlkit/common/model/c$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/mlkit/common/model/c$a;->d:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    const-string v0, "A local model source is from absolute file path, asset file path or URI, you can only set one of them."

    .line 2
    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/u;->b(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/mlkit/common/model/c$a;->a:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/mlkit/common/model/c$a;->d:Z

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/google/mlkit/common/model/c$a;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "Model Source file path can not be empty"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/u;->h(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/mlkit/common/model/c$a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/mlkit/common/model/c$a;->c:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/mlkit/common/model/c$a;->d:Z

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v0, "A local model source is from absolute file path, asset file path or URI, you can only set one of them."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/u;->b(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/mlkit/common/model/c$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/google/mlkit/common/model/c$a;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "Manifest file path can not be empty"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/u;->h(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/mlkit/common/model/c$a;->a:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/mlkit/common/model/c$a;->c:Landroid/net/Uri;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/mlkit/common/model/c$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/mlkit/common/model/c$a;->d:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    const-string v0, "A local model source is from absolute file path, asset file path or URI, you can only set one of them."

    .line 2
    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/u;->b(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/mlkit/common/model/c$a;->b:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/mlkit/common/model/c$a;->d:Z

    return-object p0
.end method

.method public f(Landroid/net/Uri;)Lcom/google/mlkit/common/model/c$a;
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/common/model/c$a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/mlkit/common/model/c$a;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v0, "A local model source is from absolute file path, asset file path or URI, you can only set one of them."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/u;->b(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/mlkit/common/model/c$a;->c:Landroid/net/Uri;

    return-object p0
.end method

.class public final Lcom/google/mlkit/nl/languageid/internal/i;
.super Lcom/google/mlkit/common/sdkinternal/n;
.source "com.google.mlkit:language-id-common@@16.0.0"


# instance fields
.field private d:Lcom/google/mlkit/nl/languageid/internal/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Lcom/google/mlkit/nl/languageid/b;

.field private final f:Landroid/content/Context;

.field private final g:Lcom/google/mlkit/nl/languageid/internal/a;

.field private final h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/mlkit/nl/languageid/internal/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/n;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/nl/languageid/internal/i;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/mlkit/nl/languageid/internal/i;->g:Lcom/google/mlkit/nl/languageid/internal/a;

    .line 2
    invoke-interface {p2}, Lcom/google/mlkit/nl/languageid/internal/a;->getPriority()I

    move-result p1

    const/16 p2, 0x64

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/mlkit/nl/languageid/internal/i;->h:Z

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/n;->a:Lcom/google/mlkit/common/sdkinternal/q;

    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/q;->a()V

    iget-object v0, p0, Lcom/google/mlkit/nl/languageid/internal/i;->d:Lcom/google/mlkit/nl/languageid/internal/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/mlkit/nl/languageid/internal/i;->g:Lcom/google/mlkit/nl/languageid/internal/a;

    iget-object v1, p0, Lcom/google/mlkit/nl/languageid/internal/i;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/mlkit/nl/languageid/internal/i;->e:Lcom/google/mlkit/nl/languageid/b;

    .line 2
    invoke-interface {v0, v1, v2}, Lcom/google/mlkit/nl/languageid/internal/a;->a(Landroid/content/Context;Lcom/google/mlkit/nl/languageid/b;)Lcom/google/mlkit/nl/languageid/internal/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mlkit/nl/languageid/internal/i;->d:Lcom/google/mlkit/nl/languageid/internal/b;

    .line 3
    invoke-interface {v0}, Lcom/google/mlkit/nl/languageid/internal/b;->b()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/n;->a:Lcom/google/mlkit/common/sdkinternal/q;

    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/q;->a()V

    iget-object v0, p0, Lcom/google/mlkit/nl/languageid/internal/i;->d:Lcom/google/mlkit/nl/languageid/internal/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/mlkit/nl/languageid/internal/b;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mlkit/nl/languageid/internal/i;->d:Lcom/google/mlkit/nl/languageid/internal/b;

    :cond_0
    return-void
.end method

.method public final j(Ljava/lang/String;F)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/nl/languageid/internal/i;->d:Lcom/google/mlkit/nl/languageid/internal/b;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/mlkit/nl/languageid/internal/i;->c()V

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "und"

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/google/mlkit/nl/languageid/internal/i;->d:Lcom/google/mlkit/nl/languageid/internal/b;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/nl/languageid/internal/b;

    invoke-interface {v0, p1, p2}, Lcom/google/mlkit/nl/languageid/internal/b;->a(Ljava/lang/String;F)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;

    .line 5
    invoke-virtual {p2}, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "unknown"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-virtual {p2}, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->b()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, ""

    .line 7
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    return-object v1

    :cond_4
    const-string p2, "iw"

    .line 8
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p1, "he"

    :cond_5
    return-object p1
.end method

.method public final k(Ljava/lang/String;F)Ljava/util/List;
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/nl/languageid/internal/i;->d:Lcom/google/mlkit/nl/languageid/internal/b;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/mlkit/nl/languageid/internal/i;->c()V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const-string v3, "und"

    if-eqz v1, :cond_1

    new-instance p1, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;

    invoke-direct {p1, v3, v2}, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;-><init>(Ljava/lang/String;F)V

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/mlkit/nl/languageid/internal/i;->d:Lcom/google/mlkit/nl/languageid/internal/b;

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/nl/languageid/internal/b;

    invoke-interface {v1, p1, p2}, Lcom/google/mlkit/nl/languageid/internal/b;->a(Ljava/lang/String;F)Ljava/util/List;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;

    .line 7
    invoke-virtual {p2}, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->b()Ljava/lang/String;

    move-result-object v1

    const-string v4, "unknown"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;

    .line 8
    invoke-virtual {p2}, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "iw"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "he"

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p2}, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->b()Ljava/lang/String;

    move-result-object v4

    .line 10
    :goto_1
    invoke-virtual {p2}, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->a()F

    move-result p2

    invoke-direct {v1, v4, p2}, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;-><init>(Ljava/lang/String;F)V

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;

    invoke-direct {p1, v3, v2}, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;-><init>(Ljava/lang/String;F)V

    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method final l(Lcom/google/mlkit/nl/languageid/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/mlkit/nl/languageid/internal/i;->e:Lcom/google/mlkit/nl/languageid/b;

    return-void
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/mlkit/nl/languageid/internal/i;->h:Z

    return v0
.end method

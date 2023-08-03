.class final Lcom/google/android/play/core/splitinstall/z0;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/splitinstall/c;


# instance fields
.field private final a:Lcom/google/android/play/core/internal/n1;

.field private final b:Lcom/google/android/play/core/internal/n1;

.field private final c:Lcom/google/android/play/core/internal/n1;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/internal/n1;Lcom/google/android/play/core/internal/n1;Lcom/google/android/play/core/internal/n1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/z0;->a:Lcom/google/android/play/core/internal/n1;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/z0;->b:Lcom/google/android/play/core/internal/n1;

    iput-object p3, p0, Lcom/google/android/play/core/splitinstall/z0;->c:Lcom/google/android/play/core/internal/n1;

    return-void
.end method

.method private final q()Lcom/google/android/play/core/splitinstall/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/z0;->c:Lcom/google/android/play/core/internal/n1;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/n1;->zza()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/z0;->a:Lcom/google/android/play/core/internal/n1;

    .line 2
    invoke-interface {v0}, Lcom/google/android/play/core/internal/n1;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/splitinstall/c;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/z0;->b:Lcom/google/android/play/core/internal/n1;

    .line 3
    invoke-interface {v0}, Lcom/google/android/play/core/internal/n1;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/splitinstall/c;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/play/core/splitinstall/f;Landroid/app/Activity;I)Z
    .locals 1
    .param p1    # Lcom/google/android/play/core/splitinstall/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/z0;->q()Lcom/google/android/play/core/splitinstall/c;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/play/core/splitinstall/c;->a(Lcom/google/android/play/core/splitinstall/f;Landroid/app/Activity;I)Z

    move-result p1

    return p1
.end method

.method public final b(Ljava/util/List;)Lcom/google/android/play/core/tasks/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;)",
            "Lcom/google/android/play/core/tasks/d<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/z0;->q()Lcom/google/android/play/core/splitinstall/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/play/core/splitinstall/c;->b(Ljava/util/List;)Lcom/google/android/play/core/tasks/d;

    move-result-object p1

    return-object p1
.end method

.method public final c(I)Lcom/google/android/play/core/tasks/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/play/core/tasks/d<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/z0;->q()Lcom/google/android/play/core/splitinstall/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/play/core/splitinstall/c;->c(I)Lcom/google/android/play/core/tasks/d;

    move-result-object p1

    return-object p1
.end method

.method public final d()Lcom/google/android/play/core/tasks/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/play/core/tasks/d<",
            "Ljava/util/List<",
            "Lcom/google/android/play/core/splitinstall/f;",
            ">;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/z0;->q()Lcom/google/android/play/core/splitinstall/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/play/core/splitinstall/c;->d()Lcom/google/android/play/core/tasks/d;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/util/List;)Lcom/google/android/play/core/tasks/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;)",
            "Lcom/google/android/play/core/tasks/d<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/z0;->q()Lcom/google/android/play/core/splitinstall/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/play/core/splitinstall/c;->e(Ljava/util/List;)Lcom/google/android/play/core/tasks/d;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lcom/google/android/play/core/splitinstall/f;Lcom/google/android/play/core/common/a;I)Z
    .locals 1
    .param p1    # Lcom/google/android/play/core/splitinstall/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/play/core/common/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/z0;->q()Lcom/google/android/play/core/splitinstall/c;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/play/core/splitinstall/c;->f(Lcom/google/android/play/core/splitinstall/f;Lcom/google/android/play/core/common/a;I)Z

    move-result p1

    return p1
.end method

.method public final g(Lcom/google/android/play/core/splitinstall/e;)Lcom/google/android/play/core/tasks/d;
    .locals 1
    .param p1    # Lcom/google/android/play/core/splitinstall/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/splitinstall/e;",
            ")",
            "Lcom/google/android/play/core/tasks/d<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/z0;->q()Lcom/google/android/play/core/splitinstall/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/play/core/splitinstall/c;->g(Lcom/google/android/play/core/splitinstall/e;)Lcom/google/android/play/core/tasks/d;

    move-result-object p1

    return-object p1
.end method

.method public final h(Ljava/util/List;)Lcom/google/android/play/core/tasks/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/play/core/tasks/d<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/z0;->q()Lcom/google/android/play/core/splitinstall/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/play/core/splitinstall/c;->h(Ljava/util/List;)Lcom/google/android/play/core/tasks/d;

    move-result-object p1

    return-object p1
.end method

.method public final i(I)Lcom/google/android/play/core/tasks/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/play/core/tasks/d<",
            "Lcom/google/android/play/core/splitinstall/f;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/z0;->q()Lcom/google/android/play/core/splitinstall/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/play/core/splitinstall/c;->i(I)Lcom/google/android/play/core/tasks/d;

    move-result-object p1

    return-object p1
.end method

.method public final j()Ljava/util/Set;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/z0;->q()Lcom/google/android/play/core/splitinstall/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/play/core/splitinstall/c;->j()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final k(Lcom/google/android/play/core/splitinstall/g;)V
    .locals 1
    .param p1    # Lcom/google/android/play/core/splitinstall/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/z0;->q()Lcom/google/android/play/core/splitinstall/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/play/core/splitinstall/c;->k(Lcom/google/android/play/core/splitinstall/g;)V

    return-void
.end method

.method public final l(Ljava/util/List;)Lcom/google/android/play/core/tasks/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/play/core/tasks/d<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/z0;->q()Lcom/google/android/play/core/splitinstall/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/play/core/splitinstall/c;->l(Ljava/util/List;)Lcom/google/android/play/core/tasks/d;

    move-result-object p1

    return-object p1
.end method

.method public final m(Lcom/google/android/play/core/splitinstall/g;)V
    .locals 1
    .param p1    # Lcom/google/android/play/core/splitinstall/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/z0;->q()Lcom/google/android/play/core/splitinstall/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/play/core/splitinstall/c;->m(Lcom/google/android/play/core/splitinstall/g;)V

    return-void
.end method

.method public final n(Lcom/google/android/play/core/splitinstall/g;)V
    .locals 1
    .param p1    # Lcom/google/android/play/core/splitinstall/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/z0;->q()Lcom/google/android/play/core/splitinstall/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/play/core/splitinstall/c;->n(Lcom/google/android/play/core/splitinstall/g;)V

    return-void
.end method

.method public final o(Lcom/google/android/play/core/splitinstall/g;)V
    .locals 1
    .param p1    # Lcom/google/android/play/core/splitinstall/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/z0;->q()Lcom/google/android/play/core/splitinstall/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/play/core/splitinstall/c;->o(Lcom/google/android/play/core/splitinstall/g;)V

    return-void
.end method

.method public final p()Ljava/util/Set;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/z0;->q()Lcom/google/android/play/core/splitinstall/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/play/core/splitinstall/c;->p()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

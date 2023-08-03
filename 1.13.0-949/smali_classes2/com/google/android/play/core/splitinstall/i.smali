.class final Lcom/google/android/play/core/splitinstall/i;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/splitinstall/c;


# instance fields
.field private final a:Lcom/google/android/play/core/splitinstall/l0;

.field private final b:Lcom/google/android/play/core/splitinstall/k1;

.field private final c:Lcom/google/android/play/core/splitinstall/f1;

.field private final d:Lcom/google/android/play/core/splitinstall/n0;

.field private final e:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/l0;Lcom/google/android/play/core/splitinstall/k1;Lcom/google/android/play/core/splitinstall/f1;Lcom/google/android/play/core/splitinstall/n0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/play/core/splitinstall/i;->e:Landroid/os/Handler;

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/i;->a:Lcom/google/android/play/core/splitinstall/l0;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/i;->b:Lcom/google/android/play/core/splitinstall/k1;

    iput-object p3, p0, Lcom/google/android/play/core/splitinstall/i;->c:Lcom/google/android/play/core/splitinstall/f1;

    iput-object p4, p0, Lcom/google/android/play/core/splitinstall/i;->d:Lcom/google/android/play/core/splitinstall/n0;

    return-void
.end method

.method static bridge synthetic q(Lcom/google/android/play/core/splitinstall/i;)Lcom/google/android/play/core/splitinstall/k1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/i;->b:Lcom/google/android/play/core/splitinstall/k1;

    return-object p0
.end method

.method static bridge synthetic r(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/google/android/play/core/splitinstall/i;->s(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static s(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    .line 3
    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/play/core/splitinstall/f;Landroid/app/Activity;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/play/core/splitinstall/m1;

    invoke-direct {v0, p0, p2}, Lcom/google/android/play/core/splitinstall/m1;-><init>(Lcom/google/android/play/core/splitinstall/i;Landroid/app/Activity;)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/google/android/play/core/splitinstall/i;->f(Lcom/google/android/play/core/splitinstall/f;Lcom/google/android/play/core/common/a;I)Z

    move-result p1

    return p1
.end method

.method public final b(Ljava/util/List;)Lcom/google/android/play/core/tasks/d;
    .locals 1
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

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/i;->a:Lcom/google/android/play/core/splitinstall/l0;

    .line 2
    invoke-static {p1}, Lcom/google/android/play/core/splitinstall/i;->s(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/splitinstall/l0;->e(Ljava/util/List;)Lcom/google/android/play/core/tasks/d;

    move-result-object p1

    return-object p1
.end method

.method public final c(I)Lcom/google/android/play/core/tasks/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/play/core/tasks/d<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/i;->a:Lcom/google/android/play/core/splitinstall/l0;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/splitinstall/l0;->c(I)Lcom/google/android/play/core/tasks/d;

    move-result-object p1

    return-object p1
.end method

.method public final d()Lcom/google/android/play/core/tasks/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/play/core/tasks/d<",
            "Ljava/util/List<",
            "Lcom/google/android/play/core/splitinstall/f;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/i;->a:Lcom/google/android/play/core/splitinstall/l0;

    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/l0;->i()Lcom/google/android/play/core/tasks/d;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/util/List;)Lcom/google/android/play/core/tasks/d;
    .locals 1
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

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/i;->a:Lcom/google/android/play/core/splitinstall/l0;

    .line 2
    invoke-static {p1}, Lcom/google/android/play/core/splitinstall/i;->s(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/splitinstall/l0;->f(Ljava/util/List;)Lcom/google/android/play/core/tasks/d;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lcom/google/android/play/core/splitinstall/f;Lcom/google/android/play/core/common/a;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/f;->i()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/f;->g()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/f;->g()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    move v2, p3

    .line 4
    invoke-interface/range {v0 .. v7}, Lcom/google/android/play/core/common/a;->a(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final g(Lcom/google/android/play/core/splitinstall/e;)Lcom/google/android/play/core/tasks/d;
    .locals 4
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

    .line 1
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/e;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/e;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/i;->c:Lcom/google/android/play/core/splitinstall/f1;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/f1;->d()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    .line 5
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    .line 7
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/e;->b()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/i;->c:Lcom/google/android/play/core/splitinstall/f1;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/f1;->c()Ljava/util/Set;

    move-result-object v1

    .line 11
    invoke-interface {v1, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/e;->b()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/i;->d:Lcom/google/android/play/core/splitinstall/n0;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/n0;->a()Ljava/util/Set;

    move-result-object v1

    .line 14
    invoke-static {v0, v1}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/i;->e:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/play/core/splitinstall/l1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/play/core/splitinstall/l1;-><init>(Lcom/google/android/play/core/splitinstall/i;Lcom/google/android/play/core/splitinstall/e;)V

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/play/core/tasks/f;->e(Ljava/lang/Object;)Lcom/google/android/play/core/tasks/d;

    move-result-object p1

    return-object p1

    .line 18
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/i;->d:Lcom/google/android/play/core/splitinstall/n0;

    .line 19
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/e;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/splitinstall/n0;->d(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/i;->a:Lcom/google/android/play/core/splitinstall/l0;

    .line 20
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/e;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/e;->a()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/play/core/splitinstall/i;->s(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 21
    invoke-virtual {v0, v1, p1}, Lcom/google/android/play/core/splitinstall/l0;->j(Ljava/util/Collection;Ljava/util/Collection;)Lcom/google/android/play/core/tasks/d;

    move-result-object p1

    return-object p1
.end method

.method public final h(Ljava/util/List;)Lcom/google/android/play/core/tasks/d;
    .locals 1
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

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/i;->d:Lcom/google/android/play/core/splitinstall/n0;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/splitinstall/n0;->c(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/i;->a:Lcom/google/android/play/core/splitinstall/l0;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/play/core/splitinstall/l0;->g(Ljava/util/List;)Lcom/google/android/play/core/tasks/d;

    move-result-object p1

    return-object p1
.end method

.method public final i(I)Lcom/google/android/play/core/tasks/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/play/core/tasks/d<",
            "Lcom/google/android/play/core/splitinstall/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/i;->a:Lcom/google/android/play/core/splitinstall/l0;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/splitinstall/l0;->h(I)Lcom/google/android/play/core/tasks/d;

    move-result-object p1

    return-object p1
.end method

.method public final j()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/i;->c:Lcom/google/android/play/core/splitinstall/f1;

    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/f1;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized k(Lcom/google/android/play/core/splitinstall/g;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/i;->b:Lcom/google/android/play/core/splitinstall/k1;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/splitinstall/k1;->l(Lcom/google/android/play/core/splitinstall/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final l(Ljava/util/List;)Lcom/google/android/play/core/tasks/d;
    .locals 1
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

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/i;->a:Lcom/google/android/play/core/splitinstall/l0;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/splitinstall/l0;->d(Ljava/util/List;)Lcom/google/android/play/core/tasks/d;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized m(Lcom/google/android/play/core/splitinstall/g;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/i;->b:Lcom/google/android/play/core/splitinstall/k1;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/splitinstall/k1;->m(Lcom/google/android/play/core/splitinstall/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized n(Lcom/google/android/play/core/splitinstall/g;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/i;->b:Lcom/google/android/play/core/splitinstall/k1;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/listener/d;->f(Lcom/google/android/play/core/listener/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized o(Lcom/google/android/play/core/splitinstall/g;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/i;->b:Lcom/google/android/play/core/splitinstall/k1;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/listener/d;->d(Lcom/google/android/play/core/listener/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final p()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/i;->c:Lcom/google/android/play/core/splitinstall/f1;

    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/f1;->d()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :cond_0
    return-object v0
.end method

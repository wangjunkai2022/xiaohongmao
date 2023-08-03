.class public final Lcom/google/android/gms/common/api/internal/z2;
.super Lcom/google/android/gms/signin/internal/c;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/common/api/i$b;
.implements Lcom/google/android/gms/common/api/i$c;


# static fields
.field private static final j:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "+",
            "Lcom/google/android/gms/signin/f;",
            "Lcom/google/android/gms/signin/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Landroid/os/Handler;

.field private final e:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "+",
            "Lcom/google/android/gms/signin/f;",
            "Lcom/google/android/gms/signin/a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/common/internal/f;

.field private h:Lcom/google/android/gms/signin/f;

.field private i:Lcom/google/android/gms/common/api/internal/y2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/signin/e;->c:Lcom/google/android/gms/common/api/a$a;

    sput-object v0, Lcom/google/android/gms/common/api/internal/z2;->j:Lcom/google/android/gms/common/api/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/f;)V
    .locals 1
    .param p3    # Lcom/google/android/gms/common/internal/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/common/api/internal/z2;->j:Lcom/google/android/gms/common/api/a$a;

    invoke-direct {p0}, Lcom/google/android/gms/signin/internal/c;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/z2;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/z2;->d:Landroid/os/Handler;

    const-string p1, "ClientSettings must not be null"

    .line 2
    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/f;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/z2;->g:Lcom/google/android/gms/common/internal/f;

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/f;->i()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/z2;->f:Ljava/util/Set;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/z2;->e:Lcom/google/android/gms/common/api/a$a;

    return-void
.end method

.method static bridge synthetic K1(Lcom/google/android/gms/common/api/internal/z2;)Lcom/google/android/gms/common/api/internal/y2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/z2;->i:Lcom/google/android/gms/common/api/internal/y2;

    return-object p0
.end method

.method static bridge synthetic L1(Lcom/google/android/gms/common/api/internal/z2;Lcom/google/android/gms/signin/internal/zak;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/zak;->zaa()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/zak;->zab()Lcom/google/android/gms/common/internal/zav;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/zav;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zav;->zaa()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "SignInCoordinator"

    invoke-static {v2, p1, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/z2;->i:Lcom/google/android/gms/common/api/internal/y2;

    .line 7
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/y2;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/z2;->h:Lcom/google/android/gms/signin/f;

    .line 8
    invoke-interface {p0}, Lcom/google/android/gms/common/api/a$f;->c()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/z2;->i:Lcom/google/android/gms/common/api/internal/y2;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zav;->zab()Lcom/google/android/gms/common/internal/m;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/z2;->f:Ljava/util/Set;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/y2;->b(Lcom/google/android/gms/common/internal/m;Ljava/util/Set;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/z2;->i:Lcom/google/android/gms/common/api/internal/y2;

    .line 11
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/y2;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 12
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/z2;->h:Lcom/google/android/gms/signin/f;

    .line 13
    invoke-interface {p0}, Lcom/google/android/gms/common/api/a$f;->c()V

    return-void
.end method


# virtual methods
.method public final M1(Lcom/google/android/gms/common/api/internal/y2;)V
    .locals 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/z2;->h:Lcom/google/android/gms/signin/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->c()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/z2;->g:Lcom/google/android/gms/common/internal/f;

    .line 2
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/f;->o(Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/z2;->e:Lcom/google/android/gms/common/api/a$a;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/z2;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/z2;->d:Landroid/os/Handler;

    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/z2;->g:Lcom/google/android/gms/common/internal/f;

    .line 4
    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/f;->k()Lcom/google/android/gms/signin/a;

    move-result-object v6

    move-object v7, p0

    move-object v8, p0

    .line 5
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/common/api/a$a;->c(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/f;Ljava/lang/Object;Lcom/google/android/gms/common/api/i$b;Lcom/google/android/gms/common/api/i$c;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/z2;->h:Lcom/google/android/gms/signin/f;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/z2;->i:Lcom/google/android/gms/common/api/internal/y2;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/z2;->f:Ljava/util/Set;

    if-eqz p1, :cond_2

    .line 6
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/z2;->h:Lcom/google/android/gms/signin/f;

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/signin/f;->zab()V

    return-void

    .line 9
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/z2;->d:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/common/api/internal/w2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/w2;-><init>(Lcom/google/android/gms/common/api/internal/z2;)V

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final N1()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/z2;->h:Lcom/google/android/gms/signin/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->c()V

    :cond_0
    return-void
.end method

.method public final O(Lcom/google/android/gms/signin/internal/zak;)V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/z2;->d:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/common/api/internal/x2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/x2;-><init>(Lcom/google/android/gms/common/api/internal/z2;Lcom/google/android/gms/signin/internal/zak;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final s(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/z2;->h:Lcom/google/android/gms/signin/f;

    invoke-interface {p1, p0}, Lcom/google/android/gms/signin/f;->q(Lcom/google/android/gms/signin/internal/e;)V

    return-void
.end method

.method public final x(I)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/z2;->h:Lcom/google/android/gms/signin/f;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/a$f;->c()V

    return-void
.end method

.method public final z(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/z2;->i:Lcom/google/android/gms/common/api/internal/y2;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/y2;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

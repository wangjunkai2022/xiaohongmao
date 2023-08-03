.class public final Lio/reactivex/rxjava3/schedulers/b;
.super Ljava/lang/Object;
.source "Schedulers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/schedulers/b$b;,
        Lio/reactivex/rxjava3/schedulers/b$h;,
        Lio/reactivex/rxjava3/schedulers/b$f;,
        Lio/reactivex/rxjava3/schedulers/b$c;,
        Lio/reactivex/rxjava3/schedulers/b$e;,
        Lio/reactivex/rxjava3/schedulers/b$d;,
        Lio/reactivex/rxjava3/schedulers/b$a;,
        Lio/reactivex/rxjava3/schedulers/b$g;
    }
.end annotation


# static fields
.field static final a:Lio/reactivex/rxjava3/core/o0;
    .annotation build Lp7/e;
    .end annotation
.end field

.field static final b:Lio/reactivex/rxjava3/core/o0;
    .annotation build Lp7/e;
    .end annotation
.end field

.field static final c:Lio/reactivex/rxjava3/core/o0;
    .annotation build Lp7/e;
    .end annotation
.end field

.field static final d:Lio/reactivex/rxjava3/core/o0;
    .annotation build Lp7/e;
    .end annotation
.end field

.field static final e:Lio/reactivex/rxjava3/core/o0;
    .annotation build Lp7/e;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/schedulers/b$h;

    invoke-direct {v0}, Lio/reactivex/rxjava3/schedulers/b$h;-><init>()V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->J(Lq7/s;)Lio/reactivex/rxjava3/core/o0;

    move-result-object v0

    sput-object v0, Lio/reactivex/rxjava3/schedulers/b;->a:Lio/reactivex/rxjava3/core/o0;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/schedulers/b$b;

    invoke-direct {v0}, Lio/reactivex/rxjava3/schedulers/b$b;-><init>()V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->G(Lq7/s;)Lio/reactivex/rxjava3/core/o0;

    move-result-object v0

    sput-object v0, Lio/reactivex/rxjava3/schedulers/b;->b:Lio/reactivex/rxjava3/core/o0;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/schedulers/b$c;

    invoke-direct {v0}, Lio/reactivex/rxjava3/schedulers/b$c;-><init>()V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->H(Lq7/s;)Lio/reactivex/rxjava3/core/o0;

    move-result-object v0

    sput-object v0, Lio/reactivex/rxjava3/schedulers/b;->c:Lio/reactivex/rxjava3/core/o0;

    .line 4
    invoke-static {}, Lio/reactivex/rxjava3/internal/schedulers/o;->l()Lio/reactivex/rxjava3/internal/schedulers/o;

    move-result-object v0

    sput-object v0, Lio/reactivex/rxjava3/schedulers/b;->d:Lio/reactivex/rxjava3/core/o0;

    .line 5
    new-instance v0, Lio/reactivex/rxjava3/schedulers/b$f;

    invoke-direct {v0}, Lio/reactivex/rxjava3/schedulers/b$f;-><init>()V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->I(Lq7/s;)Lio/reactivex/rxjava3/core/o0;

    move-result-object v0

    sput-object v0, Lio/reactivex/rxjava3/schedulers/b;->e:Lio/reactivex/rxjava3/core/o0;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a()Lio/reactivex/rxjava3/core/o0;
    .locals 1
    .annotation build Lp7/e;
    .end annotation

    sget-object v0, Lio/reactivex/rxjava3/schedulers/b;->b:Lio/reactivex/rxjava3/core/o0;

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->X(Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/o0;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/util/concurrent/Executor;)Lio/reactivex/rxjava3/core/o0;
    .locals 2
    .param p0    # Ljava/util/concurrent/Executor;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "executor"
        }
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lio/reactivex/rxjava3/internal/schedulers/d;-><init>(Ljava/util/concurrent/Executor;ZZ)V

    return-object v0
.end method

.method public static c(Ljava/util/concurrent/Executor;Z)Lio/reactivex/rxjava3/core/o0;
    .locals 2
    .param p0    # Ljava/util/concurrent/Executor;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "executor",
            "interruptibleWorker"
        }
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/rxjava3/internal/schedulers/d;-><init>(Ljava/util/concurrent/Executor;ZZ)V

    return-object v0
.end method

.method public static d(Ljava/util/concurrent/Executor;ZZ)Lio/reactivex/rxjava3/core/o0;
    .locals 1
    .param p0    # Ljava/util/concurrent/Executor;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "executor",
            "interruptibleWorker",
            "fair"
        }
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/d;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/schedulers/d;-><init>(Ljava/util/concurrent/Executor;ZZ)V

    return-object v0
.end method

.method public static e()Lio/reactivex/rxjava3/core/o0;
    .locals 1
    .annotation build Lp7/e;
    .end annotation

    sget-object v0, Lio/reactivex/rxjava3/schedulers/b;->c:Lio/reactivex/rxjava3/core/o0;

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Z(Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/o0;

    move-result-object v0

    return-object v0
.end method

.method public static f()Lio/reactivex/rxjava3/core/o0;
    .locals 1
    .annotation build Lp7/e;
    .end annotation

    sget-object v0, Lio/reactivex/rxjava3/schedulers/b;->e:Lio/reactivex/rxjava3/core/o0;

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->a0(Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/o0;

    move-result-object v0

    return-object v0
.end method

.method public static g()V
    .locals 1

    .line 1
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->a()Lio/reactivex/rxjava3/core/o0;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/o0;->i()V

    .line 2
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->e()Lio/reactivex/rxjava3/core/o0;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/o0;->i()V

    .line 3
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->f()Lio/reactivex/rxjava3/core/o0;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/o0;->i()V

    .line 4
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->h()Lio/reactivex/rxjava3/core/o0;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/o0;->i()V

    .line 5
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->j()Lio/reactivex/rxjava3/core/o0;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/o0;->i()V

    .line 6
    invoke-static {}, Lio/reactivex/rxjava3/internal/schedulers/l;->d()V

    return-void
.end method

.method public static h()Lio/reactivex/rxjava3/core/o0;
    .locals 1
    .annotation build Lp7/e;
    .end annotation

    sget-object v0, Lio/reactivex/rxjava3/schedulers/b;->a:Lio/reactivex/rxjava3/core/o0;

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->c0(Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/o0;

    move-result-object v0

    return-object v0
.end method

.method public static i()V
    .locals 1

    .line 1
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->a()Lio/reactivex/rxjava3/core/o0;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/o0;->j()V

    .line 2
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->e()Lio/reactivex/rxjava3/core/o0;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/o0;->j()V

    .line 3
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->f()Lio/reactivex/rxjava3/core/o0;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/o0;->j()V

    .line 4
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->h()Lio/reactivex/rxjava3/core/o0;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/o0;->j()V

    .line 5
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->j()Lio/reactivex/rxjava3/core/o0;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/o0;->j()V

    .line 6
    invoke-static {}, Lio/reactivex/rxjava3/internal/schedulers/l;->e()V

    return-void
.end method

.method public static j()Lio/reactivex/rxjava3/core/o0;
    .locals 1
    .annotation build Lp7/e;
    .end annotation

    sget-object v0, Lio/reactivex/rxjava3/schedulers/b;->d:Lio/reactivex/rxjava3/core/o0;

    return-object v0
.end method

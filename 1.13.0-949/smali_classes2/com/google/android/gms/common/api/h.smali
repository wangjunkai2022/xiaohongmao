.class public abstract Lcom/google/android/gms/common/api/h;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/common/api/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/a$d;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/j<",
        "TO;>;"
    }
.end annotation

.annotation build Lu2/a;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/common/api/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/common/api/internal/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/c<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final f:Landroid/os/Looper;

.field private final g:I

.field private final h:Lcom/google/android/gms/common/api/i;
    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field

.field private final i:Lcom/google/android/gms/common/api/internal/y;

.field protected final j:Lcom/google/android/gms/common/api/internal/i;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/h$a;)V
    .locals 6
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/common/api/a$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/common/api/h$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;TO;",
            "Lcom/google/android/gms/common/api/h$a;",
            ")V"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/api/h;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/h$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/internal/y;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/common/api/a$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/common/api/internal/y;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;TO;",
            "Lcom/google/android/gms/common/api/internal/y;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/common/api/h$a$a;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/h$a$a;-><init>()V

    invoke-virtual {v0, p4}, Lcom/google/android/gms/common/api/h$a$a;->c(Lcom/google/android/gms/common/api/internal/y;)Lcom/google/android/gms/common/api/h$a$a;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/google/android/gms/common/api/h$a$a;->b(Landroid/os/Looper;)Lcom/google/android/gms/common/api/h$a$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/h$a$a;->a()Lcom/google/android/gms/common/api/h$a;

    move-result-object p4

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/h;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/h$a;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/h$a;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;TO;",
            "Lcom/google/android/gms/common/api/h$a;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    .line 5
    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    .line 6
    invoke-static {p5, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/h;->a:Landroid/content/Context;

    .line 8
    invoke-static {}, Ly2/v;->q()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    const-class v0, Landroid/content/Context;

    const-string v2, "getAttributionTag"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 9
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    .line 10
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/common/api/h;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/common/api/h;->c:Lcom/google/android/gms/common/api/a;

    iput-object p4, p0, Lcom/google/android/gms/common/api/h;->d:Lcom/google/android/gms/common/api/a$d;

    .line 11
    iget-object p1, p5, Lcom/google/android/gms/common/api/h$a;->b:Landroid/os/Looper;

    iput-object p1, p0, Lcom/google/android/gms/common/api/h;->f:Landroid/os/Looper;

    .line 12
    invoke-static {p3, p4, v1}, Lcom/google/android/gms/common/api/internal/c;->a(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/c;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/h;->e:Lcom/google/android/gms/common/api/internal/c;

    .line 13
    new-instance p3, Lcom/google/android/gms/common/api/internal/a2;

    invoke-direct {p3, p0}, Lcom/google/android/gms/common/api/internal/a2;-><init>(Lcom/google/android/gms/common/api/h;)V

    iput-object p3, p0, Lcom/google/android/gms/common/api/h;->h:Lcom/google/android/gms/common/api/i;

    iget-object p3, p0, Lcom/google/android/gms/common/api/h;->a:Landroid/content/Context;

    .line 14
    invoke-static {p3}, Lcom/google/android/gms/common/api/internal/i;->z(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/i;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/common/api/h;->j:Lcom/google/android/gms/common/api/internal/i;

    .line 15
    invoke-virtual {p3}, Lcom/google/android/gms/common/api/internal/i;->n()I

    move-result p4

    iput p4, p0, Lcom/google/android/gms/common/api/h;->g:I

    .line 16
    iget-object p4, p5, Lcom/google/android/gms/common/api/h$a;->a:Lcom/google/android/gms/common/api/internal/y;

    iput-object p4, p0, Lcom/google/android/gms/common/api/h;->i:Lcom/google/android/gms/common/api/internal/y;

    if-eqz p2, :cond_1

    .line 17
    instance-of p4, p2, Lcom/google/android/gms/common/api/GoogleApiActivity;

    if-nez p4, :cond_1

    .line 18
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p5

    if-ne p4, p5, :cond_1

    .line 19
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/common/api/internal/i0;->v(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/i;Lcom/google/android/gms/common/api/internal/c;)V

    .line 20
    :cond_1
    invoke-virtual {p3, p0}, Lcom/google/android/gms/common/api/internal/i;->c(Lcom/google/android/gms/common/api/h;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Landroid/os/Looper;Lcom/google/android/gms/common/api/internal/y;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/common/api/a$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/common/api/internal/y;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;TO;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/api/internal/y;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    .line 21
    new-instance v0, Lcom/google/android/gms/common/api/h$a$a;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/h$a$a;-><init>()V

    invoke-virtual {v0, p4}, Lcom/google/android/gms/common/api/h$a$a;->b(Landroid/os/Looper;)Lcom/google/android/gms/common/api/h$a$a;

    invoke-virtual {v0, p5}, Lcom/google/android/gms/common/api/h$a$a;->c(Lcom/google/android/gms/common/api/internal/y;)Lcom/google/android/gms/common/api/h$a$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/h$a$a;->a()Lcom/google/android/gms/common/api/h$a;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/h;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/h$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/h$a;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/common/api/a$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/common/api/h$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;TO;",
            "Lcom/google/android/gms/common/api/h$a;",
            ")V"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 22
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/api/h;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/h$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/internal/y;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/common/api/a$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/common/api/internal/y;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;TO;",
            "Lcom/google/android/gms/common/api/internal/y;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    .line 23
    new-instance v0, Lcom/google/android/gms/common/api/h$a$a;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/h$a$a;-><init>()V

    invoke-virtual {v0, p4}, Lcom/google/android/gms/common/api/h$a$a;->c(Lcom/google/android/gms/common/api/internal/y;)Lcom/google/android/gms/common/api/h$a$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/h$a$a;->a()Lcom/google/android/gms/common/api/h$a;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/h;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/h$a;)V

    return-void
.end method

.method private final y(ILcom/google/android/gms/common/api/internal/e$a;)Lcom/google/android/gms/common/api/internal/e$a;
    .locals 1
    .param p2    # Lcom/google/android/gms/common/api/internal/e$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$b;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/e$a<",
            "+",
            "Lcom/google/android/gms/common/api/q;",
            "TA;>;>(ITT;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->s()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/h;->j:Lcom/google/android/gms/common/api/internal/i;

    .line 2
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/common/api/internal/i;->J(Lcom/google/android/gms/common/api/h;ILcom/google/android/gms/common/api/internal/e$a;)V

    return-object p2
.end method

.method private final z(ILcom/google/android/gms/common/api/internal/a0;)Lcom/google/android/gms/tasks/k;
    .locals 7
    .param p2    # Lcom/google/android/gms/common/api/internal/a0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/a$b;",
            ">(I",
            "Lcom/google/android/gms/common/api/internal/a0<",
            "TA;TTResult;>;)",
            "Lcom/google/android/gms/tasks/k<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/google/android/gms/tasks/l;

    invoke-direct {v6}, Lcom/google/android/gms/tasks/l;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/h;->j:Lcom/google/android/gms/common/api/internal/i;

    iget-object v5, p0, Lcom/google/android/gms/common/api/h;->i:Lcom/google/android/gms/common/api/internal/y;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, v6

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/api/internal/i;->K(Lcom/google/android/gms/common/api/h;ILcom/google/android/gms/common/api/internal/a0;Lcom/google/android/gms/tasks/l;Lcom/google/android/gms/common/api/internal/y;)V

    .line 3
    invoke-virtual {v6}, Lcom/google/android/gms/tasks/l;->a()Lcom/google/android/gms/tasks/k;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final b()Lcom/google/android/gms/common/api/internal/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/internal/c<",
            "TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/h;->e:Lcom/google/android/gms/common/api/internal/c;

    return-object v0
.end method

.method public c()Lcom/google/android/gms/common/api/i;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/h;->h:Lcom/google/android/gms/common/api/i;

    return-object v0
.end method

.method protected d()Lcom/google/android/gms/common/internal/f$a;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/f$a;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/f$a;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/common/api/h;->d:Lcom/google/android/gms/common/api/a$d;

    instance-of v2, v1, Lcom/google/android/gms/common/api/a$d$b;

    if-eqz v2, :cond_0

    .line 2
    check-cast v1, Lcom/google/android/gms/common/api/a$d$b;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$d$b;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/h;->d:Lcom/google/android/gms/common/api/a$d;

    .line 6
    instance-of v2, v1, Lcom/google/android/gms/common/api/a$d$a;

    if-eqz v2, :cond_1

    .line 7
    check-cast v1, Lcom/google/android/gms/common/api/a$d$a;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$d$a;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/f$a;->d(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/f$a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/h;->d:Lcom/google/android/gms/common/api/a$d;

    .line 9
    instance-of v2, v1, Lcom/google/android/gms/common/api/a$d$b;

    if-eqz v2, :cond_3

    .line 10
    check-cast v1, Lcom/google/android/gms/common/api/a$d$b;

    .line 11
    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$d$b;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-nez v1, :cond_2

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getRequestedScopes()Ljava/util/Set;

    move-result-object v1

    goto :goto_1

    .line 14
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 15
    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/f$a;->c(Ljava/util/Collection;)Lcom/google/android/gms/common/internal/f$a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/h;->a:Landroid/content/Context;

    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/f$a;->e(Ljava/lang/String;)Lcom/google/android/gms/common/internal/f$a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/h;->a:Landroid/content/Context;

    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/f$a;->b(Ljava/lang/String;)Lcom/google/android/gms/common/internal/f$a;

    return-object v0
.end method

.method protected e()Lcom/google/android/gms/tasks/k;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/k<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/h;->j:Lcom/google/android/gms/common/api/internal/i;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/i;->C(Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/tasks/k;

    move-result-object v0

    return-object v0
.end method

.method public f(Lcom/google/android/gms/common/api/internal/e$a;)Lcom/google/android/gms/common/api/internal/e$a;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/internal/e$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$b;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/e$a<",
            "+",
            "Lcom/google/android/gms/common/api/q;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/h;->y(ILcom/google/android/gms/common/api/internal/e$a;)Lcom/google/android/gms/common/api/internal/e$a;

    return-object p1
.end method

.method public g(Lcom/google/android/gms/common/api/internal/a0;)Lcom/google/android/gms/tasks/k;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/internal/a0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/a$b;",
            ">(",
            "Lcom/google/android/gms/common/api/internal/a0<",
            "TA;TTResult;>;)",
            "Lcom/google/android/gms/tasks/k<",
            "TTResult;>;"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/h;->z(ILcom/google/android/gms/common/api/internal/a0;)Lcom/google/android/gms/tasks/k;

    move-result-object p1

    return-object p1
.end method

.method public h(Lcom/google/android/gms/common/api/internal/e$a;)Lcom/google/android/gms/common/api/internal/e$a;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/internal/e$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$b;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/e$a<",
            "+",
            "Lcom/google/android/gms/common/api/q;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/h;->y(ILcom/google/android/gms/common/api/internal/e$a;)Lcom/google/android/gms/common/api/internal/e$a;

    return-object p1
.end method

.method public i(Lcom/google/android/gms/common/api/internal/a0;)Lcom/google/android/gms/tasks/k;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/internal/a0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/a$b;",
            ">(",
            "Lcom/google/android/gms/common/api/internal/a0<",
            "TA;TTResult;>;)",
            "Lcom/google/android/gms/tasks/k<",
            "TTResult;>;"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/h;->z(ILcom/google/android/gms/common/api/internal/a0;)Lcom/google/android/gms/tasks/k;

    move-result-object p1

    return-object p1
.end method

.method public j(Lcom/google/android/gms/common/api/internal/t;Lcom/google/android/gms/common/api/internal/c0;)Lcom/google/android/gms/tasks/k;
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/internal/t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/internal/c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$b;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/t<",
            "TA;*>;U:",
            "Lcom/google/android/gms/common/api/internal/c0<",
            "TA;*>;>(TT;TU;)",
            "Lcom/google/android/gms/tasks/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/t;->b()Lcom/google/android/gms/common/api/internal/n$a;

    move-result-object v0

    const-string v1, "Listener has already been released."

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/c0;->a()Lcom/google/android/gms/common/api/internal/n$a;

    move-result-object v0

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/t;->b()Lcom/google/android/gms/common/api/internal/n$a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/c0;->a()Lcom/google/android/gms/common/api/internal/n$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Listener registration and unregistration methods must be constructed with the same ListenerHolder."

    .line 8
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/h;->j:Lcom/google/android/gms/common/api/internal/i;

    sget-object v1, Lcom/google/android/gms/common/api/y;->a:Lcom/google/android/gms/common/api/y;

    .line 9
    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/google/android/gms/common/api/internal/i;->D(Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/internal/t;Lcom/google/android/gms/common/api/internal/c0;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/k;

    move-result-object p1

    return-object p1
.end method

.method public k(Lcom/google/android/gms/common/api/internal/u;)Lcom/google/android/gms/tasks/k;
    .locals 3
    .param p1    # Lcom/google/android/gms/common/api/internal/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$b;",
            ">(",
            "Lcom/google/android/gms/common/api/internal/u<",
            "TA;*>;)",
            "Lcom/google/android/gms/tasks/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/u;->a:Lcom/google/android/gms/common/api/internal/t;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/t;->b()Lcom/google/android/gms/common/api/internal/n$a;

    move-result-object v0

    const-string v1, "Listener has already been released."

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/u;->b:Lcom/google/android/gms/common/api/internal/c0;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/c0;->a()Lcom/google/android/gms/common/api/internal/n$a;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/h;->j:Lcom/google/android/gms/common/api/internal/i;

    .line 6
    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/u;->a:Lcom/google/android/gms/common/api/internal/t;

    iget-object v2, p1, Lcom/google/android/gms/common/api/internal/u;->b:Lcom/google/android/gms/common/api/internal/c0;

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/u;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/google/android/gms/common/api/internal/i;->D(Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/internal/t;Lcom/google/android/gms/common/api/internal/c0;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/k;

    move-result-object p1

    return-object p1
.end method

.method public l(Lcom/google/android/gms/common/api/internal/n$a;)Lcom/google/android/gms/tasks/k;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/internal/n$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/n$a<",
            "*>;)",
            "Lcom/google/android/gms/tasks/k<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/api/h;->m(Lcom/google/android/gms/common/api/internal/n$a;I)Lcom/google/android/gms/tasks/k;

    move-result-object p1

    return-object p1
.end method

.method public m(Lcom/google/android/gms/common/api/internal/n$a;I)Lcom/google/android/gms/tasks/k;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/internal/n$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/n$a<",
            "*>;I)",
            "Lcom/google/android/gms/tasks/k<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    const-string v0, "Listener key cannot be null."

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/h;->j:Lcom/google/android/gms/common/api/internal/i;

    .line 2
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/common/api/internal/i;->E(Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/internal/n$a;I)Lcom/google/android/gms/tasks/k;

    move-result-object p1

    return-object p1
.end method

.method public n(Lcom/google/android/gms/common/api/internal/e$a;)Lcom/google/android/gms/common/api/internal/e$a;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/internal/e$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$b;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/e$a<",
            "+",
            "Lcom/google/android/gms/common/api/q;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/h;->y(ILcom/google/android/gms/common/api/internal/e$a;)Lcom/google/android/gms/common/api/internal/e$a;

    return-object p1
.end method

.method public o(Lcom/google/android/gms/common/api/internal/a0;)Lcom/google/android/gms/tasks/k;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/internal/a0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/a$b;",
            ">(",
            "Lcom/google/android/gms/common/api/internal/a0<",
            "TA;TTResult;>;)",
            "Lcom/google/android/gms/tasks/k<",
            "TTResult;>;"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/h;->z(ILcom/google/android/gms/common/api/internal/a0;)Lcom/google/android/gms/tasks/k;

    move-result-object p1

    return-object p1
.end method

.method public p()Lcom/google/android/gms/common/api/a$d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/h;->d:Lcom/google/android/gms/common/api/a$d;

    return-object v0
.end method

.method public q()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/h;->a:Landroid/content/Context;

    return-object v0
.end method

.method protected r()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected s()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public t()Landroid/os/Looper;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/h;->f:Landroid/os/Looper;

    return-object v0
.end method

.method public u(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/n;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(T",
            "L;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/internal/n<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/h;->f:Landroid/os/Looper;

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/common/api/internal/o;->a(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/n;

    move-result-object p1

    return-object p1
.end method

.method public final v()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/h;->g:I

    return v0
.end method

.method public final w(Landroid/os/Looper;Lcom/google/android/gms/common/api/internal/v1;)Lcom/google/android/gms/common/api/a$f;
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/api/internal/v1<",
            "TO;>;)",
            "Lcom/google/android/gms/common/api/a$f;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/h;->d()Lcom/google/android/gms/common/internal/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/f$a;->a()Lcom/google/android/gms/common/internal/f;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/common/api/h;->c:Lcom/google/android/gms/common/api/a;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->a()Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/common/api/a$a;

    iget-object v2, p0, Lcom/google/android/gms/common/api/h;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/common/api/h;->d:Lcom/google/android/gms/common/api/a$d;

    move-object v3, p1

    move-object v6, p2

    move-object v7, p2

    .line 3
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/common/api/a$a;->c(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/f;Ljava/lang/Object;Lcom/google/android/gms/common/api/i$b;Lcom/google/android/gms/common/api/i$c;)Lcom/google/android/gms/common/api/a$f;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/h;->r()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 5
    instance-of v0, p1, Lcom/google/android/gms/common/internal/e;

    if-eqz v0, :cond_0

    .line 6
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/common/internal/e;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/internal/e;->V(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 7
    instance-of v0, p1, Lcom/google/android/gms/common/api/internal/p;

    if-eqz v0, :cond_1

    .line 8
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/common/api/internal/p;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/api/internal/p;->y(Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method public final x(Landroid/content/Context;Landroid/os/Handler;)Lcom/google/android/gms/common/api/internal/z2;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/internal/z2;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/h;->d()Lcom/google/android/gms/common/internal/f$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/f$a;->a()Lcom/google/android/gms/common/internal/f;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/common/api/internal/z2;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/f;)V

    return-object v0
.end method

.class final Lcom/google/android/datatransport/runtime/e;
.super Lcom/google/android/datatransport/runtime/u;
.source "DaggerTransportRuntimeComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/e$b;
    }
.end annotation


# instance fields
.field private a:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lu7/c;

.field private d:Lu7/c;

.field private e:Lu7/c;

.field private f:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/c0;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/google/android/datatransport/runtime/scheduling/c;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/google/android/datatransport/runtime/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/u;-><init>()V

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/datatransport/runtime/e;->h(Landroid/content/Context;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/datatransport/runtime/e;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static d()Lcom/google/android/datatransport/runtime/u$a;
    .locals 2

    new-instance v0, Lcom/google/android/datatransport/runtime/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/datatransport/runtime/e$b;-><init>(Lcom/google/android/datatransport/runtime/e$a;)V

    return-object v0
.end method

.method private h(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/google/android/datatransport/runtime/k;->a()Lcom/google/android/datatransport/runtime/k;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/datatransport/runtime/dagger/internal/f;->b(Lu7/c;)Lu7/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/datatransport/runtime/e;->a:Lu7/c;

    .line 2
    invoke-static {p1}, Lcom/google/android/datatransport/runtime/dagger/internal/j;->a(Ljava/lang/Object;)Lcom/google/android/datatransport/runtime/dagger/internal/g;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/e;->b:Lu7/c;

    .line 3
    invoke-static {}, Lcom/google/android/datatransport/runtime/time/e;->a()Lcom/google/android/datatransport/runtime/time/e;

    move-result-object v0

    invoke-static {}, Lcom/google/android/datatransport/runtime/time/f;->a()Lcom/google/android/datatransport/runtime/time/f;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/datatransport/runtime/backends/j;->a(Lu7/c;Lu7/c;Lu7/c;)Lcom/google/android/datatransport/runtime/backends/j;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/e;->c:Lu7/c;

    .line 4
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/e;->b:Lu7/c;

    invoke-static {v0, p1}, Lcom/google/android/datatransport/runtime/backends/l;->a(Lu7/c;Lu7/c;)Lcom/google/android/datatransport/runtime/backends/l;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/datatransport/runtime/dagger/internal/f;->b(Lu7/c;)Lu7/c;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/e;->d:Lu7/c;

    .line 5
    iget-object p1, p0, Lcom/google/android/datatransport/runtime/e;->b:Lu7/c;

    invoke-static {}, Lcom/google/android/datatransport/runtime/scheduling/persistence/f;->a()Lcom/google/android/datatransport/runtime/scheduling/persistence/f;

    move-result-object v0

    invoke-static {}, Lcom/google/android/datatransport/runtime/scheduling/persistence/g;->a()Lcom/google/android/datatransport/runtime/scheduling/persistence/g;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/j0;->a(Lu7/c;Lu7/c;Lu7/c;)Lcom/google/android/datatransport/runtime/scheduling/persistence/j0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/e;->e:Lu7/c;

    .line 6
    invoke-static {}, Lcom/google/android/datatransport/runtime/time/e;->a()Lcom/google/android/datatransport/runtime/time/e;

    move-result-object p1

    invoke-static {}, Lcom/google/android/datatransport/runtime/time/f;->a()Lcom/google/android/datatransport/runtime/time/f;

    move-result-object v0

    invoke-static {}, Lcom/google/android/datatransport/runtime/scheduling/persistence/h;->a()Lcom/google/android/datatransport/runtime/scheduling/persistence/h;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/e;->e:Lu7/c;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/d0;->a(Lu7/c;Lu7/c;Lu7/c;Lu7/c;)Lcom/google/android/datatransport/runtime/scheduling/persistence/d0;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/datatransport/runtime/dagger/internal/f;->b(Lu7/c;)Lu7/c;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/e;->f:Lu7/c;

    .line 7
    invoke-static {}, Lcom/google/android/datatransport/runtime/time/e;->a()Lcom/google/android/datatransport/runtime/time/e;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/datatransport/runtime/scheduling/g;->b(Lu7/c;)Lcom/google/android/datatransport/runtime/scheduling/g;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/e;->g:Lu7/c;

    .line 8
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/e;->b:Lu7/c;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/e;->f:Lu7/c;

    invoke-static {}, Lcom/google/android/datatransport/runtime/time/f;->a()Lcom/google/android/datatransport/runtime/time/f;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/datatransport/runtime/scheduling/i;->a(Lu7/c;Lu7/c;Lu7/c;Lu7/c;)Lcom/google/android/datatransport/runtime/scheduling/i;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/e;->h:Lu7/c;

    .line 9
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/e;->a:Lu7/c;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/e;->d:Lu7/c;

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/e;->f:Lu7/c;

    invoke-static {v0, v1, p1, v2, v2}, Lcom/google/android/datatransport/runtime/scheduling/d;->a(Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;)Lcom/google/android/datatransport/runtime/scheduling/d;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/e;->i:Lu7/c;

    .line 10
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/e;->b:Lu7/c;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/e;->d:Lu7/c;

    iget-object v5, p0, Lcom/google/android/datatransport/runtime/e;->f:Lu7/c;

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/e;->h:Lu7/c;

    iget-object v4, p0, Lcom/google/android/datatransport/runtime/e;->a:Lu7/c;

    invoke-static {}, Lcom/google/android/datatransport/runtime/time/e;->a()Lcom/google/android/datatransport/runtime/time/e;

    move-result-object v6

    move-object v2, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;->a(Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/e;->j:Lu7/c;

    .line 11
    iget-object p1, p0, Lcom/google/android/datatransport/runtime/e;->a:Lu7/c;

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/e;->f:Lu7/c;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/e;->h:Lu7/c;

    invoke-static {p1, v0, v1, v0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;->a(Lu7/c;Lu7/c;Lu7/c;Lu7/c;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/e;->k:Lu7/c;

    .line 12
    invoke-static {}, Lcom/google/android/datatransport/runtime/time/e;->a()Lcom/google/android/datatransport/runtime/time/e;

    move-result-object p1

    invoke-static {}, Lcom/google/android/datatransport/runtime/time/f;->a()Lcom/google/android/datatransport/runtime/time/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/e;->i:Lu7/c;

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/e;->j:Lu7/c;

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/e;->k:Lu7/c;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/android/datatransport/runtime/v;->a(Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;)Lcom/google/android/datatransport/runtime/v;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/datatransport/runtime/dagger/internal/f;->b(Lu7/c;)Lu7/c;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/e;->l:Lu7/c;

    return-void
.end method


# virtual methods
.method a()Lcom/google/android/datatransport/runtime/scheduling/persistence/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/e;->f:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/c;

    return-object v0
.end method

.method b()Lcom/google/android/datatransport/runtime/t;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/e;->l:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/runtime/t;

    return-object v0
.end method

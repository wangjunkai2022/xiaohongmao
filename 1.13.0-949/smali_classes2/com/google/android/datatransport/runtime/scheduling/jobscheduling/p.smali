.class public Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;
.super Ljava/lang/Object;
.source "WorkInitializer.java"


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/google/android/datatransport/runtime/scheduling/persistence/c;

.field private final c:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;

.field private final d:Lo2/a;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/datatransport/runtime/scheduling/persistence/c;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;Lo2/a;)V
    .locals 0
    .annotation runtime Lu7/a;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;->b:Lcom/google/android/datatransport/runtime/scheduling/persistence/c;

    .line 4
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;->c:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;

    .line 5
    iput-object p4, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;->d:Lo2/a;

    return-void
.end method

.method static synthetic b(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;->b:Lcom/google/android/datatransport/runtime/scheduling/persistence/c;

    invoke-interface {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/c;->v()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/datatransport/runtime/o;

    .line 2
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;->c:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;->a(Lcom/google/android/datatransport/runtime/o;I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;->d:Lo2/a;

    invoke-static {p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/o;->a(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;)Lo2/a$a;

    move-result-object p0

    invoke-interface {v0, p0}, Lo2/a;->a(Lo2/a$a;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;->a:Ljava/util/concurrent/Executor;

    invoke-static {p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/n;->a(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

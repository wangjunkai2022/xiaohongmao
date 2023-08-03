.class public final Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;
.super Ljava/lang/Object;
.source "WorkInitializer_Factory.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/runtime/dagger/internal/g<",
        "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lo2/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu7/c;Lu7/c;Lu7/c;Lu7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lu7/c<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/c;",
            ">;",
            "Lu7/c<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;",
            ">;",
            "Lu7/c<",
            "Lo2/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;->a:Lu7/c;

    .line 3
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;->b:Lu7/c;

    .line 4
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;->c:Lu7/c;

    .line 5
    iput-object p4, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;->d:Lu7/c;

    return-void
.end method

.method public static a(Lu7/c;Lu7/c;Lu7/c;Lu7/c;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lu7/c<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/c;",
            ">;",
            "Lu7/c<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;",
            ">;",
            "Lu7/c<",
            "Lo2/a;",
            ">;)",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;-><init>(Lu7/c;Lu7/c;Lu7/c;Lu7/c;)V

    return-object v0
.end method

.method public static c(Ljava/util/concurrent/Executor;Lcom/google/android/datatransport/runtime/scheduling/persistence/c;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;Lo2/a;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/datatransport/runtime/scheduling/persistence/c;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;Lo2/a;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;
    .locals 4

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;->a:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;->b:Lu7/c;

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/datatransport/runtime/scheduling/persistence/c;

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;->c:Lu7/c;

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;->d:Lu7/c;

    invoke-interface {v3}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo2/a;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;->c(Ljava/util/concurrent/Executor;Lcom/google/android/datatransport/runtime/scheduling/persistence/c;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;Lo2/a;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;->b()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;

    move-result-object v0

    return-object v0
.end method

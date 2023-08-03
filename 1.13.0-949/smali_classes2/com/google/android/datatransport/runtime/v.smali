.class public final Lcom/google/android/datatransport/runtime/v;
.super Ljava/lang/Object;
.source "TransportRuntime_Factory.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/runtime/dagger/internal/g<",
        "Lcom/google/android/datatransport/runtime/t;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/google/android/datatransport/runtime/time/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/google/android/datatransport/runtime/time/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/google/android/datatransport/runtime/scheduling/e;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lcom/google/android/datatransport/runtime/time/a;",
            ">;",
            "Lu7/c<",
            "Lcom/google/android/datatransport/runtime/time/a;",
            ">;",
            "Lu7/c<",
            "Lcom/google/android/datatransport/runtime/scheduling/e;",
            ">;",
            "Lu7/c<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;",
            ">;",
            "Lu7/c<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/v;->a:Lu7/c;

    .line 3
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/v;->b:Lu7/c;

    .line 4
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/v;->c:Lu7/c;

    .line 5
    iput-object p4, p0, Lcom/google/android/datatransport/runtime/v;->d:Lu7/c;

    .line 6
    iput-object p5, p0, Lcom/google/android/datatransport/runtime/v;->e:Lu7/c;

    return-void
.end method

.method public static a(Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;)Lcom/google/android/datatransport/runtime/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lcom/google/android/datatransport/runtime/time/a;",
            ">;",
            "Lu7/c<",
            "Lcom/google/android/datatransport/runtime/time/a;",
            ">;",
            "Lu7/c<",
            "Lcom/google/android/datatransport/runtime/scheduling/e;",
            ">;",
            "Lu7/c<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;",
            ">;",
            "Lu7/c<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;",
            ">;)",
            "Lcom/google/android/datatransport/runtime/v;"
        }
    .end annotation

    new-instance v6, Lcom/google/android/datatransport/runtime/v;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/datatransport/runtime/v;-><init>(Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;)V

    return-object v6
.end method

.method public static c(Lcom/google/android/datatransport/runtime/time/a;Lcom/google/android/datatransport/runtime/time/a;Lcom/google/android/datatransport/runtime/scheduling/e;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;)Lcom/google/android/datatransport/runtime/t;
    .locals 7

    new-instance v6, Lcom/google/android/datatransport/runtime/t;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/datatransport/runtime/t;-><init>(Lcom/google/android/datatransport/runtime/time/a;Lcom/google/android/datatransport/runtime/time/a;Lcom/google/android/datatransport/runtime/scheduling/e;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;)V

    return-object v6
.end method


# virtual methods
.method public b()Lcom/google/android/datatransport/runtime/t;
    .locals 5

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/v;->a:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/runtime/time/a;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/v;->b:Lu7/c;

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/datatransport/runtime/time/a;

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/v;->c:Lu7/c;

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/datatransport/runtime/scheduling/e;

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/v;->d:Lu7/c;

    invoke-interface {v3}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;

    iget-object v4, p0, Lcom/google/android/datatransport/runtime/v;->e:Lu7/c;

    invoke-interface {v4}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/datatransport/runtime/v;->c(Lcom/google/android/datatransport/runtime/time/a;Lcom/google/android/datatransport/runtime/time/a;Lcom/google/android/datatransport/runtime/scheduling/e;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;)Lcom/google/android/datatransport/runtime/t;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/v;->b()Lcom/google/android/datatransport/runtime/t;

    move-result-object v0

    return-object v0
.end method

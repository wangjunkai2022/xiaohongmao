.class public abstract Lcom/google/android/datatransport/runtime/scheduling/h;
.super Ljava/lang/Object;
.source "SchedulingModule.java"


# annotations
.annotation runtime Lk2/h;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static b(Landroid/content/Context;Lcom/google/android/datatransport/runtime/scheduling/persistence/c;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;Lcom/google/android/datatransport/runtime/time/a;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;
    .locals 0
    .param p3    # Lcom/google/android/datatransport/runtime/time/a;
        .annotation build Lcom/google/android/datatransport/runtime/time/b;
        .end annotation
    .end param
    .annotation runtime Lk2/i;
    .end annotation

    new-instance p3, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/e;

    invoke-direct {p3, p0, p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/e;-><init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/scheduling/persistence/c;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;)V

    return-object p3
.end method


# virtual methods
.method abstract a(Lcom/google/android/datatransport/runtime/scheduling/c;)Lcom/google/android/datatransport/runtime/scheduling/e;
    .annotation runtime Lk2/a;
    .end annotation
.end method

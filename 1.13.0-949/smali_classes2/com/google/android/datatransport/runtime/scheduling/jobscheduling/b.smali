.class final synthetic Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/b;
.super Ljava/lang/Object;
.source "AlarmManagerSchedulerBroadcastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/b;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/b;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/b;->a:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/b;->a:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/b;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-static {}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerSchedulerBroadcastReceiver;->a()V

    return-void
.end method

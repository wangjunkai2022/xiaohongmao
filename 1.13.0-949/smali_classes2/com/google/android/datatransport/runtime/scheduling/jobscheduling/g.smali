.class final synthetic Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;
.super Ljava/lang/Object;
.source "Uploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;

.field private final b:Lcom/google/android/datatransport/runtime/o;

.field private final c:I

.field private final d:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;Lcom/google/android/datatransport/runtime/o;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;->a:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;->b:Lcom/google/android/datatransport/runtime/o;

    iput p3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;->c:I

    iput-object p4, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;->d:Ljava/lang/Runnable;

    return-void
.end method

.method public static a(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;Lcom/google/android/datatransport/runtime/o;ILjava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;-><init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;Lcom/google/android/datatransport/runtime/o;ILjava/lang/Runnable;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;->a:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;->b:Lcom/google/android/datatransport/runtime/o;

    iget v2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;->c:I

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;->d:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;->e(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;Lcom/google/android/datatransport/runtime/o;ILjava/lang/Runnable;)V

    return-void
.end method

.class final synthetic Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/k;
.super Ljava/lang/Object;
.source "Uploader.java"

# interfaces
.implements Lo2/a$a;


# instance fields
.field private final a:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;

.field private final b:Lcom/google/android/datatransport/runtime/o;

.field private final c:I


# direct methods
.method private constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;Lcom/google/android/datatransport/runtime/o;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/k;->a:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/k;->b:Lcom/google/android/datatransport/runtime/o;

    iput p3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/k;->c:I

    return-void
.end method

.method public static a(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;Lcom/google/android/datatransport/runtime/o;I)Lo2/a$a;
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/k;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/k;-><init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;Lcom/google/android/datatransport/runtime/o;I)V

    return-object v0
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/k;->a:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/k;->b:Lcom/google/android/datatransport/runtime/o;

    iget v2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/k;->c:I

    invoke-static {v0, v1, v2}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;->d(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;Lcom/google/android/datatransport/runtime/o;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

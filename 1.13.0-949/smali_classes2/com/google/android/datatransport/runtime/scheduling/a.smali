.class final synthetic Lcom/google/android/datatransport/runtime/scheduling/a;
.super Ljava/lang/Object;
.source "DefaultScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/datatransport/runtime/scheduling/c;

.field private final b:Lcom/google/android/datatransport/runtime/o;

.field private final c:Lcom/google/android/datatransport/i;

.field private final d:Lcom/google/android/datatransport/runtime/i;


# direct methods
.method private constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/c;Lcom/google/android/datatransport/runtime/o;Lcom/google/android/datatransport/i;Lcom/google/android/datatransport/runtime/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/a;->a:Lcom/google/android/datatransport/runtime/scheduling/c;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/a;->b:Lcom/google/android/datatransport/runtime/o;

    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/a;->c:Lcom/google/android/datatransport/i;

    iput-object p4, p0, Lcom/google/android/datatransport/runtime/scheduling/a;->d:Lcom/google/android/datatransport/runtime/i;

    return-void
.end method

.method public static a(Lcom/google/android/datatransport/runtime/scheduling/c;Lcom/google/android/datatransport/runtime/o;Lcom/google/android/datatransport/i;Lcom/google/android/datatransport/runtime/i;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/datatransport/runtime/scheduling/a;-><init>(Lcom/google/android/datatransport/runtime/scheduling/c;Lcom/google/android/datatransport/runtime/o;Lcom/google/android/datatransport/i;Lcom/google/android/datatransport/runtime/i;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/a;->a:Lcom/google/android/datatransport/runtime/scheduling/c;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/a;->b:Lcom/google/android/datatransport/runtime/o;

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/scheduling/a;->c:Lcom/google/android/datatransport/i;

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/scheduling/a;->d:Lcom/google/android/datatransport/runtime/i;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/datatransport/runtime/scheduling/c;->c(Lcom/google/android/datatransport/runtime/scheduling/c;Lcom/google/android/datatransport/runtime/o;Lcom/google/android/datatransport/i;Lcom/google/android/datatransport/runtime/i;)V

    return-void
.end method

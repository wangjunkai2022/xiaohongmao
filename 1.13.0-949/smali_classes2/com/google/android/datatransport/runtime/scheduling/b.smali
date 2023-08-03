.class final synthetic Lcom/google/android/datatransport/runtime/scheduling/b;
.super Ljava/lang/Object;
.source "DefaultScheduler.java"

# interfaces
.implements Lo2/a$a;


# instance fields
.field private final a:Lcom/google/android/datatransport/runtime/scheduling/c;

.field private final b:Lcom/google/android/datatransport/runtime/o;

.field private final c:Lcom/google/android/datatransport/runtime/i;


# direct methods
.method private constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/c;Lcom/google/android/datatransport/runtime/o;Lcom/google/android/datatransport/runtime/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/b;->a:Lcom/google/android/datatransport/runtime/scheduling/c;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/b;->b:Lcom/google/android/datatransport/runtime/o;

    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/b;->c:Lcom/google/android/datatransport/runtime/i;

    return-void
.end method

.method public static a(Lcom/google/android/datatransport/runtime/scheduling/c;Lcom/google/android/datatransport/runtime/o;Lcom/google/android/datatransport/runtime/i;)Lo2/a$a;
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/b;-><init>(Lcom/google/android/datatransport/runtime/scheduling/c;Lcom/google/android/datatransport/runtime/o;Lcom/google/android/datatransport/runtime/i;)V

    return-object v0
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/b;->a:Lcom/google/android/datatransport/runtime/scheduling/c;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/b;->b:Lcom/google/android/datatransport/runtime/o;

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/scheduling/b;->c:Lcom/google/android/datatransport/runtime/i;

    invoke-static {v0, v1, v2}, Lcom/google/android/datatransport/runtime/scheduling/c;->b(Lcom/google/android/datatransport/runtime/scheduling/c;Lcom/google/android/datatransport/runtime/o;Lcom/google/android/datatransport/runtime/i;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

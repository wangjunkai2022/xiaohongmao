.class final synthetic Lcom/google/android/datatransport/runtime/scheduling/persistence/x;
.super Ljava/lang/Object;
.source "SQLiteEventStore.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/scheduling/persistence/c0$b;


# instance fields
.field private final a:Lcom/google/android/datatransport/runtime/scheduling/persistence/c0;

.field private final b:Lcom/google/android/datatransport/runtime/o;

.field private final c:Lcom/google/android/datatransport/runtime/i;


# direct methods
.method private constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/c0;Lcom/google/android/datatransport/runtime/o;Lcom/google/android/datatransport/runtime/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/x;->a:Lcom/google/android/datatransport/runtime/scheduling/persistence/c0;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/x;->b:Lcom/google/android/datatransport/runtime/o;

    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/x;->c:Lcom/google/android/datatransport/runtime/i;

    return-void
.end method

.method public static a(Lcom/google/android/datatransport/runtime/scheduling/persistence/c0;Lcom/google/android/datatransport/runtime/o;Lcom/google/android/datatransport/runtime/i;)Lcom/google/android/datatransport/runtime/scheduling/persistence/c0$b;
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/x;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/x;-><init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/c0;Lcom/google/android/datatransport/runtime/o;Lcom/google/android/datatransport/runtime/i;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/x;->a:Lcom/google/android/datatransport/runtime/scheduling/persistence/c0;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/x;->b:Lcom/google/android/datatransport/runtime/o;

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/x;->c:Lcom/google/android/datatransport/runtime/i;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/c0;->d0(Lcom/google/android/datatransport/runtime/scheduling/persistence/c0;Lcom/google/android/datatransport/runtime/o;Lcom/google/android/datatransport/runtime/i;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.class final synthetic Lcom/google/android/datatransport/runtime/scheduling/persistence/o;
.super Ljava/lang/Object;
.source "SQLiteEventStore.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/scheduling/persistence/c0$b;


# instance fields
.field private final a:Lcom/google/android/datatransport/runtime/scheduling/persistence/c0;

.field private final b:Ljava/util/List;

.field private final c:Lcom/google/android/datatransport/runtime/o;


# direct methods
.method private constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/c0;Ljava/util/List;Lcom/google/android/datatransport/runtime/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/o;->a:Lcom/google/android/datatransport/runtime/scheduling/persistence/c0;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/o;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/o;->c:Lcom/google/android/datatransport/runtime/o;

    return-void
.end method

.method public static a(Lcom/google/android/datatransport/runtime/scheduling/persistence/c0;Ljava/util/List;Lcom/google/android/datatransport/runtime/o;)Lcom/google/android/datatransport/runtime/scheduling/persistence/c0$b;
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/o;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/o;-><init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/c0;Ljava/util/List;Lcom/google/android/datatransport/runtime/o;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/o;->a:Lcom/google/android/datatransport/runtime/scheduling/persistence/c0;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/o;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/o;->c:Lcom/google/android/datatransport/runtime/o;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/c0;->X(Lcom/google/android/datatransport/runtime/scheduling/persistence/c0;Ljava/util/List;Lcom/google/android/datatransport/runtime/o;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

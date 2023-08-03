.class final synthetic Lcom/google/android/datatransport/runtime/scheduling/persistence/q;
.super Ljava/lang/Object;
.source "SQLiteEventStore.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/scheduling/persistence/c0$b;


# instance fields
.field private final a:Ljava/util/Map;


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/q;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/util/Map;)Lcom/google/android/datatransport/runtime/scheduling/persistence/c0$b;
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/q;

    invoke-direct {v0, p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/q;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/q;->a:Ljava/util/Map;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/c0;->b0(Ljava/util/Map;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

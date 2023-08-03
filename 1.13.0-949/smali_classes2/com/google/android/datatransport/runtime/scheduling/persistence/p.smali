.class final synthetic Lcom/google/android/datatransport/runtime/scheduling/persistence/p;
.super Ljava/lang/Object;
.source "SQLiteEventStore.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/scheduling/persistence/c0$b;


# static fields
.field private static final a:Lcom/google/android/datatransport/runtime/scheduling/persistence/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/p;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/p;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/p;->a:Lcom/google/android/datatransport/runtime/scheduling/persistence/p;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/datatransport/runtime/scheduling/persistence/c0$b;
    .locals 1

    sget-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/p;->a:Lcom/google/android/datatransport/runtime/scheduling/persistence/p;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/database/Cursor;

    invoke-static {p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/c0;->g0(Landroid/database/Cursor;)[B

    move-result-object p1

    return-object p1
.end method

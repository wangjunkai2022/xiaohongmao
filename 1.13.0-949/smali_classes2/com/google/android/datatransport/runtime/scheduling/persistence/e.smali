.class public abstract Lcom/google/android/datatransport/runtime/scheduling/persistence/e;
.super Ljava/lang/Object;
.source "EventStoreModule.java"


# annotations
.annotation runtime Lk2/h;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Ljava/lang/String;
    .locals 1
    .annotation runtime Lk2/i;
    .end annotation

    .annotation runtime Lu7/b;
        value = "SQLITE_DB_NAME"
    .end annotation

    const-string v0, "com.google.android.datatransport.events"

    return-object v0
.end method

.method static c()I
    .locals 1
    .annotation runtime Lk2/i;
    .end annotation

    .annotation runtime Lu7/b;
        value = "SCHEMA_VERSION"
    .end annotation

    sget v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/i0;->n:I

    return v0
.end method

.method static d()Lcom/google/android/datatransport/runtime/scheduling/persistence/d;
    .locals 1
    .annotation runtime Lk2/i;
    .end annotation

    sget-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/d;->f:Lcom/google/android/datatransport/runtime/scheduling/persistence/d;

    return-object v0
.end method


# virtual methods
.method abstract b(Lcom/google/android/datatransport/runtime/scheduling/persistence/c0;)Lcom/google/android/datatransport/runtime/scheduling/persistence/c;
    .annotation runtime Lk2/a;
    .end annotation
.end method

.method abstract e(Lcom/google/android/datatransport/runtime/scheduling/persistence/c0;)Lo2/a;
    .annotation runtime Lk2/a;
    .end annotation
.end method

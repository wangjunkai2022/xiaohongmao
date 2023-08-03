.class public abstract Lcom/google/android/datatransport/runtime/scheduling/persistence/i;
.super Ljava/lang/Object;
.source "PersistedEvent.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(JLcom/google/android/datatransport/runtime/o;Lcom/google/android/datatransport/runtime/i;)Lcom/google/android/datatransport/runtime/scheduling/persistence/i;
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/datatransport/runtime/scheduling/persistence/b;-><init>(JLcom/google/android/datatransport/runtime/o;Lcom/google/android/datatransport/runtime/i;)V

    return-object v0
.end method


# virtual methods
.method public abstract b()Lcom/google/android/datatransport/runtime/i;
.end method

.method public abstract c()J
.end method

.method public abstract d()Lcom/google/android/datatransport/runtime/o;
.end method

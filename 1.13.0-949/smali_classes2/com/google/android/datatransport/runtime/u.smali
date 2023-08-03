.class abstract Lcom/google/android/datatransport/runtime/u;
.super Ljava/lang/Object;
.source "TransportRuntimeComponent.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/u$a;
    }
.end annotation

.annotation runtime Lk2/d;
    modules = {
        Lcom/google/android/datatransport/runtime/backends/f;,
        Lcom/google/android/datatransport/runtime/scheduling/persistence/e;,
        Lcom/google/android/datatransport/runtime/j;,
        Lcom/google/android/datatransport/runtime/scheduling/h;,
        Lcom/google/android/datatransport/runtime/scheduling/f;,
        Lcom/google/android/datatransport/runtime/time/d;
    }
.end annotation

.annotation runtime Lu7/f;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Lcom/google/android/datatransport/runtime/scheduling/persistence/c;
.end method

.method abstract b()Lcom/google/android/datatransport/runtime/t;
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/u;->a()Lcom/google/android/datatransport/runtime/scheduling/persistence/c;

    move-result-object v0

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method

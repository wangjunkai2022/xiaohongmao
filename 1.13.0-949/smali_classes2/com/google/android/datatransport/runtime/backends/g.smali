.class public abstract Lcom/google/android/datatransport/runtime/backends/g;
.super Ljava/lang/Object;
.source "BackendRequest.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/backends/g$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/datatransport/runtime/backends/g$a;
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/backends/a$b;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/backends/a$b;-><init>()V

    return-object v0
.end method

.method public static b(Ljava/lang/Iterable;)Lcom/google/android/datatransport/runtime/backends/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/datatransport/runtime/i;",
            ">;)",
            "Lcom/google/android/datatransport/runtime/backends/g;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/g;->a()Lcom/google/android/datatransport/runtime/backends/g$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/datatransport/runtime/backends/g$a;->b(Ljava/lang/Iterable;)Lcom/google/android/datatransport/runtime/backends/g$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/backends/g$a;->a()Lcom/google/android/datatransport/runtime/backends/g;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract c()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/datatransport/runtime/i;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d()[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

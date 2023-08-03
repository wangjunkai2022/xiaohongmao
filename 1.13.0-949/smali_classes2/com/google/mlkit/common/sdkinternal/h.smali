.class public abstract Lcom/google/mlkit/common/sdkinternal/h;
.super Lcom/google/mlkit/common/sdkinternal/n;
.source "com.google.mlkit:common@@18.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S::",
        "Lcom/google/mlkit/common/sdkinternal/j;",
        ">",
        "Lcom/google/mlkit/common/sdkinternal/n;"
    }
.end annotation

.annotation build Lu2/a;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/n;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/google/mlkit/common/sdkinternal/q;)V
    .locals 0
    .param p1    # Lcom/google/mlkit/common/sdkinternal/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lu2/a;
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/google/mlkit/common/sdkinternal/n;-><init>(Lcom/google/mlkit/common/sdkinternal/q;)V

    return-void
.end method


# virtual methods
.method public abstract j(Lcom/google/mlkit/common/sdkinternal/j;)Ljava/lang/Object;
    .param p1    # Lcom/google/mlkit/common/sdkinternal/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation
.end method
